(function () {
    $(function () {
        var _dataService = abp.services.app.dataDictionary; 
        $('select[name=CategoryCode]').change(function (e) {
            e.preventDefault();            
            loadList();
        });

        function loadList() {
            var key = $('select[name=CategoryCode]').val();
            _$form.find('input[name=CategoryCode]').val(key);
            if (key) {
                _dataService.getList(key).done(function (data) {
                    BindTable_100(data);
                });
            }
        }
             
        //loadList();
        function BindTable_100(data) {
           var table_100 = $('#table_100').DataTable({
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
                    { data: 'categoryCode', width: '150px' },
                    { data: 'key', width: '100px' },
                    { data: 'value' },
                    {                        
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block edit-datadict" data-datadict-id="' + data + '"  data-toggle="modal" data-target="#DataDictEditModal"><i class="tiny material-icons">edit</i></a>';
                            content += '</div>';
                            return content;
                        }
                    },
                    {                        
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block delete-datadict" data-datadict-id="' + data + '"   data-datadict-name="' + row.key + ' ' + row.value +'"><i class="tiny material-icons">delete_sweep</i></a>';

                            content += '</div>';
                            return content;
                        }
                    }            
                ],

                initComplete: function () {
                    bindEditEvent();
                    bindDeleteEvent();
                    $.setTableSelectedRowsCss('table_100');
                    $.fixDataTableHeight('table_100', $(window).height() - 320);
                }
            });
        }

        function bindEditEvent() {
            $('.edit-datadict').click(function (e) {
                var dataDictId = $(this).attr("data-datadict-id");
                e.preventDefault();
                $.ajax({
                    url: abp.appPath + 'Admin/DataDict/Edit?id=' + dataDictId,
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#DataDictEditModalBody').html(content);
                    },
                    error: function (e) { }
                });
            });
        }

        function bindDeleteEvent() {
            $('.delete-datadict').click(function () {
                var dataDictId = $(this).attr("data-datadict-id");
                var dataDictName = $(this).attr('data-datadict-name');
                abp.message.confirm(
                    $.deleteConfirm(dataDictName),
                    function (isConfirmed) {
                        if (isConfirmed) {
                            _dataService.delete({
                                id: dataDictId
                            }).done(function () {                                
                                loadList();
                            });
                        }
                    }
                );
            });
        }
        //edit refresh
        $('#DataDictEditModal').on('hide.bs.modal', function () {
            loadList();
        });

        //Add Dict
        var _$modal = $('#DataDictCreateModal');
        var _$form = _$modal.find('form');
        _$form.validate({
        });

        _$modal.find('button[type="submit"]').click(function (e) {
            e.preventDefault();

            if (!_$form.valid()) {
                return;
            }

            var datadict = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js      

            datadict.tenantId = abp.session.tenantId;//取得租户信息
            datadict.creator = abp.session.userId;
            abp.ui.setBusy(_$modal);
            _dataService.create(datadict).done(function () {
                _$modal.modal('hide'); 
                _$form.find('input[name="Key"]').val('');
                _$form.find('input[name="Value"]').val(''); 
                if (_$form.find('input[name=CategoryCode]').val() === "DataDictCategoryCode") {
                    location.reload(true);
                }
                else {
                    loadList();
                }
            }).always(function () {
                abp.ui.clearBusy(_$modal);
            });
        });

        _$modal.on('shown.bs.modal', function () {
            _$modal.find('input:not([type=hidden]):first').focus();
        });

    });
})();