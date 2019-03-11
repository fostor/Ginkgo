(function ($) {
    var _dataService = abp.services.app.taskRole;
    var _memberService = abp.services.app.taskRoleMember;
    var _userService = abp.services.app.user;

    var _$modal = $('#TaskRoleEditModal');
    var _$form = $('form[name=TaskRoleEditForm]');

    var selUsers = $('#role_member_select');
    selUsers.multiSelect({
        selectableHeader: "<div class='custom-header'>" + abp.localization.localize("SelectableUsers", "Ginkgo") + "<input type='text' class='search-input' style='margin-left:6px;' autocomplete='off' placeholder='search'></div>",
        selectionHeader: "<div class='custom-header'>" + abp.localization.localize("SelectionUsers", "Ginkgo") + "</div>",
        afterInit: function (ms) {
            var that = this,
                $selectableSearch = that.$selectableUl.prev().find('input'),
                //$selectionSearch = that.$selectionUl.prev(),
                selectableSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selectable:not(.ms-selected)';
                //selectionSearchString = '#' + that.$container.attr('id') + ' .ms-elem-selection.ms-selected';

            that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                .on('keydown', function (e) {
                    if (e.which === 40) {
                        that.$selectableUl.focus();
                        return false;
                    }
                });

            //that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
            //    .on('keydown', function (e) {
            //        if (e.which == 40) {
            //            that.$selectionUl.focus();
            //            return false;
            //        }
            //    });
        },
        afterSelect: function () {
            this.qs1.cache();
            //this.qs2.cache();
        },
        afterDeselect: function () {
            this.qs1.cache();
            //this.qs2.cache();
        }
    });
    loadMembers();

    function loadMembers() {
        var roleCode = _$form.find('input[name=RoleCode]').val();
        _memberService.getByRoleCode(roleCode).done(function (list) {
            _userService.getAll({ maxResultCount: 100000 }).done(function (data) {
                if (data.items) {
                    var d = data.items;
                    var shtml = '';
                    for (var j = 0; j < d.length; j++) {
                        shtml += '<option value="' + d[j].userName + '">' + d[j].userName + '  [' + d[j].fullName + ']</option>';
                    }
                    selUsers.append(shtml);
                    //add selected
                    if (list && list.length > 0) {
                        for (var n = 0; n < list.length; n++) {
                            selUsers.find('option[value=' + list[n].userName + ']').attr('selected', true);
                        }
                    }
                    selUsers.multiSelect('refresh');
                }
            });

        });

    }

    function save() {

        if (!_$form.valid()) {
            return;
        }

        var role = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js  
        abp.ui.setBusy(_$form);
        _dataService.update(role).done(function (data) {
            _$form.find(".save-button").addClass('save-clicked');
            _$modal.modal('hide');
        }).always(function () {
            abp.ui.clearBusy(_$modal);
        });
        //save members        
        var roleCode = _$form.find('input[name=RoleCode]').val();
        var list = [];
        selUsers.find('option:selected').each(function () {
            list.push(this.value);
        });
        // alert(JSON.stringify(list));
        _memberService.batchInsertOrUpdate(list, roleCode).done(function (data) {
            _$form.find(".save-button").addClass('save-clicked');
            _$modal.modal('hide');
        });
    }

    //Handle save button click
    _$form.find(".save-button").click(function (e) {
        e.preventDefault();
        save();
    });

    _$form.find(".save-button").removeClass('save-clicked');
    $.AdminBSB.input.activate(_$form);
})(jQuery);