(function ($) {
    var _dataService = abp.services.app.sysObject;
    var _$modal = $('#SysObjectEditModal');
    var _$form = $('form[name=SysObjectEditForm]');
    function save() {
        if (!_$form.valid()) {
            return;
        }
        //处理选择项的值不改变的问题
        var _$IsMenuItem = $('#IsMenuItem0');        
        if (_$IsMenuItem.is(':checked')) {
            _$IsMenuItem.val(true);
        } else {
            _$IsMenuItem.val(false);
        }
        var _$IsEnable = $('#IsEnable0');
        if (_$IsEnable.is(':checked')) {
            _$IsEnable.val(true);
        } else {
            _$IsEnable.val(false);
        }
        var sysobj = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js
        var objKey = _$form.find('input[name=ObjectKey]').val();
        sysobj.RefPermissions = [];
        var _$permissionCheckboxes = $("input[name='permission0']:checked");
        if (_$permissionCheckboxes) {
            for (var permissionIndex = 0; permissionIndex < _$permissionCheckboxes.length; permissionIndex++) {
                var _$permissionCheckbox = $(_$permissionCheckboxes[permissionIndex]);
                var _permissionName = _$permissionCheckbox.attr("data-permission-name");
                var _displayName = _$permissionCheckbox.attr("data-display-name");
                var _permision = {};
                _permision.ObjectKey = objKey;
                _permision.PermissionName = _permissionName;
                _permision.DisplayName = _displayName;
                pg.RefPermissions.push(_permision);
            }
        }
        abp.ui.setBusy(_$form);
        _dataService.update(sysobj).done(function () {
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

    _$modal.find(".save-button").removeClass('save-clicked');
    $.AdminBSB.input.activate(_$form);

    _$modal.on('shown.bs.modal', function () {
        _$form.find('input[type=text]:first').focus();
    });
})(jQuery);