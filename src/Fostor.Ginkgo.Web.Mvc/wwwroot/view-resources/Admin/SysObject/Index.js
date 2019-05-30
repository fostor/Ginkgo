(function () {
    $(function () {

        var _dataService = abp.services.app.sysObject;

        function loadList() {
            _dataService.getAll({"maxResultCount":10000}).done(function (data) {
                BindTable_100(data.items);
                //var row0 = $('#table_100').DataTable().row(0);
                //if (row0) {
                //    row0.scrollTo();
                //}
                //else {
                //    $('#table_100').DataTable().scroller.toPosition(-1);
                //}
            });
        }

        var table_100 = null;
        loadList();
        function BindTable_100(data) {
            table_100 = $('#table_100').DataTable({
                data: data,
                destroy: true,
                searching: true,
                //stateSave: true,
                // "stateSaveParams": function (settings, data) {                     
                //    data.search.search = "";
                //    $.each(data.columns, function (index, value) {
                //        value.search = {};
                //     });
                //},
                dom: 'Bftir',
                language: $.getDataTableLang(),
                buttons: $.getDataTableButtons(),
                deferRender: true,
                scrollY: $(window).height() - 310,
                scrollX: true,
                scrollCollapse: true,
                scroller: true,   
                columnDefs: [{ targets: '_all', width: '100px' }],
                columns: [
                    { data: 'parentKey' },
                    { data: 'objectKey', width: '150px' },
                    { data: 'displayName' },                    
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block edit-object" data-id="' + data + '"  data-toggle="modal" data-target="#SysObjectEditModal"><i class="tiny material-icons">edit</i></a>';
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
                            content += '   <a href="#" class="waves-effect waves-block delete-object" data-id="' + data + '"   data-code="' + row.objectKey + '"><i class="tiny material-icons">delete_sweep</i></a>';
                            content += '</div>';
                            return content;
                        }
                    },
                    { data: 'icon' },
                    { data: 'uri', width: '130px' },
                    { data: 'menuLevel', width: '80px' },
                    { data: 'sortCode', width: '80px' },          
                    {
                        data: 'isMenuItem',
                        width: '80px',
                        render: function (data, type, row, meta) { return $.getColumnCheck(data); }
                    },                  
                    {
                        data: 'isEnable',
                        width: '80px',
                        render: function (data, type, row, meta) {
                            return $.getColumnCheck(data);                            
                        }
                    },
                    {
                        data: 'lastModificationTime',                       
                        render: function (data, type, row, meta) {                            
                            return $.getDateString(data, 16);                             
                        }
                    },
                    {
                        data: 'creationTime',
                        render: function (data, type, row, meta) {                            
                            return $.getDateString(data, 16);                             
                        }
                    }
                ],

                initComplete: function () {                    
                    $.setTableSelectedRowsCss('table_100');
                    $.bindTableColumnSearchEvent('table_100');
                    $.resetTableColumnSearchInput('table_100');
                    $.fixDataTableHeight('table_100', $(window).height() - 310);
                },
                drawCallback: function () {
                    bindEditEvent();
                    bindDeleteEvent();
                }
            });
        }
        $.setTableColumnSearchInput('table_100');

        function bindEditEvent() {
            $('.edit-object').off("click").on("click",function (e) {
                var id = $(this).attr("data-id");

                e.preventDefault();
                $.ajax({
                    url: abp.appPath + 'Admin/SysObject/Edit?id=' + id,
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#SysObjectEditModal div.modal-content').html(content);
                    },
                    error: function (e) { }
                });
            });
        }

        function bindDeleteEvent() {
            $('.delete-object').off("click").on("click",function () {
                var id = $(this).attr("data-id");
                var code = $(this).attr('data-code');
                abp.message.confirm(                    
                    $.deleteConfirm(code),
                    function (isConfirmed) {
                        if (isConfirmed) {
                            _dataService.delete({id:id}).done(function () {
                                loadList();
                            });
                        }
                    }
                );
            });
        }

        $('.add-object').click(function (e) {
            e.preventDefault();
            $.ajax({
                url: abp.appPath + 'Admin/SysObject/Add',
                type: 'POST',
                contentType: 'application/html',
                success: function (content) {
                    $('#SysObjectCreateModal div.modal-content').html(content);
                },
                error: function (e) { }
            });
        });

        //edit modal refresh
        $('#SysObjectEditModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');            
            if (s) {                
                loadList();
            }
        });
        //add modal refresh
        $('#SysObjectCreateModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                loadList();
            }
        }); 
    });
})();