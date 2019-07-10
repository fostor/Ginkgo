(function () {
    $(function () {
        var _dataService = abp.services.app.sysObject;
        $('#tree_container').height($(window).height() - 220);
        $('#edit_panel').height($('#tree_container').height() - 50);
        var treedata = $('#tree_container').attr("data-tree");
        treedata = treedata.replace(/,"nodes":\[\]/g, "");
        $('#tree').treeview({
            data: treedata,
            showBorder: false,
            color: "#00BCD4", //#00BCD4   #3F51B5
            levels: 2,
            selectedBackColor: "#d9edf7",
            selectedColor: "#3c85a9",
            //nodeIcon: 'glyphicon glyphicon-list',
            onNodeSelected: function (event, data) {
                // Your logic goes here
                //alert(JSON.stringify(data));
                loadNode(data.id);
            }
        });

        //var category = '';
        //var selNodes = $('#catetree').treeview('getSelected', 'treeview');
        //if (selNodes && selNodes.length > 0) {
        //    category = selNodes[0].category;
        //}

        function loadNode(id) {
            $.ajax({
                url: abp.appPath + 'Admin/SysObject/Edit?id=' + id,
                type: 'POST',
                contentType: 'application/html',
                success: function (content) {
                    $('#edit_panel').html(content);
                    $.AdminBSB.input.activate($('#edit_panel').find('form[name=SysObjectEditForm]'));
                },
                error: function (e) { }
            });
        }

        function loadTree() {
            _dataService.getTree().done(function (data) {
                if (data) {
                    var tdata = JSON.stringify(data);
                    tdata = tdata.replace(/,"nodes":\[\]/g, "");
                    $('#tree').treeview({
                        data: tdata,
                        showBorder: false,
                        color: "#00BCD4",
                        levels: 2,
                        selectedBackColor: "#d9edf7",
                        selectedColor: "#3c85a9",
                        //nodeIcon: 'glyphicon glyphicon-list',
                        onNodeSelected: function (event, data) {
                            // Your logic goes here
                            //alert(JSON.stringify(data));
                            loadNode(data.id);
                        }
                    });
                }
            })
        }

        $('.delete-object').on("click", function (e) {
            e.preventDefault();
            var id = $('#edit_panel').find('input[name=Id]').val();
            var code = $('#edit_panel').find('input[name=ObjectKey]').val();
            abp.message.confirm(
                $.deleteConfirm(code),
                function (isConfirmed) {
                    if (isConfirmed) {
                        _dataService.delete({ id: id }).done(function () {
                            loadTree();
                            $('#edit_panel').html('');
                        });
                    }
                }
            );
        });

        $('.add-root-node').click(function (e) {
            e.preventDefault();
            $.ajax({
                url: abp.appPath + 'Admin/SysObject/Add',
                type: 'POST',
                contentType: 'application/html',
                success: function (content) {
                    $('#SysObjectCreateModal div.modal-content').html(content);
                },
                error: function (e) { }
            });
        });
        $('.add-sub-node').click(function (e) {
            e.preventDefault();
            var pkey = $('#edit_panel').find('input[name=ObjectKey]').val();
            if (pkey) {
                $.ajax({
                    url: abp.appPath + 'Admin/SysObject/Add?parentKey=' + pkey,
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#SysObjectCreateModal div.modal-content').html(content);
                        $('#SysObjectCreateModal').modal('show');
                    },
                    error: function (e) { }
                });
            } else {
                $.showError("未选择节点，不能创建子节点");
            }
        });

        //add modal refresh
        $('#SysObjectCreateModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                loadTree();
            }
        });


        function save() {
            var _$form = $('#edit_panel').find('form[name=SysObjectEditForm]');
            if (!_$form.valid()) {
                return;
            }
            //处理选择项的值不改变的问题
            $.setCheckVal(_$form);

            var sysobj = _$form.serializeFormToObject(); //serializeFormToObject is defined in main.js
            var objKey = _$form.find('input[name=ObjectKey]').val();
            sysobj.RefPermissions = [];
            var _$permissionCheckboxes = $("input[name='permission0']:checked");
            if (_$permissionCheckboxes) {
                for (var permissionIndex = 0; permissionIndex < _$permissionCheckboxes.length; permissionIndex++) {
                    var _$permissionCheckbox = $(_$permissionCheckboxes[permissionIndex]);
                    var _permissionName = _$permissionCheckbox.attr("data-permission-name");
                    var _displayName = _$permissionCheckbox.attr("data-display-name");
                    var _permision = {};
                    _permision.ObjectKey = objKey;
                    _permision.PermissionName = _permissionName;
                    _permision.DisplayName = _displayName;
                    sysobj.RefPermissions.push(_permision);
                }
            }
            abp.ui.setBusy(_$form);
            _dataService.update(sysobj).done(function () {
                $.showOK('保存成功');
            }).always(function () {
                abp.ui.clearBusy(_$form);
            });
        }
        //Handle save button click
        $(".save-object").click(function (e) {
            e.preventDefault();
            save();
        });
    });
})();