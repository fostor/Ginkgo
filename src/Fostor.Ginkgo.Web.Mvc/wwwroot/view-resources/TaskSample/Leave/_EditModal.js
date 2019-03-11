(function ($) {
    var _dataService = abp.services.app.leaveApplication;
    $('#LeaveEditModalBody').height(400); //$(window).height() - 250
    var _$modal = $('#LeaveEditModal');
    var _$form = _$modal.find('form[name=LeaveEditForm]');

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
        _dataService.update(leave).done(function (data) {
            _$modal.find(".save-button").addClass('save-clicked');
            _$modal.modal('hide');
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

    //Send Flow
    var _taskInsService = abp.services.app.taskInstance;
    $(".send-flow-button").click(function (e) {
        e.preventDefault();
        if (_$form.is(':hidden')) {
            return; //判断是否为后台缓存的弹窗数据,因底部工具条会触发所有打开过的缓存窗体
        }  
        var id = _$form.find('input[name=Id]').val();
        var appliNumber = _$form.find('input[name=AppliNumber]').val();
        var applicant = _$form.find('input[name=Applicant]').val();
        var title = _$form.find('input[name=Title]').val();

        var task = {
            taskCode: "T001",
            keyInfo: "申请单:" + appliNumber +"申请人:" + applicant + "申请标题:" + title,
            formUri: "TaskSample/Leave/Edit?id=" + id,
            notifyTitle: "请假单待审批[请假人:" + applicant + "]",
            finalService: '{"service":"leaveApplication","method":"updateStatus","params":{"appliNumber":"' + appliNumber + '","statusCode":"3"}}',
            startService: '{"service":"leaveApplication","method":"updateStatus","params":{"appliNumber":"' + appliNumber + '","statusCode":"2"}}',
            abortService: '{"service":"leaveApplication","method":"updateStatus","params":{"appliNumber":"' + appliNumber + '","statusCode":"1"}}',
            phaseService: ''
        };
        _taskInsService.instanceInit(task).done(function (data) {
            if (data) {
                //alert("送审成功");
                location.href = abp.appPath + "TaskFlow/Task/SendForm?id=" + data.id;
            }
        });

    });
    
})(jQuery);