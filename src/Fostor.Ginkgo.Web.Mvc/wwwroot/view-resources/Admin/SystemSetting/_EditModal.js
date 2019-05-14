(function ($) {
    var _dataService = abp.services.app.sysSetting;
    var _$modal = $('#SystemSettingEditModal');
    var _$form = $('form[name=SystemSettingEditForm]');

    function save() {
        if (!_$form.valid()) {
            return;
        }
        //var setting = _$form.serializeFormToObject();
        abp.ui.setBusy(_$form);
        var name = _$form.find('input[name=Name]').val().trim();
        var value = _$form.find('input[name=Value]').val().trim();
        _dataService.updateTenantSetting(name, value).done(function (data) {
            _$modal.find(".save-button").addClass('save-clicked');
            _$modal.modal('hide');
        }).always(function () {
            abp.ui.clearBusy(_$modal);
        });
    }

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