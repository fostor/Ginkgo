(function () {
    $(function () {
        var _dataService = abp.services.app.leaveApplication;
        var _$form = $('form[name=SearchForm]');
        var tableHeight = $(window).height() - 400;      

        $('#LeaveCreateModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                search();
            }
        });
        $('#LeaveEditModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                search();
            }
        });

        $('.add-leave').click(function (e) {
            e.preventDefault();
            $.ajax({
                url: abp.appPath + 'TaskSample/Leave/Add',
                type: 'POST',
                contentType: 'application/html',
                success: function (content) {
                    $('#LeaveCreateModalBody').html(content);
                },
                error: function (e) { }
            });
        });

        $('#btnSearch').click(function (e) {
            e.preventDefault();
            search();
        });

        function search() {
            var searchDto = _$form.serializeFormToObject();
            _dataService.search(searchDto).done(function (data) {
                BindTable_100(data);
            });
        }
        $.setTableColumnSearchInput('table_100');
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
                scrollY: tableHeight,  //$(window).height() - 400
                scrollX: true,
                scrollCollapse: true,
                scroller: true,
                columns: [
                    { data: 'appliNumber', width: '100px' },
                    { data: 'applicant', width: '100px' },
                    { data: 'title', width: '100px' },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block edit-leave" data-id="' + data + '"  data-toggle="modal" data-target="#LeaveEditModal"><i class="tiny material-icons">visibility</i></a>';

                            content += '</div>';
                            return content;
                        }
                    },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '40px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block delete-leave" data-id="' + data + '" data-code="[' + row.appliNumber + ']-' + row.title + '" ><i class="tiny material-icons">delete</i></a>';

                            content += '</div>';
                            return content;
                        }
                    },
                    { data: 'description', width: '120px' },
                    { data: 'leaveTypeName', width: '80px' },
                    {
                        data: 'fromTime', width: '80px',
                        render: function (data, type, row, meta) {
                            return data ? data.substr(0, 16).replace(/T/, ' ') : null;                            
                        }
                    },
                    {
                        data: 'endTime', width: '80px',
                        render: function (data, type, row, meta) {
                            return data ? data.substr(0, 16).replace(/T/, ' ') : null;
                        }
                    },
                    { data: 'totalHours', width: '80px' },
                    { data: 'statusName', width: '60px' },
                    {
                        data: 'lastModificationTime',
                        width: '80px',
                        render: function (data, type, row, meta) {
                            return data ? data.substr(0, 16).replace(/T/, ' ') : null;                            
                        }
                    },
                    {
                        data: 'creationTime',
                        render: function (data, type, row, meta) {
                            return data ? data.substr(0, 16).replace(/T/, ' ') : null;
                            //return data ? $.dateFormat(new Date(data), "yyyy-MM-dd hh:mm") : null;
                        }
                    }
                ],
                initComplete: function () {
                    bindEditEvent();
                    bindDeleteEvent();
                    $.setTableSelectedRowsCss('table_100');
                    $.bindTableColumnSearchEvent('table_100');
                    $.resetTableColumnSearchInput('table_100');
                }
            });
        }
        

        function bindEditEvent() {
            $('.edit-leave').click(function (e) {
                var id = $(this).attr("data-id");
                e.preventDefault();
                $.ajax({
                    url: abp.appPath + 'TaskSample/Leave/Edit?id=' + id,
                    type: 'POST',
                    cache: false,
                    contentType: 'application/html',
                    success: function (content) {
                        $('#LeaveEditModalBody').html(content);
                    },
                    error: function (e) { }
                });

            });
        }

        function bindDeleteEvent() {
            $('.delete-leave').click(function (e) {
                e.preventDefault();
                var id = $(this).attr("data-id");
                var code = $(this).attr("data-code");
                abp.message.confirm(
                     abp.utils.formatString(abp.localization.localize('AreYouSureWantToDelete', 'Ginkgo'), code),
                    function (isConfirmed) {
                        if (isConfirmed) {
                            _dataService.delete({ id: id }).done(function () {
                                search();
                            });
                        }
                    }
                );
            });
        }
    });
})(jQuery);