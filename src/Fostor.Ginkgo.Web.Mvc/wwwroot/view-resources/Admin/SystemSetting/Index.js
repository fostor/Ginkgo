(function () {
    $(function () {
        var _dataService = abp.services.app.sysSetting;        
        var tableHeight = $(window).height() - 300;       

        $('#SystemSettingCreateModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                queryList();
            }
        });
        $('#SystemSettingEditModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                queryList();
            }
        });

        function queryList() {            
            _dataService.getTenantAllSettings().done(function (data) {
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
                    { data: 'name' },
                    { data: 'value' },                   
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '40px',
                        render: function (data, type, row, meta) {
                            return $.getColumnEdit('edit-setting', row.name, 'SystemSettingEditModal', null);
                        }
                    },                          
                    { data: 'lastModificationTime', render: function (data, type, row, meta) { return $.getDateString(data, 16); } },
                    { data: 'creationTime', render: function (data, type, row, meta) { return $.getDateString(data, 16); } }
                ],
                initComplete: function () {
                    $.setTableSelectedRowsCss('table_100');
                    $.bindTableColumnSearchEvent('table_100');
                    $.resetTableColumnSearchInput('table_100');
                    $.fixDataTableHeight('table_100', tableHeight);
                    $.setAddButton('add-setting', 'SystemSettingCreateModal');
                    bindAddEvent();
                },
                drawCallback: function () {
                    bindEditEvent();                    
                }
            });
        }


        function bindAddEvent() {
            $('.add-setting').click(function (e) {
                e.preventDefault();
                $.ajax({
                    url: abp.appPath + 'Admin/SystemSetting/Add',
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#SystemSettingCreateModal div.modal-content').html(content);
                    },
                    error: function (e) { }
                });
            });
        }


        function bindEditEvent() {
            $('.edit-setting').off('click').on('click', function (e) {
                var name = $(this).attr("data-id");
                e.preventDefault();
                $.ajax({
                    url: abp.appPath + 'Admin/SystemSetting/Edit?name=' + name,
                    type: 'POST',
                    cache: false,
                    contentType: 'application/html',
                    success: function (content) {
                        $('#SystemSettingEditModal  div.modal-content').html(content);
                    },
                    error: function (e) { }
                });
            });
        }
    });
})(jQuery);