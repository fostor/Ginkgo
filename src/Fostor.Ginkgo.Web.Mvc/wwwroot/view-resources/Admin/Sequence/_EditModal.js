(function ($) {

    var _seqService = abp.services.app.sequenceNumber;
    var _$modal = $('#SequenceEditModal');
    var _$form = $('form[name=SequenceEditForm]');

    function save() {
        if (!_$form.valid()) {
            return;
        } 
        var seqNumber = _$form.serializeFormToObject();   
        seqNumber.tenantId = abp.session.tenantId;
        abp.ui.setBusy(_$form);
        _seqService.update(seqNumber).done(function () {
            _$modal.modal('hide');            
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

    $.AdminBSB.input.activate(_$form);

    _$modal.on('shown.bs.modal', function () {
        _$form.find('input[type=text]:first').focus();
    });
})(jQuery);