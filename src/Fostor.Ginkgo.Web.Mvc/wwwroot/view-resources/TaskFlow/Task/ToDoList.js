(function () {
    $(function () {

        var _dataService = abp.services.app.taskInstance;
        var _$form = $('form[name=SearchForm]');

        $('#btnSearch').click(function (e) {
            e.preventDefault();
            search();
        });



        function search() {
            var searchDto = _$form.serializeFormToObject();
            _dataService.searchToDoList(searchDto).done(function (data) {
                BindTable_100(data);
            });
        }

        var table_100 = null;
        search();

        function BindTable_100(data) {
            table_100 = $('#table_100').DataTable({
                data: data,
                destroy: true,
                searching: true,
                dom: 'Bftir',
                language: $.getDataTableLang(),
                buttons: $.getDataTableButtons(),
                deferRender: true,
                scrollY: $(window).height() - 350,
                scrollX: true,
                scrollCollapse: true,
                scroller: true,
                //使用对象数组，一定要配置columns，告诉 DataTables 每列对应的属性              
                columns: [
                    { data: 'instanceCode', width: '80px' },
                    { data: 'taskName', width: '80px' },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="' + abp.appPath + 'TaskFlow/Task/DoForm?id=' + data + '" class="waves-effect waves-block" ><i class="tiny material-icons">reorder</i></a>';

                            content += '</div>';
                            return content;
                        }
                    },
                    { data: 'keyInfo', width: '180px' },
                    { data: 'statusName', width: '80px' },
                    { data: 'originator', width: '80px' },
                    {
                        data: 'lastPhaseHandleTime',
                        width: '100px',
                        render: function (data, type, row, meta) {
                            var content = null;
                            if (data) {
                                content = data.substr(0, 16).replace(/T/, ' ')
                            }
                            return content;
                        }
                    },
                    { data: 'lastModifier', width: '50px' },
                    {
                        data: 'lastModificationTime',
                        width: '80px',
                        render: function (data, type, row, meta) {
                            var content = null;
                            if (data) {
                                content = data.substr(0, 16).replace(/T/, ' ')
                            }
                            return content;
                        }
                    },
                    { data: 'creator', width: '50px' },
                    {
                        data: 'creationTime',
                        render: function (data, type, row, meta) {
                            var content = null;
                            if (data) {
                                content = data.substr(0, 16).replace(/T/, ' ')
                            }
                            return content;
                        }
                    }
                ],

                initComplete: function () {
                    $.setTableSelectedRowsCss('table_100');
                }
            });
        }

    });
})(jQuery);