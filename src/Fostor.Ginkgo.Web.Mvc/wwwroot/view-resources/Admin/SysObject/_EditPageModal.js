(function ($) {

    var _pageService = abp.services.app.page;
    var _$modal = $('#PageEditModal');
    var _$form = $('form[name=PageEditForm]');

    function save() {

        if (!_$form.valid()) {
            return;
        }

        //处理选择项的值不改变的问题
        var _$is_menu_visible = $('#is_menu_visible0');
        var _$is_category = $('#is_menu_category0');
        if (_$is_menu_visible.is(':checked')) {
            _$is_menu_visible.val(true);
        } else {
            _$is_menu_visible.val(false);
        }
        if (_$is_category.is(':checked')) {
            _$is_category.val(true);
        } else {
            _$is_category.val(false);
        }

        var pg = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js
        var pageName = $('#pagename0').val();
        pg.RefPermissions = [];
        var _$permissionCheckboxes = $("input[name='permission0']:checked");
        if (_$permissionCheckboxes) {
            for (var permissionIndex = 0; permissionIndex < _$permissionCheckboxes.length; permissionIndex++) {
                var _$permissionCheckbox = $(_$permissionCheckboxes[permissionIndex]);
                var _permissionName = _$permissionCheckbox.attr("data-permission-name");
                var _displayName = _$permissionCheckbox.attr("data-display-name");
                var _permision = {};
                _permision.PageName = pageName;
                _permision.PermissionName = _permissionName;
                _permision.PermissionDisplayName = _displayName;
                pg.RefPermissions.push(_permision);
            }
        }

        abp.ui.setBusy(_$form);
        _pageService.update(pg).done(function () {
            _$modal.find(".save-button").addClass('save-clicked');            
            _$modal.modal('hide');
            //location.reload(true); //reload page to see edited role!
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

    _$modal.find(".save-button").removeClass('save-clicked');
    $.AdminBSB.input.activate(_$form);

    _$modal.on('shown.bs.modal', function () {
        _$form.find('input[type=text]:first').focus();
    });
})(jQuery);