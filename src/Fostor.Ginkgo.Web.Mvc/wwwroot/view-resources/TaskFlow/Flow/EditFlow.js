(function () {
    $(function () {
        var _dataService = abp.services.app.taskTemplate;
        var _phaseService = abp.services.app.taskPhase;
        var _$form = $('form[name=FlowEditForm]');
        var taskCode = _$form.find('input[name=TaskCode]').val();
        
        $('.add-task-phase').click(function (e) {
            e.preventDefault();            
            $.ajax({
                url: abp.appPath + 'TaskFlow/Flow/AddPhaseModal?taskCode=' + taskCode,
                type: 'POST',
                contentType: 'application/html',
                success: function (content) {
                    $('#TaskPhaseCreateModal div.modal-content').html(content);
                },
                error: function (e) { }
            });
        });


        function loadPhases() {
            _phaseService.getByTaskCode(taskCode).done(function (data) {
                BindTable_100(data);
            });
        }


        var table_100 = null;
        var table_height = Math.max($(window).height() - 465,100);
        loadPhases();

        function BindTable_100(data) {
            var cols = [
                { data: 'phaseCode', width: '80px' },
                { data: 'phaseName', width: '80px' },
                {
                    orderable: false,
                    bSortable: false,
                    data: "id",
                    width: '35px',
                    render: function (data, type, row, meta) {
                        var content = '<div style="text-align:center;" >';
                        content += '   <a href="#" class="waves-effect waves-block edit-task-phase" data-item-id="' + data + '" data-toggle="modal" data-target="#TaskPhaseEditModal"><i class="tiny material-icons">reorder</i></a>';

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
                        content += '   <a href="#" class="waves-effect waves-block delete-task-phase" data-item-id="' + data + '" data-code="' + row.phaseCode+'" ><i class="tiny material-icons">delete</i></a>';

                        content += '</div>';
                        return content;
                    }
                },
                { data: 'taskRole', width: '100px' },
                { data: 'taskUsers', width: '100px' },
                {
                    data: 'isCountersignPhase',
                    width: '100px',
                    render: function (data, type, row, meta) {
                        var content = '';
                        if (data) content = 'Y';
                        return content;
                    }
                },
                {
                    data: 'isSignInPhase',
                    width: '100px',
                    render: function (data, type, row, meta) {
                        var content = '';
                        if (data) content = 'Y';
                        return content;
                    }
                },                
                {
                    data: 'canUpdateForm',
                    width: '100px',
                    render: function (data, type, row, meta) {
                        var content = '';
                        if (data) content = 'Y';
                        return content;
                    }
                },
                { data: 'updateFormUriTemplate', width: '150px' },
                {
                    data: 'canBatchHandle',
                    width: '100px',
                    render: function (data, type, row, meta) {
                        var content = '';
                        if (data) content = 'Y';
                        return content;
                    }
                },
                { data: 'batchHandleUriTemplate', width: '150px' },
                {
                    data: 'canReject',
                    width: '100px',
                    render: function (data, type, row, meta) {
                        var content = '';
                        if (data) content = 'Y';
                        return content;
                    }
                }, 
                { data: 'condition1EndValue', width: '100px' },
                { data: 'condition2EndValue', width: '100px' },
                { data: 'condition3EndValue', width: '100px' },
                { data: 'lastModifier', width: '50px' },
                { data: 'lastModificationTime', width: '80px' },
                { data: 'creator', width: '50px' },
                { data: 'creationTime' }                
            ];

            table_100 = $('#table_100').DataTable({
                data: data,
                destroy: true,
                searching: true,
                dom: 'Bftir',
                language: $.getDataTableLang(),
                buttons: $.getDataTableButtons(),
                deferRender: true,
                scrollY: table_height,
                scrollX: true,
                scrollCollapse: true,
                scroller: true,
                columns: cols,
                initComplete: function () {
                    bindEditEvent();
                    bindDeleteEvent();
                    $.setTableSelectedRowsCss('table_100');
                }
            });
        }

        function bindEditEvent() {
            $('.edit-task-phase').click(function (e) {
                e.preventDefault();
                var itemId = $(this).attr("data-item-id");
                $.ajax({
                    url: abp.appPath + 'TaskFlow/Flow/EditPhaseModal?id=' + itemId,
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#TaskPhaseEditModal div.modal-content').html(content);
                    },
                    error: function (e) { }
                });
            });   
        }
        function bindDeleteEvent() {
            $('.delete-task-phase').click(function (e) {
                e.preventDefault();
                var id = $(this).attr("data-item-id");
                var code = $(this).attr("data-code");
                abp.message.confirm(
                    abp.utils.formatString(abp.localization
                        .localize("DeleteTaskPhase{0}?", "Ginkgo"),
                        code),
                    function (isConfirmed) {
                        if (isConfirmed) {
                            _phaseService.delete({
                                id: id
                            }).done(function () {
                                loadPhases();
                            });
                        }
                    }
                );
            });
        }

        $('#TaskPhaseCreateModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                loadPhases();
            }
        });
        $('#TaskPhaseEditModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                loadPhases();
            }
        });

        function save() {

            if (!_$form.valid()) {
                return;
            }
            //处理选择项的值不改变的问题
            $('#UseConditionControl').val($('#UseConditionControl').is(':checked'));
            $('#CanAppendPhase').val($('#CanAppendPhase').is(':checked'));
            $('#Revocable').val($('#Revocable').is(':checked'));
            $('#IsDefaultForAllUser').val($('#IsDefaultForAllUser').is(':checked')); 
            var flow = _$form.serializeFormToObject();             
            abp.ui.setBusy(_$form);
            _dataService.update(flow).done(function (data) {
                BackToList();
            }).always(function () {
                abp.ui.clearBusy(_$form);
            });
        }

        function BackToList() {
            if (history.length > 1) {
                var href = location.href;
                var n = 1;
                if (href.indexOf('#') > 0) {
                    n += 1;
                }
                if (href.indexOf('fromadd') > 0) {
                    n += 1;
                }
                history.go(-n);                
            }
            else {
                window.close();
            }
        }

        //Handle save button click
        $(".edit-save-button").click(function (e) {
            e.preventDefault();
            save();
        });

        //Handle cancel button click
        $(".edit-close-button").click(function (e) {
            BackToList();
        });

        $.AdminBSB.input.activate(_$form);


    });
})();