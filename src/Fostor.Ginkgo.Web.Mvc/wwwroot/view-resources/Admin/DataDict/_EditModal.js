(function ($) {

    var _dataService = abp.services.app.dataDictionary;
    var _$modal = $('#DataDictEditModal');
    var _$form = $('form[name=DataDictEditForm]');

    function save() {

        if (!_$form.valid()) {
            return;
        }

        var dataDict = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js   
        dataDict.tenantId = abp.session.tenantId;//取得租户信息
        abp.ui.setBusy(_$form);
        _dataService.update(dataDict).done(function () {
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

    $.AdminBSB.input.activate(_$form);

    _$modal.on('shown.bs.modal', function () {
        _$form.find('input[type=text]:first').focus();
    });
})(jQuery);