(function ($) {
    $('.datepicker-component').datepicker({
        format: "yyyy/mm/dd",
        todayBtn: "linked",
        clearBtn: true,
        language: "zh-CN",
        orientation: "bottom left",
        daysOfWeekDisabled: "0",
        daysOfWeekHighlighted: "1,2,3,4,5",
        todayHighlight: true,
        zIndexOffset:"10650"
    });

})(jQuery);