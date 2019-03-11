(function () {
    $(function () {
        var _dataService = abp.services.app.taskInstance;

        var _$form = $('form[name=DoFlowForm]');

        loadForm();
        function loadForm() {
            $.ajax({
                url: abp.appPath + _$form.find('input[name=FormUri]').val(),
                type: 'POST',
                contentType: 'application/html',
                success: function (content) {
                    $('#form-info-panel').html(content);
                    //$('#form-info-panel').find('button[type=button]').hide();
                },
                error: function (e) { }
            });
        }

        function save() {            
            if (!_$form.valid()) {
                return;
            }            
            var inst = _$form.find('input[name=InstanceCode]').val();
            var memo = _$form.find('input[name=Memo]').val();
            var nextActors = _$form.find('select[name=NextPhaseActors]').val();
            var returnActor = _$form.find('select[name=ToReturnActors]').val();
            var handleResult = "0";
            if ($('#radio_1').is(':checked')) { handleResult = "1"; }
            if ($('#radio_2').is(':checked')) { handleResult = "2"; }
            if ($('#radio_3').is(':checked')) { handleResult = "3"; }
          
            if (handleResult == "0") {
                return false;
            }
            if (handleResult == "1" && nextActors) {
                if (nextActors.length < 3) {
                    abp.message.warn(
                        abp.localization
                            .localize("PleaseSelectNextActor", "Ginkgo"));
                    return false;
                }
            }
            if (handleResult == "2" && returnActor) {
                if (returnActor.length < 3) {
                    abp.message.warn(
                        abp.localization
                            .localize("PleaseSelectReturnActor", "Ginkgo"));
                    return false;
                }
            }

            var task = { "instanceCode": inst, "memo": memo, "handleResult": handleResult, "nextActors": nextActors, "returnedActor": returnActor };
            abp.ui.setBusy(_$form);           
            _dataService.send(task).done(function (data) {               
                if (data) {
                    var sc = data.followedServiceConfig;
                    if (sc && sc.length > 0) {
                        var ss = JSON.parse(sc);
                        abp.services.app[ss.service][ss.method](ss.params).done(function (d) {
                            BackToList();
                        });
                    }
                    else {
                        BackToList();
                    }
                }
            });
        }

        $(".save-button").click(function (e) {
            e.preventDefault();
            save();
        });

        function BackToList() {
            if (history.length > 1) {
                var href = location.href;
                var n = 1;
                if (href.indexOf('#') > 0) {
                    n += 1;
                }
                history.go(-n);
            }
            else {
                window.close();
            }
        }

        //Handle cancel button click
        $(".close-button").click(function (e) {
            e.preventDefault();
            BackToList();
        });
    });
})();