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
    //设置表格间隔行颜色
    $.setTableInterVarRowsColor = function (tableId) {
        var tableDT = $('#' + tableId).DataTable();
        tableDT.$("tr:even").css("background-color", "#E0EEEE");
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

    //set datatable add button
    $.setAddButton = function (className, target) {
        var content = '';
        content += '<button type="button" class="btn btn-default pull-left ' + className + '"';
        if (target) {
            content += ' data-toggle="modal" data-target="#' + target + '"';
        }
        content += ' ><span  style="color:#009688;"><i class="material-icons">add_box</i></span><span style="color:#00BCD4;">' + abp.localization.localize("Create", "Ginkgo") + '</span>' + '</button>';
        $("div.toolbar-add").html(content);

    }

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
            if ($('#' + tableId + ' thead th').eq($(this).index()).find('i').length > 0) {
                title = '';
            }
            $(this).html('<input type="search" style="width:100%;color:#999;" placeholder="' + title + '" />');
        });
    };

    //reset DataTable Column Search Input value
    $.resetTableColumnSearchInput = function (tableId) {
        var tableRTCSI = $('#' + tableId).DataTable();
        tableRTCSI.columns().eq(0).each(function (colIdx) {
            if (tableRTCSI.column(colIdx).visible() === true) {
                 //$('input', tableRTCSI.column(colIdx).footer()).val(""); //这种写法有特殊bug,特定情况下会清空页面的其它input
                $(tableRTCSI.column(colIdx).footer()).find('input').val("");
            }
        });
        //$('#' + tableId + '_wrapper').find('.dataTables_scrollFootInner').css("margin-bottom", "-10px");
        $('#' + tableId + '_wrapper').find('.dataTables_scrollFootInner').find('.dataTable').css("border-bottom", "none");
    };

    //bind DataTable Column Search Event
    $.bindTableColumnSearchEvent = function (tableId) {
        var tableBTCSE = $('#' + tableId).DataTable();
        tableBTCSE.columns().eq(0).each(function (colIdx) {
            $('input', tableBTCSE.column(colIdx).footer()).on('keyup change', function () {
                tableBTCSE.column(colIdx)
                    .search(this.value)
                    .draw();
            }).off("mouseout").on("mouseout", function () { $(this).blur(); });
        });
    };
    //行首选择框
    $.getColumnSelect = function (data) {
        var content = '<div style="text-align:center;" >';
        content += '   <a href="#" name="checkItem" data-id="' + data + '"  ><i class="material-icons">check_box_outline_blank</i></a>';
        content += '</div>';
        return content;
    };
    $.bindRowSelectEvent = function (tableId) {
        //每次加载时都先清理
        $('#' + tableId + ' tbody').off("click", "tr");
        $('#' + tableId + ' tbody').on("click", "tr", function () {
            $(this).toggleClass('selected');
            if ($(this).hasClass("selected")) {
                $(this).find("a[name='checkItem']").find("i").text("check_box");
            } else {
                $(this).find("a[name='checkItem']").find("i").text("check_box_outline_blank");
            }
        });
    };
    $.bindCheckAllEvent = function (selector, tableId) {
        selector.click(function (e) {
            $(this).toggleClass('selected');
            if ($(this).hasClass("selected")) {
                $(this).find("i").text("check_box");
                $('#' + tableId + ' tbody tr').addClass('selected').find("a[name='checkItem']").find("i").text("check_box");
            } else {
                $(this).find("i").text("check_box_outline_blank");
                $('#' + tableId + ' tbody tr').removeClass('selected').find("a[name='checkItem']").find("i").text("check_box_outline_blank");
            }
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

    $.showOK = function (msg) {
        var key = 'SaveOK';
        if (msg) { key = msg; }
        abp.message.success(abp.localization.localize(key, 'Ginkgo'));
    }

    $.showError = function (msg) {
        var key = 'ExecuteError';
        if (msg) { key = msg; }
        abp.message.error(abp.localization.localize(key, 'Ginkgo'));
    }

    $.deleteConfirm = function (code) {
        return abp.utils.formatString(abp.localization.localize('AreYouSureWantToDelete', 'Ginkgo'), code);
    };
    //权限检查,无权限时报错
    $.checkPermision = function (pkey, pname) {
        if (abp.auth.isGranted(pkey)) {
            return true;
        }
        else {
            var info = abp.utils.formatString(abp.localization.localize('AtLeastOneOfThesePermissionsMustBeGranted', 'Abp'),
                abp.localization.localize(pname, 'Ginkgo'));
            abp.message.error(info);
            return false;
        }
    };
    $.fixDataTableHeight = function (tableId, height) {
        $('#' + tableId + '_wrapper').find('.dataTables_scrollBody').height(height);
        $('#' + tableId + '_wrapper').find('.dataTables_scroll').css("border", "1px solid #d9d9d9");
        if ($('#' + tableId + '_wrapper').find('.dataTables_scroll').find('.dataTables_scrollFootInner').length > 0) {
            $('#' + tableId + '_wrapper').find('.dataTables_scroll').css("border-bottom", "none");
        }
    };

    $.setFormReadMode = function (form) {
        form.find('input[type=text]').each(function () {
            $(this).attr("readonly", "readonly");
        });
        form.find('input[type=number]').each(function () {
            $(this).attr("readonly", "readonly");
        });
        form.find('input[type=checkbox]').each(function () {
            $(this).attr("disabled", "disabled");
        });
        form.find('select').each(function () {
            $(this).attr("disabled", "disabled").selectpicker('refresh');
        });
    };
    $.setFormEditMode = function (form) {
        form.find('input[type=text]').each(function () {
            $(this).attr("readonly", false);
        });
        form.find('input[type=number]').each(function () {
            $(this).attr("readonly", false);
        });
        form.find('input[type=checkbox]').each(function () {
            $(this).attr("disabled", false);
        });
        form.find('select').each(function () {
            $(this).attr("disabled", false).selectpicker('refresh');
        });
    };
    //重新设置表单的选择框的值，便于form数据序列化
    $.setCheckVal = function (form) {
        form.find('input[type=checkbox]').each(function (i) {
            if ($(this).is(':checked')) {
                $(this).val(true);
            }
            else {
                $(this).val(false);
            }
        });
    };
    //设置滚动条退回到顶部
    $.setTableScrollerTop = function (tableId) {
        var row0 = $('#' + tableId).DataTable().row(0);
        if (row0) {
            row0.scrollTo();
        }
        else {
            $('#' + tableId).DataTable().scroller.toPosition(-1);
        }
    };
    //datatable保存状态时,不保存搜索条件
    $.setTableStateSaveNoneFilter = function (settings, data) {
        data.search.search = "";
        $.each(data.columns, function (index, value) {
            value.search = {};
        });
    };

})(jQuery);