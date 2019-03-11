(function ($) {
    var _userService = abp.services.app.user;
    var _$modal = $('#UserEditModal');
    var _$form = $('form[name=UserEditForm]'); 
    $('#btnReset').click(function () {
        var userName = _$form.find('input[name=UserName]').val().trim();
        var pwd = $('#txtResetPassword').val().trim();
        _userService.resetUserPassword(userName, pwd).done(function (data) {
            if (data.succeeded) {
                abp.message.success('Reset successfully.');
            }
            else {
                abp.message.warn('Reset error.' + JSON.stringify(data.errors));
            }
        });
    });


    function save() {
        if (!_$form.valid()) {
            return;
        }
        var user = _$form.serializeFormToObject(); 
        user.roleNames = [];
        var _$roleCheckboxes = $("input[name='role']:checked:visible");
        if (_$roleCheckboxes) {
            for (var roleIndex = 0; roleIndex < _$roleCheckboxes.length; roleIndex++) {
                var _$roleCheckbox = $(_$roleCheckboxes[roleIndex]);
                user.roleNames.push(_$roleCheckbox.val());
            }
        }
        abp.ui.setBusy(_$form);
        _userService.update(user).done(function () {
            _$modal.find(".save-button").addClass('save-clicked');
            _$modal.modal('hide');
        }).always(function () {
            abp.ui.clearBusy(_$modal);
        });
    }

    //Handle save button click
    _$form.closest('div.modal-content').find(".save-button").click(function (e) {
        e.preventDefault();
        save();
    });

    //Handle enter key
    _$form.find('input').on('keypress', function (e) {
        if (e.which === 13) {
            e.preventDefault();
            save();
        }
    });
    _$modal.find(".save-button").removeClass('save-clicked');
    $.AdminBSB.input.activate(_$form);

    _$modal.on('shown.bs.modal', function () {
        _$form.find('input[type=text]:first').focus();
    });
})(jQuery);