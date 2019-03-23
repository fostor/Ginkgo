(function() {
    $(function() {
        var _userService = abp.services.app.user;
        function loadList() {
            _userService.getAll({ maxResultCount: 1000000 }).done(function (data) {
                BindTable_100(data.items);
            });
        }
        var table_100 = null;
        loadList();
        function BindTable_100(data) {
            table_100 = $('#table_100').DataTable({
                data: data,
                destroy: true,
                searching: true,
                dom: 'Bftir',
                language: $.getDataTableLang(),
                buttons: $.getDataTableButtons(),
                deferRender: true,
                scrollY: $(window).height() - 320,
                scrollX: true,
                scrollCollapse: true,
                scroller: true,                            
                columns: [
                    { data: 'userName', width: '120px' },
                    {
                        data: 'isActive',
                        width: '100px',
                        render: function (data, type, row, meta) {
                            var content = '';
                            if (data) {
                                content = '<i class="material-icons" style="color:green;">check_box</i>';
                            } else {
                                content = '<i class="material-icons" style="color:red;">indeterminate_check_box</i>';
                            }
                            return content;                            
                        }
                    },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block edit-user" data-user-id="' + data + '"  data-toggle="modal" data-target="#UserEditModal"><i class="tiny material-icons">edit</i></a>';
                            content += '</div>';
                            return content;
                        }
                    },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block delete-user" data-user-id="' + data + '"   data-user-name="' + row.userName + '"><i class="tiny material-icons">delete_sweep</i></a>';
                            content += '</div>';
                            return content;
                        }
                    },
                    { data: 'fullName', width: '100px' },
                    { data: 'emailAddress' }
                ],
                initComplete: function () {                    
                    $.setTableSelectedRowsCss('table_100');
                    $.bindTableColumnSearchEvent('table_100');
                    $.resetTableColumnSearchInput('table_100');
                    $.fixDataTableHeight('table_100', $(window).height() - 320);
                },
                drawCallback: function () {
                    bindEditEvent();
                    bindDeleteEvent();
                }
            });
        }
        $.setTableColumnSearchInput('table_100');

        function bindEditEvent() {
            $('.edit-user').off("click").on("click",function (e) {
                var userId = $(this).attr("data-user-id");
                e.preventDefault();
                $.ajax({
                    url: abp.appPath + 'Users/EditUserModal?userId=' + userId,
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#UserEditModal div.modal-content').html(content);
                    },
                    error: function (e) { }
                });
            });
        }

        function bindDeleteEvent() {
            $('.delete-user').off("click").on("click",function () {
                var userId = $(this).attr("data-user-id");
                var userName = $(this).attr('data-user-name');
                abp.message.confirm(                    
                    abp.utils.formatString(abp.localization.localize('AreYouSureWantToDelete', 'Ginkgo'), userName),
                    function (isConfirmed) {
                        if (isConfirmed) {
                            _userService.delete({
                                id: userId
                            }).done(function () {
                                loadList();
                            });
                        }
                    }
                );
            });
        }
        //edit refresh
        $('#UserEditModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                loadList();
            }
        });

        $('#RefreshButton').click(function () {
            loadList();
        });

        var _$modal = $('#UserCreateModal');
        var _$form = _$modal.find('form');

        _$form.validate({
            rules: {
                Password: "required",
                ConfirmPassword: {
                    equalTo: "#Password"
                }
            }
        }); 

        _$form.find('button[type="submit"]').click(function (e) {
            e.preventDefault();

            if (!_$form.valid()) {
                return;
            }

            var user = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js
            user.roleNames = [];
            var _$roleCheckboxes = $("input[name='role']:checked");
            if (_$roleCheckboxes) {
                for (var roleIndex = 0; roleIndex < _$roleCheckboxes.length; roleIndex++) {
                    var _$roleCheckbox = $(_$roleCheckboxes[roleIndex]);
                    user.roleNames.push(_$roleCheckbox.val());
                }
            }

            abp.ui.setBusy(_$modal);
            _userService.create(user).done(function () {
                _$modal.modal('hide');
                loadList();
            }).always(function () {
                abp.ui.clearBusy(_$modal);
            });
        });
        
        _$modal.on('shown.bs.modal', function () {
            _$modal.find('input:not([type=hidden]):first').focus();
        });
    });
})();