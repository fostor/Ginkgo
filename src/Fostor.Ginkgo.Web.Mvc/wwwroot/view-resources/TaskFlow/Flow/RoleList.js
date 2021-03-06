﻿(function () {
    $(function () {
        var _dataService = abp.services.app.taskRole;

        $('#btnSearch').click(function (e) {
            e.preventDefault();
            Search();
        });

        function Search() {
            var _$formSearch = $('form[name=SearchForm]');
            var searchDto = _$formSearch.serializeFormToObject();
            _dataService.search(searchDto.roleCode, searchDto.roleName).done(function (data) {
                BindTable_100(data);
            });
        }

        $('.add-task-role').click(function (e) {
            e.preventDefault();
            $.ajax({
                url: abp.appPath + 'TaskFlow/Flow/AddRole',
                type: 'POST',
                contentType: 'application/html',
                success: function (content) {
                    $('#TaskRoleCreateModal div.modal-content').html(content);
                },
                error: function (e) { }
            });
        });

        var table_100 = null;
        Search();

        function BindTable_100(data) {
            table_100 = $('#table_100').DataTable({
                data: data,
                destroy: true,
                searching: true,
                dom: 'Bftir',
                language: $.getDataTableLang(),
                buttons: $.getDataTableButtons(),
                deferRender: true,
                scrollY: $(window).height() - 330,
                scrollX: true,
                scrollCollapse: true,
                scroller: true,
                columnDefs: [{ targets: '_all', width: '100px' }],
                columns: [
                    { data: 'roleCode' },
                    { data: 'roleName' },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block edit-task-role" data-role-id="' + data + '"  data-toggle="modal" data-target="#TaskRoleEditModal"><i class="tiny material-icons">reorder</i></a>';
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
                            content += '   <a href="#" class="waves-effect waves-block delete-task-role" data-role-id="' + data + '" data-code="' + row.roleCode + '" ><i class="tiny material-icons">delete</i></a>';
                            content += '</div>';
                            return content;
                        }
                    },
                    { data: 'lastModifier' },
                    {
                        data: 'lastModificationTime', render: function (data, type, row, meta) {
                            return $.getDateString(data, 16);
                        }
                    },
                    { data: 'creator' },
                    {
                        data: 'creationTime', render: function (data, type, row, meta) {
                            return $.getDateString(data, 16);
                        }
                    }
                ],
                initComplete: function () {
                    $.setTableSelectedRowsCss('table_100');
                    $.bindTableColumnSearchEvent('table_100');
                    $.resetTableColumnSearchInput('table_100');
                    $.fixDataTableHeight('table_100', $(window).height() - 330);
                },
                drawCallback: function () {
                    bindEditEvent();
                    bindDeleteEvent();
                }
            });
        }
        $.setTableColumnSearchInput('table_100');
        function bindEditEvent() {
            $('.edit-task-role').off("click").on("click", function (e) {
                e.preventDefault();
                var id = $(this).attr("data-role-id");
                $.ajax({
                    url: abp.appPath + 'TaskFlow/Flow/EditRole?id=' + id,
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#TaskRoleEditModal div.modal-content').html(content);
                    },
                    error: function (e) { }
                });
            });
        }
        function bindDeleteEvent() {
            $('.delete-task-role').off("click").on("click", function (e) {
                e.preventDefault();
                var id = $(this).attr("data-role-id");
                var code = $(this).attr("data-code");
                abp.message.confirm(
                    $.deleteConfirm(code),
                    function (isConfirmed) {
                        if (isConfirmed) {
                            _dataService.delete({
                                id: id
                            }).done(function () {
                                Search();
                            });
                        }
                    }
                );
            });
        }

        $('#TaskRoleCreateModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                Search();
            }
        });
        $('#TaskRoleEditModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                Search();
            }
        });
    });
})();