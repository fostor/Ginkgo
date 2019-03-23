(function ($) {
    var _dataService = abp.services.app.languageText;

    var _$modal = $('#LanguageTextCreateModal');
    var _$form = $('form[name=LanguageTextCreateForm]');

    function save() {
        if (!_$form.valid()) {
            return;
        }        
        var source = _$form.find('input[name=Source]').val().trim();
        var key = _$form.find('input[name=Key]').val().trim();
        var valueC = _$form.find('input[name=ValueCN]').val().trim();
        var valueE = _$form.find('input[name=ValueEN]').val().trim();
        var langCN = { "languageName": "zh-Hans", "source": source, "key": key, "value": valueC };
        var langEN = { "languageName": "en", "source": source, "key": key, "value": valueE };
        abp.ui.setBusy(_$form);        
        _dataService.create(langEN).done(function (d) {
            _dataService.create(langCN).done(function (data) {
                _$modal.find(".save-button").addClass('save-clicked');
                _$modal.modal('hide');
            }).always(function () {
                abp.ui.clearBusy(_$modal);
            });
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