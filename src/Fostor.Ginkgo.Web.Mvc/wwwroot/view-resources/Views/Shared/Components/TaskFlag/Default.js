(function ($) {
    var _dataService = abp.services.app.taskInstance;
    var _$task_count = $('#task_flag_count');

    getTaskFlagCount();
    setInterval(getTaskFlagCount, 180000);    
    function getTaskFlagCount() {
        _dataService.getToDoCount().done(function (data) {
            if (data) {
                _$task_count.text(data);
            }
            else {
                _$task_count.text('0');
            }
        });
    }

})(jQuery);