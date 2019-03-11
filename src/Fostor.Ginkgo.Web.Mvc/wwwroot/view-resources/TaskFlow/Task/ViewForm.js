﻿(function () {
    $(function () {
        var _dataService = abp.services.app.taskInstance;

        var _$form = $('form[name=FlowInfoForm]');

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