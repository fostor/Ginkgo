(function ($) {
    var _dataService = abp.services.app.sysObject;
    var _$modal = $('#SysObjectCreateModal');
    var _$form = $('form[name=SysObjectCreateForm]');
    function save() {
        if (!_$form.valid()) {
            return;
        }
        //处理选择项的值不改变的问题
        $.setCheckVal(_$form);
        
        var sysobj = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js
        var objKey = _$form.find('input[name=ObjectKey]').val();
        sysobj.RefPermissions = [];
        var _$permissionCheckboxes = $("input[name='permission']:checked");
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
        _dataService.create(sysobj).done(function () {
            _$modal.find(".save-button").addClass('save-clicked');
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

    _$modal.find(".save-button").removeClass('save-clicked');
    $.AdminBSB.input.activate(_$form);

    _$modal.on('shown.bs.modal', function () {
        _$form.find('input[type=text]:first').focus();
    });
})(jQuery);