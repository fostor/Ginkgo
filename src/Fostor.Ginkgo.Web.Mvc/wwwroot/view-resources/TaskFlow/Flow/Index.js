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
                scrollY: $(window).height() - 350,
                scrollX: true,
                scrollCollapse: true,
                scroller: true,               
                columns: [
                    { data: 'taskCode', width: '80px' },
                    { data: 'taskName', width: '80px' },
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
                            content += '   <a href="#" class="waves-effect waves-block delete-flow" data-flow-id="' + data + '" data-code="' + row.taskCode+'" ><i class="tiny material-icons">delete</i></a>';

                            content += '</div>';
                            return content;
                        }
                    },
                    { data: 'description', width: '100px' },                 
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
                        width: '100px',
                        render: function (data, type, row, meta) {
                            var content = '';
                            if (data) content = 'Y';
                            return content;
                        }
                    },                 
                    {
                        data: 'revocable',
                        width: '80px',
                        render: function (data, type, row, meta) {
                            var content = '';
                            if (data) content = 'Y';
                            return content;
                        }
                    },
                    { data: 'keyInfoTemplate', width: '150px' },
                    { data: 'formUriTemplate', width: '150px' },
                    {
                        data: 'isDefaultForAllUser',
                        width: '150px',
                        render: function (data, type, row, meta) {
                            var content = '';
                            if (data) content = 'Y';
                            return content;
                        }
                    },
                    { data: 'finalServiceTemplate', width: '150px' },
                    { data: 'startServiceTemplate', width: '150px' },                   
                    { data: 'lastModifier', width: '80px' },
                    { data: 'lastModificationTime', width: '80px' },
                    { data: 'creator', width: '80px' },
                    { data: 'creationTime' }
                ],
                initComplete: function () {
                    bindDeleteEvent();
                    $.setTableSelectedRowsCss('table_100');
                }
            });
        }

        function bindDeleteEvent() {
            $('.delete-flow').click(function (e) {
                e.preventDefault();
                var id = $(this).attr("data-flow-id");
                var code = $(this).attr("data-code");
                abp.message.confirm(
                    abp.utils.formatString(abp.localization
                        .localize("DeleteTaskTemplate{0}?", "Ginkgo"),
                        code),
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