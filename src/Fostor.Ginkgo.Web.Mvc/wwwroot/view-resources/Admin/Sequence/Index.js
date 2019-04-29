(function () {
    $(function () {
        var _seqService = abp.services.app.sequenceNumber;
        function loadList() {
            _seqService.getAll({ maxResultCount:100000}).done(function (data) {
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
                scrollY: $(window).height() - 300,
                scrollX: true,
                scrollCollapse: true,
                scroller: true,                            
                columns: [
                    { data: 'numberCode', width: '120px' },                    
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block edit-seqnumber" data-seqnumber-id="' + data + '"  data-toggle="modal" data-target="#SequenceEditModal"><i class="tiny material-icons">edit</i></a>';
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
                            content += '   <a href="#" class="waves-effect waves-block delete-seqnumber" data-seqnumber-id="' + data + '"   data-seqnumber-name="' + row.numberCode + '"><i class="tiny material-icons">delete_sweep</i></a>';
                            content += '</div>';
                            return content;
                        }
                    },
                    { data: 'dateStringSpec', width: '100px' },
                    { data: 'prefix', width: '100px' },
                    { data: 'infix', width: '100px' },
                    { data: 'suffix', width: '100px' },
                    { data: 'seqLength', width: '100px' },
                    { data: 'sequence', width: '100px' },
                    { data: 'latestNumber' }
                ],

                initComplete: function () {
                    bindEditEvent();
                    bindDeleteEvent();
                    $.setTableSelectedRowsCss('table_100');
                    $.fixDataTableHeight('table_100', $(window).height() - 300);
                }
            });
        }

        function bindEditEvent() {         
            $('.edit-seqnumber').click(function (e) {
                var seqId = $(this).attr("data-seqnumber-id");

                e.preventDefault();
                $.ajax({
                    url: abp.appPath + 'Admin/Sequence/Edit?id=' + seqId,
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#SequenceEditModal div.modal-content').html(content);
                    },
                    error: function (e) { }
                });
            });
        }

        function bindDeleteEvent() {         
            $('.delete-seqnumber').click(function () {
                var seqId = $(this).attr("data-seqnumber-id");
                var seqName = $(this).attr('data-seqnumber-name');
                abp.message.confirm(
                    $.deleteConfirm(seqName),
                    function (isConfirmed) {
                        if (isConfirmed) {
                            _seqService.delete({
                                id: seqId
                            }).done(function () {
                                loadList();
                            });
                        }
                    }
                );                
            });
        }
        //edit refresh
        $('#SequenceEditModal').on('hide.bs.modal', function () {
            loadList();
        });

        $('#RefreshButton').click(function () {
            loadList();
        });


        //Add
        var _$modal = $('#SequenceCreateModal');
        var _$form = _$modal.find('form');

        _$form.validate({
        });    

        _$modal.find('button[type="submit"]').click(function (e) {
            e.preventDefault();
            if (!_$form.valid()) {
                return;
            }
            var seqnumber = _$form.serializeFormToObject();            
            abp.ui.setBusy(_$modal);
            _seqService.create(seqnumber).done(function () {
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