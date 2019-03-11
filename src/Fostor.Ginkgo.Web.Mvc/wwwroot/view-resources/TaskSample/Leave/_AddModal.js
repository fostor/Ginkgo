(function ($) {
    var _dataService = abp.services.app.leaveApplication;

    var _$modal = $('#LeaveCreateModal');
    var _$form = $('form[name=LeaveCreateForm]');

    //validation from time and end time
    $.validator.addMethod('checkPeriod', function (value, element) {
        var fdate = _$form.find('input[name=FromTime]').val();
        var edate = _$form.find('input[name=EndTime]').val();
        if (fdate <= edate) {
            return true;
        }
        else { return false; }
    },
        '开始时间必须小于结束时间.'
    );
    _$form.validate({
        rules: {
            'FromTime': {
                checkPeriod: true
            },
            'EndTime': {
                checkPeriod: true
            }
        },
        highlight: function (input) {
            $(input).parents('.form-line').addClass('error');
        },
        unhighlight: function (input) {
            $(input).parents('.form-line').removeClass('error');
        },
        errorPlacement: function (error, element) {
            $(element).parents('.form-group').append(error);
        }
    });

    function save() {
        if (!_$form.valid()) {
            return;
        }
        var leave = _$form.serializeFormToObject();
        abp.ui.setBusy(_$form);
        _dataService.create(leave).done(function (data) {
            _$modal.find(".save-button").addClass('save-clicked');
            _$modal.modal('hide');
        }).always(function () {
            abp.ui.clearBusy(_$modal);
        });
    }

    _$modal.find(".save-button").click(function (e) {
        e.preventDefault();
        if (_$form.is(':hidden')) {
            return; //判断是否为后台缓存的弹窗数据,因底部工具条会触发所有打开过的缓存窗体
        }
        save();
    });
    _$modal.find(".save-button").removeClass('save-clicked');    
})(jQuery);