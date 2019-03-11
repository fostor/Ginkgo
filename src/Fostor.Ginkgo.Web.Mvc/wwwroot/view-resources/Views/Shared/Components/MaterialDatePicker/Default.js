(function ($) {
    $('.material-datepicker-component').bootstrapMaterialDatePicker({
        weekStart: 1, lang: 'zh-cn', time: false, clearButton: true, nowButton: true, nowText: 'Today', format: 'YYYY/MM/DD'      
    });
    $('.material-datepicker-component-with-time').bootstrapMaterialDatePicker({
        weekStart: 1, lang: 'zh-cn', time: true, clearButton: true, nowButton: true, nowText: 'Today', format: 'YYYY/MM/DD HH:mm'
    });
})(jQuery);