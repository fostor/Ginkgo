(function ($) {

    //Notification handler
    abp.event.on('abp.notifications.received', function (userNotification) {
        abp.notifications.showUiNotifyForUserNotification(userNotification);

        //Desktop notification
        Push.create("Ginkgo", {
            body: userNotification.notification.data.message,
            icon: abp.appPath + 'images/app-logo-small.png',
            timeout: 6000,
            onClick: function () {
                window.focus();
                this.close();
            }
        });
    });

    //serializeFormToObject plugin for jQuery
    $.fn.serializeFormToObject = function () {
        //serialize to array
        var data = $(this).serializeArray();

        //add also disabled items
        $(':disabled[name]', this).each(function () {
            data.push({ name: this.name, value: $(this).val() });
        });

        //map to object
        var obj = {};
        data.map(function (x) { obj[x.name] = x.value.trim(); });

        return obj;
    };

    //Configure blockUI
    if ($.blockUI) {
        $.blockUI.defaults.baseZ = 2000;
    }

    //set Table Selected Row Css
    $.setTableSelectedRowsCss = function (tableId) {
        //每次加载时都先清理
        $('#' + tableId + ' tbody').off("click", "tr");
        $('#' + tableId + ' tbody').on("click", "tr", function () {
            $(this).toggleClass('selected');
        });
    };

    //get the language of datatables
    $.getDataTableLang = function () {
        return {
            "zeroRecords": abp.localization.localize("zeroRecords", "Ginkgo"),
            "info": abp.localization.localize("datatable_info", "Ginkgo"),
            "infoEmpty": abp.localization.localize("infoEmpty", "Ginkgo"),
            "infoFiltered": abp.localization.localize("infoFiltered", "Ginkgo"),
            "sSearch": abp.localization.localize("sSearch", "Ginkgo")
        };
    };

    //get the Buttons of datatables
    $.getDataTableButtons = function () {
        return [
            //{ extend: 'copy', className:'btn', text: abp.localization.localize("datatable_copy", "Ginkgo") },            
            { extend: 'excel', text: '<span  style="color:#009688;"><i class="material-icons">explicit</i></span><span style="color:#00BCD4;">' + abp.localization.localize("datatable_excel", "Ginkgo") + '</span>' },
            { extend: 'colvis', text: '<span  style="color:#009688;"><i class="material-icons">settings_applications</i></span><span style="color:#00BCD4;">' + abp.localization.localize("ColumnVisible", "Ginkgo") + '</span>' }
        ];
    };

    //set DataTable Column Search Input
    $.setTableColumnSearchInput = function (tableId) {
        $('#' + tableId + ' tfoot th').each(function () {
            var title = $('#' + tableId + ' thead th').eq($(this).index()).text();
            var widthInput = $('#' + tableId + ' thead th').eq($(this).index()).width() + 5;
            $(this).html('<input type="text" style="width:' + widthInput + 'px;" placeholder="' + title + '" />');
        });
    };

    //reset DataTable Column Search Input value
    $.resetTableColumnSearchInput = function (tableId) {
        var tableRTCSI = $('#' + tableId).DataTable();
        tableRTCSI.columns().eq(0).each(function (colIdx) {
            if (tableRTCSI.column(colIdx).visible() === true) {
                $('input', tableRTCSI.column(colIdx).footer()).val("");
            }
        });
    };

    //bind DataTable Column Search Event
    $.bindTableColumnSearchEvent = function (tableId) {
        var tableBTCSE = $('#' + tableId).DataTable();
        tableBTCSE.columns().eq(0).each(function (colIdx) {
            $('input', tableBTCSE.column(colIdx).footer()).on('keyup change', function () {
                tableBTCSE.column(colIdx)
                    .search(this.value)
                    .draw();
            });
        });
    };
    //Datetime Format
    $.dateFormat = function (date, fmt) {
        var o = {
            "M+": date.getMonth() + 1, //月份 
            "d+": date.getDate(), //日 
            "h+": date.getHours(), //小时 
            "m+": date.getMinutes(), //分 
            "s+": date.getSeconds(), //秒 
            "q+": Math.floor((date.getMonth() + 3) / 3), //季度 
            "S": date.getMilliseconds() //毫秒 
        };
        if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (date.getFullYear() + "").substr(4 - RegExp.$1.length));
        for (var k in o)
            if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length === 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
        return fmt;
    };

    $.showModal = function (uri, modalContainer) {
        $.ajax({
            url: abp.appPath + uri,
            type: 'POST',
            contentType: 'application/html',
            success: function (content) {
                $('#' + modalContainer).html(content);
            },
            error: function (e) { }
        });
    };

    $.getDateString = function (data, n) {
        if (data) {
            return data.replace(/T/, ' ').substr(0, n);
        }
        else {
            return null;
        }
    };

    $.getColumnCheck = function (data) {
        if (data) {
            return '<i class="material-icons" style="color:green;">check_box</i>';
        } else {
            return '<i class="material-icons" style="color:red;">indeterminate_check_box</i>';
        }
    };

    $.getColumnEdit = function (className, dataId, targetModalId, url) {
        var content = '<div style="text-align:center;" >';
        if (url) {
            content += '   <a href="' + url + '" class="waves-effect waves-block ' + className
                + '" data-id="' + dataId + '" ><i class="tiny material-icons">view_list</i></a>';
        } else {
            content += '   <a href="#" class="waves-effect waves-block ' + className
                + '" data-id="' + dataId + '"  data-toggle="modal" data-target="#'
                + targetModalId + '"><i class="tiny material-icons">view_list</i></a>';
        }
        content += '</div>';
        return content;
    };

    $.getColumnDelete = function (className, dataId, dataCode) {
        var content = '<div style="text-align:center;" >';
        content += '   <a href="#" class="waves-effect waves-block ' + className + '" data-id="' + dataId
            + '" data-code="' + dataCode + '" ><i class="tiny material-icons">delete</i></a>';
        content += '</div>';
        return content;
    };

    $.deleteConfirm = function (code) {
        return abp.utils.formatString(abp.localization.localize('AreYouSureWantToDelete', 'Ginkgo'), code);
    };

})(jQuery);