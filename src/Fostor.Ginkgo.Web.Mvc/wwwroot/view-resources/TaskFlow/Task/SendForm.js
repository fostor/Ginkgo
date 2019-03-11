(function () {
    $(function () {
        var _dataService = abp.services.app.taskInstance;

        var _$form = $('form[name=SendFlowForm]');

        function save() {
            if (!_$form.valid()) {
                return;
            }

            var inst = _$form.find('input[name=InstanceCode]').val();
            var memo = _$form.find('input[name=Memo]').val();
            var nextActors = _$form.find('select[name=NextPhaseActors]').val();

            var task = { "instanceCode": inst, "memo": memo, "nextActors": nextActors };
            abp.ui.setBusy(_$form);
            //var serv = 'taskInstance';
            //var meth = 'sendFirst';
            //abp.services.app[serv][meth](task).done(function (d) {
            //    alert(JSON.stringify(d));
            //});
         
            _dataService.sendFirst(task).done(function (data) {
                if (data) {
                    var sc = data.followedServiceConfig;
                    if (sc && sc.length > 0) {
                        //alert(sc);
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

        //Handle save button click
        $(".save-button").click(function (e) {
            e.preventDefault();
            save();
        });

        //Handle cancel button click
        $(".close-button").click(function (e) {
            e.preventDefault();
            BackToList();
        });

        $.AdminBSB.input.activate(_$form);
    });
})();