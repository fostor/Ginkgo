(function () {
    $(function () {
        var _dataService = abp.services.app.taskTemplate;

        $('#btnSearch').click(function (e) {
            e.preventDefault();
            Search();
        });

        function Search() {
            var _$formSearch = $('form[name=SearchForm]');
            var searchDto = _$formSearch.serializeFormToObject();
            _dataService.search(searchDto).done(function (data) {
                BindTable_100(data);
            });
        }

        $('.add-flow').click(function (e) {

            e.preventDefault();
            location.href = abp.appPath + 'TaskFlow/Flow/AddFlow';

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
                    { data: 'taskCode' },
                    { data: 'taskName' },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="' + abp.appPath + 'TaskFlow/Flow/EditFlow?id=' + data + '" class="waves-effect waves-block edit-flow" data-flow-id="' + data + '" ><i class="tiny material-icons">reorder</i></a>';

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
                            content += '   <a href="#" class="waves-effect waves-block delete-flow" data-flow-id="' + data + '" data-code="' + row.taskCode + '" ><i class="tiny material-icons">delete</i></a>';

                            content += '</div>';
                            return content;
                        }
                    },
                    { data: 'description' },
                    {
                        data: 'useConditionControl',
                        width: '100px',
                        render: function (data, type, row, meta) {
                            var content = '';
                            if (data) content = 'Y';
                            return content;
                        }
                    },
                    {
                        data: 'canAppendPhase',
                        render: function (data, type, row, meta) {
                            return $.getColumnCheck(data);
                        }
                    },
                    {
                        data: 'revocable',
                        render: function (data, type, row, meta) {
                            return $.getColumnCheck(data);
                        }
                    },
                    { data: 'keyInfoTemplate', width: '150px' },
                    { data: 'formUriTemplate', width: '150px' },
                    {
                        data: 'isDefaultForAllUser',
                        width: '150px',
                        render: function (data, type, row, meta) {
                            return $.getColumnCheck(data);
                        }
                    },
                    { data: 'finalServiceTemplate', width: '150px' },
                    { data: 'startServiceTemplate', width: '150px' },
                    { data: 'lastModifier' },
                    {
                        data: 'lastModificationTime',
                        render: function (data, type, row, meta) {
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
                    bindDeleteEvent();
                }
            });
        }
        $.setTableColumnSearchInput('table_100');
        function bindDeleteEvent() {
            $('.delete-flow').off("click").on("click", function (e) {
                e.preventDefault();
                var id = $(this).attr("data-flow-id");
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

    });
})();