(function () {
    $(function () {
        var _dataService = abp.services.app.taskTemplate;

        var _$form = $('form[name=FlowCreateForm]');

        _$form.find('input[name=UseConditionControl]').click(function () {
            if ($(this).is(":checked")) {
                _$form.find('input[name=Condition1Name]').attr('readonly', false);
                _$form.find('input[name=Condition2Name]').attr('readonly', false);
                _$form.find('input[name=Condition3Name]').attr('readonly', false);
            }
            else {
                _$form.find('input[name=Condition1Name]').attr('readonly', true);
                _$form.find('input[name=Condition2Name]').attr('readonly', true);
                _$form.find('input[name=Condition3Name]').attr('readonly', true);
            }
        })

        function save() {

            if (!_$form.valid()) {
                return;
            }
            //处理选择项的值不改变的问题
            $('#UseConditionControl').val($('#UseConditionControl').is(':checked'));
            $('#CanAppendPhase').val($('#CanAppendPhase').is(':checked'));
            $('#Revocable').val($('#Revocable').is(':checked'));
            $('#IsDefaultForAllUser').val($('#IsDefaultForAllUser').is(':checked'));        

            var flow = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js             
            abp.ui.setBusy(_$form);
            _dataService.create(flow).done(function (data) {
                location.href = abp.appPath + 'TaskFlow/Flow/EditFlow?id=' + data.id + '&fromadd=1';
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
        _$form.find(".save-button").click(function (e) {
            e.preventDefault();
            save();
        });

        //Handle cancel button click
        _$form.find(".close-button").click(function (e) {
            e.preventDefault();
            BackToList();
        });

        $.AdminBSB.input.activate(_$form);


    });
})();