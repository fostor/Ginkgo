(function ($) {
    var _roleService = abp.services.app.role;
    var _$modal = $('#RoleEditModal');
    var _$form = $('form[name=RoleEditForm]');
    var dataEdit = $('#permissionNodes').val();    
    var nullNode = /,"nodes":\[\]/;
    dataEdit = dataEdit.replace(new RegExp(nullNode, "gm"), "");    
    $('#edittreeview').treeview({
        data: dataEdit,
        showCheckbox: true,
        levels: 3
    });

    function save() {
        if (!_$form.valid()) {
            return;
        }
        var role = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js
        role.permissions = [];
        var _checkedNodes = $('#edittreeview').treeview('getChecked');        
        if (_checkedNodes) {
            for (var n = 0; n < _checkedNodes.length; n++) {
                var _pnode = $(_checkedNodes[n]);
                role.permissions.push(_pnode.attr("id"));
            }
        }        
        //var _$permissionCheckboxes = $("input[name='permission']:checked:visible");
        //if (_$permissionCheckboxes) {
        //    for (var permissionIndex = 0; permissionIndex < _$permissionCheckboxes.length; permissionIndex++) {
        //        var _$permissionCheckbox = $(_$permissionCheckboxes[permissionIndex]);
        //        role.permissions.push(_$permissionCheckbox.val());
        //    }
        //}

        abp.ui.setBusy(_$form);
        _roleService.update(role).done(function () {
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