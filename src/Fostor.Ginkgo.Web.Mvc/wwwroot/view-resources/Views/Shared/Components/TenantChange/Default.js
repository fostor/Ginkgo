(function () {
    $('.tenant-change-component a').click(function (e) {
        e.preventDefault();
        $.ajax({
            url: abp.appPath + 'Account/TenantChangeModal',
            type: 'POST',
            contentType: 'application/html',
            success: function (content) {
                $('#TenantChangeModal div.modal-content').html(content);
            },
            error: function (e) { }
        });
    });
    setDefaultTenant();
    function setDefaultTenant() {
        if (location.href.indexOf('admin') > 0 || location.href.indexOf('Admin') > 0) {
            abp.multiTenancy.setTenantIdCookie(null);
            $('#current_tenant_name').text(abp.localization.localize('Host', 'Ginkgo'));
        } else {
            if (!abp.session.tenantId) {
                abp.services.app.session.getAllTenants().done(function (data) {
                    if (data) {
                        abp.multiTenancy.setTenantIdCookie(data[0].id);
                        $('#current_tenant_name').text(abp.localization.localize(data[0].name, 'Ginkgo'));
                    }
                });
            }
        }
    }
})();