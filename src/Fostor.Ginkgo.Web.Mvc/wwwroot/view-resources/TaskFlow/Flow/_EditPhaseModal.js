(function () {
    $(function () {
        var _dataService = abp.services.app.taskPhase;
        var _userService = abp.services.app.user;
        var _$modal = $('#TaskPhaseEditModal');
        var _$form = $('form[name=TaskPhaseEditForm]');

        var selUsers = $('#task_users_select');
        selUsers.multiSelect({
            selectableHeader: "<div class='custom-header'>" + abp.localization.localize("SelectableUsers", "Ginkgo") + "<input type='text' class='search-input' style='margin-left:6px;' autocomplete='off' placeholder='search'></div>",
            selectionHeader: "<div class='custom-header'>" + abp.localization.localize("SelectionUsers", "Ginkgo") + "</div>",
            afterInit: function (ms) {
                var that = this,
                    $selectableSearch = that.$selectableUl.prev().find('input'),
                    selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)';

                that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                    .on('keydown', function (e) {
                        if (e.which === 40) {
                            that.$selectableUl.focus();
                            return false;
                        }
                    });
            },
            afterSelect: function () {
                this.qs1.cache();
            },
            afterDeselect: function () {
                this.qs1.cache();
            }
        });
        loadUsers();

        function loadUsers() {            
            var taskUsers = _$form.find('input[name=TaskUsers]').val(); 
            _userService.getAll({ maxResultCount: 100000 }).done(function (data) {
                if (data.items) {
                    var d = data.items;
                    var shtml = '';
                    for (var j = 0; j < d.length; j++) {
                        shtml += '<option value="' + d[j].userName + '">' + d[j].userName + '  [' + d[j].fullName + ']</option>';
                    }
                    selUsers.append(shtml);
                    //add selected                    
                    if (taskUsers && taskUsers.length > 0) {
                        var listUser = taskUsers.split(','); 
                        for (var n = 0; n < listUser.length; n++) {
                            selUsers.find('option[value=' + listUser[n] + ']').attr('selected', true);
                        }
                    }
                    selUsers.multiSelect('refresh');
                }
            });
        }
        function save() {
            //save users
            var list = [];
            selUsers.find('option:selected').each(function () {
                list.push(this.value);
            });
            if (list && list.length > 0) {
                var userlist = list.join(',');
                _$form.find('input[name=TaskUsers]').val(userlist);
            }
            if (!_$form.valid()) {
                return;
            }
            //处理选择项的值不改变的问题
            $('#IsCountersignPhase').val($('#IsCountersignPhase').is(':checked'));
            $('#IsSignInPhase').val($('#IsSignInPhase').is(':checked'));
            $('#CanUpdateForm').val($('#CanUpdateForm').is(':checked'));
            $('#CanBatchHandle').val($('#CanBatchHandle').is(':checked'));
            $('#CanReject').val($('#CanReject').is(':checked'));

            var phase = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js             
            abp.ui.setBusy(_$form);
            _dataService.update(phase).done(function (data) {
                _$form.find(".save-button").addClass('save-clicked');
                _$modal.modal('hide');
            }).always(function () {
                abp.ui.clearBusy(_$modal);
            });
        }

        //Handle save button click
        _$form.find(".save-button").click(function (e) {
            e.preventDefault();
            save();
        });

        _$form.find(".save-button").removeClass('save-clicked');
        $.AdminBSB.input.activate(_$form);


    });
})();