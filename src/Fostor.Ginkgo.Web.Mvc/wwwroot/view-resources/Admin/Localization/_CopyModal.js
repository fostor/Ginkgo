(function ($) {
    var _dataService = abp.services.app.languageText;

    var _$modal = $('#LanguageTextCopyModal');
    var _$form = $('form[name=LanguageTextCopyForm]');

    function save() {
        if (!_$form.valid()) {
            return;
        }
        var sourceTenant = _$form.find('input[name=SourceTenancyName]').val().trim();
        var targetTenant = _$form.find('input[name=TargetTenancyName]').val().trim();       
        
        abp.ui.setBusy(_$form);
        _dataService.copyTenantLanguageText(sourceTenant, targetTenant).done(function (data) {
            abp.message.info('Copy ' + data+' records');
            _$form.find(".save-button").addClass('save-clicked');
            _$modal.modal('hide');
        }).always(function () {
            abp.ui.clearBusy(_$modal);
        });
    }

    //Handle save button click
    _$form.find(".save-button").click(function (e) {
        e.preventDefault();
        save();
    });
    _$form.find(".save-button").removeClass('save-clicked');
    $.AdminBSB.input.activate(_$form);
})(jQuery);