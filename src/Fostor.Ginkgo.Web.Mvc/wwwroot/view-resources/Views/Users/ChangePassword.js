(function () {
    $(function () {

        var _dataService = abp.services.app.user;
        var _$form = $('#ChangePasswordForm');      

        _$form.validate({
            rules: {
                NewPassword: "required",
                ConfirmPassword: {
                    equalTo: "#NewPassword"
                }
            }
        });

        $('.save-password').click(function (e) {
            e.preventDefault();

            if (!_$form.valid()) {
                return;
            }

            var curPwd = $('#CurrentPassword').val().trim();
            var newPwd = $('#NewPassword').val().trim();

            _dataService.changeCurrentUserPassword(curPwd, newPwd).done(function (data) {
                if (data.succeeded) {
                    abp.message.success('Change successfully.');                    
                }
                else {
                    abp.message.warn('Change error.Please check current password and new password.' + JSON.stringify(data.errors));
                }
            })
        });


    });
})();