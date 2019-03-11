(function () {
	$(function () {
        var _roleService = abp.services.app.role;
        function loadList() {
            _roleService.getAll({ maxResultCount: 1000000 }).done(function (data) {
                BindTable_100(data.items);
            });
        }
        var table_100 = null;
        loadList();
        function BindTable_100(data) {
            table_100 = $('#table_100').DataTable({
                data: data,
                destroy: true,
                searching: true,
                dom: 'Bftir',
                language: $.getDataTableLang(),
                buttons: $.getDataTableButtons(),
                deferRender: true,
                scrollY: $(window).height() - 350,
                scrollX: true,
                scrollCollapse: true,
                scroller: true,                            
                columns: [
                    { data: 'name', width: '120px' },
                    { data: 'displayName', width: '120px' },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block edit-role" data-role-id="' + data + '"  data-toggle="modal" data-target="#RoleEditModal"><i class="tiny material-icons">edit</i></a>';

                            content += '</div>';
                            return content;
                        }
                    },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block delete-role" data-role-id="' + data + '"   data-role-name="' + row.name + '"><i class="tiny material-icons">delete_sweep</i></a>';

                            content += '</div>';
                            return content;
                        }
                    }
                ],

                initComplete: function () {
                    bindEditEvent();
                    bindDeleteEvent();
                    $.setTableSelectedRowsCss('table_100');
                }
            });
        }

        function bindEditEvent() {
            $('.edit-role').click(function (e) {
                var roleId = $(this).attr("data-role-id");

                e.preventDefault();
                $.ajax({
                    url: abp.appPath + 'Roles/EditRoleModal?roleId=' + roleId,
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#RoleEditModal div.modal-content').html(content);
                    },
                    error: function (e) { }
                });
            });
        }

        function bindDeleteEvent() {
            $('.delete-role').click(function () {
                var roleId = $(this).attr("data-role-id");
                var roleName = $(this).attr('data-role-name');
                abp.message.confirm(
                    abp.utils.formatString(abp.localization.localize('AreYouSureWantToDelete', 'Ginkgo'), roleName),
                    function (isConfirmed) {
                        if (isConfirmed) {
                            _roleService.delete({
                                id: roleId
                            }).done(function () {
                                loadList();
                            });
                        }
                    }
                );
            });
        }
  
        //edit refresh
        $('#RoleEditModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                loadList();
            }
        });

        $('#RefreshButton').click(function () {
            loadList();
        });

		var _$modal = $('#RoleCreateModal');
		var _$form = _$modal.find('form');

		_$form.validate({
		});

		_$form.find('button[type="submit"]').click(function (e) {
			e.preventDefault();
			if (!_$form.valid()) {
				return;
			}
			var role = _$form.serializeFormToObject(); 
			role.permissions = [];			

			abp.ui.setBusy(_$modal);
			_roleService.create(role).done(function () {
                _$modal.modal('hide');
                loadList();	//location.reload(true); 
			}).always(function () {
				abp.ui.clearBusy(_$modal);
			});
		});

		_$modal.on('shown.bs.modal', function () {
			_$modal.find('input:not([type=hidden]):first').focus();
		});

	});
})();