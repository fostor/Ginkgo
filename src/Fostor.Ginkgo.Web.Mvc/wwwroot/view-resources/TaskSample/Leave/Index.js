(function () {
    $(function () {
        var _dataService = abp.services.app.leaveApplication;
        var _$form = $('form[name=SearchForm]');
        var tableHeight = $(window).height() - 350;

        $('#LeaveCreateModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                queryList();
            }
        });
        $('#LeaveEditModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                queryList();
            }
        });

        $('#btnSearch').click(function (e) {
            e.preventDefault();
            queryList();
        });

        function queryList() {
            var queryDto = _$form.serializeFormToObject();
            _dataService.search(queryDto).done(function (data) {
                BindTable_100(data);
            });
        }

        $.setTableColumnSearchInput('table_100');
        queryList();
        function BindTable_100(data) {
            var table_100 = $('#table_100').DataTable({
                data: data,
                destroy: true,
                searching: true,
                dom: '<"toolbar-add">Bftir',
                language: $.getDataTableLang(),
                buttons: $.getDataTableButtons(),
                deferRender: true,
                scrollY: tableHeight,
                scrollX: true,
                scrollCollapse: true,
                scroller: true,
                columnDefs: [{ targets: '_all', width: '100px' }],
                columns: [
                    { data: 'appliNumber' },
                    { data: 'applicant' },
                    { data: 'title' },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '40px',
                        render: function (data, type, row, meta) {
                            return $.getColumnEdit('edit-leave', data, 'LeaveEditModal', null);
                        }
                    },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '40px',
                        render: function (data, type, row, meta) {
                            return $.getColumnDelete('delete-leave', data, '[' + row.appliNumber + ']-' + row.title);
                        }
                    },
                    { data: 'description', width: '120px' },
                    { data: 'leaveTypeName' },
                    { data: 'fromTime', render: function (data, type, row, meta) { return $.getDateString(data, 16); } },
                    { data: 'endTime', render: function (data, type, row, meta) { return $.getDateString(data, 16); } },
                    { data: 'totalHours' },
                    { data: 'statusName' },
                    { data: 'lastModificationTime', render: function (data, type, row, meta) { return $.getDateString(data, 16); } },
                    { data: 'creationTime', render: function (data, type, row, meta) { return $.getDateString(data, 16); } }
                ],
                initComplete: function () {
                    $.setTableSelectedRowsCss('table_100');
                    $.bindTableColumnSearchEvent('table_100');
                    $.resetTableColumnSearchInput('table_100');
                    $.fixDataTableHeight('table_100', tableHeight);
                    $.setAddButton('add-leave', 'LeaveCreateModal');
                    bindAddEvent();
                },
                drawCallback: function () {
                    bindEditEvent();
                    bindDeleteEvent();
                }
            });
        }


        function bindAddEvent() {
            $('.add-leave').click(function (e) {
                e.preventDefault();
                $.ajax({
                    url: abp.appPath + 'TaskSample/Leave/Add',
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#LeaveCreateModal div.modal-content').html(content);
                    },
                    error: function (e) { }
                });
            });
        }


        function bindEditEvent() {
            $('.edit-leave').off('click').on('click', function (e) {
                var id = $(this).attr("data-id");
                e.preventDefault();
                $.ajax({
                    url: abp.appPath + 'TaskSample/Leave/Edit?id=' + id,
                    type: 'POST',
                    cache: false,
                    contentType: 'application/html',
                    success: function (content) {
                        $('#LeaveEditModal  div.modal-content').html(content);
                    },
                    error: function (e) { }
                });
            });
        }

        function bindDeleteEvent() {
            $('.delete-leave').off('click').on('click', function (e) {
                e.preventDefault();
                var id = $(this).attr("data-id");
                var code = $(this).attr("data-code");
                abp.message.confirm(
                    $.deleteConfirm(code),
                    function (isConfirmed) {
                        if (isConfirmed) {
                            _dataService.delete({ id: id }).done(function () {
                                queryList();
                            });
                        }
                    }
                );
            });
        }
    });
})(jQuery);