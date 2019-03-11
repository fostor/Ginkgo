(function ($) {
    var _dataService = abp.services.app.languageText;

    var _$modal = $('#LanguageTextEditModal');
    var _$form = $('form[name=LanguageTextEditForm]');

    function save() {

        if (!_$form.valid()) {
            return;
        }

        var lang = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js   
        lang.tenantId = abp.session.tenantId;//取得租户信息          

        abp.ui.setBusy(_$form);
        _dataService.update(lang).done(function (data) {
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