(function ($) {
    $('.datepicker-component').datepicker({
        format: "yyyy/mm/dd",
        todayBtn: "linked",
        clearBtn: true,
        language: "zh-CN",
        orientation: "bottom left",
        daysOfWeekDisabled: "",
        daysOfWeekHighlighted: "1,2,3,4,5",
        todayHighlight: true,
        zIndexOffset:"10650"
    });

})(jQuery);