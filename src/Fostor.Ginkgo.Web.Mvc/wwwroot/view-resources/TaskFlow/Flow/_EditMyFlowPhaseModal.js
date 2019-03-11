(function ($) {
    var _dataService = abp.services.app.taskOriginatorRoute;
    var _phaseService = abp.services.app.taskPhase;

    var _$modal = $('#MyFlowPhaseEditModal');
    var _$form = $('form[name=MyFlowPhaseEditForm]');
    var taskCode = _$form.find('input[name=TaskCode]').val();
    var phaseCode = _$form.find('input[name=PhaseCode]').val();
    var originator = _$form.find('input[name=Originator]').val();

    var selActors = $('#phase_actors_select');
    selActors.multiSelect({
        selectableHeader: "<div class='custom-header'>" + abp.localization.localize("SelectableActors", "Ginkgo") + "</div>",
        selectionHeader: "<div class='custom-header'>" + abp.localization.localize("SelectionActors", "Ginkgo") + "</div>"
    });
    loadActors();

    function loadActors() {
        //_dataService.getMyFlowPhaseActors
        _dataService.getMyFlowPhaseActors(taskCode, phaseCode).done(function (d) {
            _phaseService.getFlowPhaseUsers(taskCode, phaseCode).done(function (data) {
                if (data) {
                    var shtml = '';
                    for (var j = 0; j < data.length; j++) {
                        shtml += '<option value=' + data[j].userName + '>' + data[j].userName+' ' + data[j].fullName + '</option>';
                    }
                    selActors.append(shtml);

                    //add selected                    
                    if (d && d.length > 0) {
                        var list = d.split(',');
                        for (var n = 0; n < list.length; n++) {
                            selActors.find('option[value=' + list[n] + ']').attr('selected', true);
                        }
                    }
                    selActors.multiSelect('refresh');
                }
            });
        });

    }

    function save() {        
        var list = [];
        selActors.find('option:selected').each(function () {
            list.push(this.value);
        });
        var actors = list.join(',');
        // alert(JSON.stringify(list));
        _dataService.save({ taskCode: taskCode, phaseCode: phaseCode, originator: originator, actors: actors }).done(function (data) {
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

})(jQuery);