(function () {
    $(function () {
        var _dataService = abp.services.app.taskRole;
        var _$modal = $('#TaskRoleCreateModal');
        var _$form = $('form[name=TaskRoleCreateForm]');

        function save() {

            if (!_$form.valid()) {
                return;
            }         

            var role = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js             
            abp.ui.setBusy(_$form);
            _dataService.create(role).done(function (data) {
                //_$form.find(".save-button").addClass('save-clicked');
                _$modal.modal('hide');
                $.ajax({
                    url: abp.appPath + 'TaskFlow/Flow/EditRole?id=' + data.id,
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#TaskRoleEditModal div.modal-content').html(content);
                    },
                    error: function (e) { }
                });
            }).always(function () {
                abp.ui.clearBusy(_$modal);
            });
        }

        //Handle save button click
        _$form.find(".save-button").click(function (e) {
            e.preventDefault();
            save();
        });

        //_$form.find(".save-button").removeClass('save-clicked');
        $.AdminBSB.input.activate(_$form);


    });
})();