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
    _$form.closest('div.modal-content').find(".save-button").click(function (e) {
        e.preventDefault();
        save();
    });

    $.AdminBSB.input.activate(_$form);

    _$modal.on('shown.bs.modal', function () {
        _$form.find('input[type=text]:first').focus();
    });
})(jQuery);