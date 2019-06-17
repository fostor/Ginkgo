(function ($) {
    var _dataService = abp.services.app.role;
    $('#RoleUsersModal').find('.modal-body').height($(window).height() - 200);
    var tableHeight = $(window).height() - 450;
    var _$modal = $('#RoleUsersModal');
    var _$form = $('form[name=RoleUserCreateForm]');

    _$form.find("select[name=UserId]").selectpicker({});

    _$modal.on('shown.bs.modal', function () {
        if (_$form.is(':hidden')) {
            return; //判断是否为后台缓存的弹窗数据,因底部工具条会触发所有打开过的缓存窗体
        }
        queryList();
    });

    function save() {
        if (!_$form.valid()) {
            return;
        }
        var docRelation = _$form.serializeFormToObject();
        var roleId = _$form.find("input[name=RoleId]").val();
        var userId = _$form.find("select[name=UserId]").val();
        abp.ui.setBusy(_$form);
        _dataService.addMember(roleId, userId).done(function (data) {
            queryList();
        }).always(function () {
            abp.ui.clearBusy(_$form);
        });
    }

    _$modal.find(".add-user-button").click(function (e) {
        e.preventDefault();
        save();
    });


    function queryList() {
        var roleName = $('#add_member_role_name').val();
        _dataService.getRoleUsers(roleName).done(function (data) {
            BindTable_301(data);
        });
    }
    $.setTableColumnSearchInput('table_301');
    queryList();
    function BindTable_301(data) {
        var table_301 = $('#table_301').DataTable({
            data: data,
            destroy: true,
            searching: true,
            dom: 'Bftir',
            language: $.getDataTableLang(),
            buttons: $.getDataTableButtons(),
            deferRender: true,
            scrollY: tableHeight,
            scrollX: true,
            scrollCollapse: true,
            scroller: true,
            columnDefs: [{ targets: '_all', width: '100px' }],
            columns: [
                { data: 'userName' },
                { data: 'fullName' },
                {
                    orderable: false,
                    bSortable: false,
                    data: "id",
                    width: '40px',
                    render: function (data, type, row, meta) {
                        return $.getColumnDelete('delete-role-user', data, row.userName); //data-code need to change the key info desc
                    }
                }
            ],
            initComplete: function () {
                $.setTableSelectedRowsCss('table_301');
                $.bindTableColumnSearchEvent('table_301');
                $.resetTableColumnSearchInput('table_301');
                $.fixDataTableHeight('table_301', tableHeight);
            },
            drawCallback: function () {

                bindDeleteEvent();
            }
        });
    }

    function bindDeleteEvent() {
        $('.delete-role-user').off('click').on('click', function (e) {
            e.preventDefault();
            var userId = $(this).attr("data-id");
            var code = $(this).attr("data-code");
            var roleId = _$form.find("input[name=RoleId]").val();
            abp.message.confirm(
                $.deleteConfirm(code),
                function (isConfirmed) {
                    if (isConfirmed) {
                        _dataService.deleteMember(roleId, userId).done(function () {
                            queryList();
                        });
                    }
                }
            );
        });
    }

    $.AdminBSB.input.activate(_$form);
})(jQuery);