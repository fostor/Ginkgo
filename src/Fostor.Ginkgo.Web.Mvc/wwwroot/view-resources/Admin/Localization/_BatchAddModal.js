(function ($) {
    var _dataService = abp.services.app.languageText;

    var _$modal = $('#LanguageTextBatchCreateModal');
    var _$form = $('form[name=LanguageTextBatchCreateForm]');

    function save() {
        if (!_$form.valid()) {
            return;
        }
        var langname = _$form.find('select[name=LanguageName]').val().trim();
        var batchtext = _$form.find('textarea[name=BatchLangText]').val().trim();        
        abp.ui.setBusy(_$form);
        _dataService.batchCreate(langname,batchtext).done(function (data) {
            if (data && data > 0) {
                $.showOK('添加成功');
                _$modal.find(".save-button").addClass('save-clicked');
                _$modal.modal('hide');
            }
        }).always(function () {
            abp.ui.clearBusy(_$modal);
        });
    }

    //Handle save button click
    _$modal.find(".save-button").click(function (e) {
        e.preventDefault();
        if (_$form.is(':hidden')) {
            return; //判断是否为后台缓存的弹窗数据,因底部工具条会触发所有打开过的缓存窗体
        }
        save();
    });
    _$modal.find(".save-button").removeClass('save-clicked');
    $.AdminBSB.input.activate(_$form);
})(jQuery);