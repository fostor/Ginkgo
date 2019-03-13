﻿(function () {
    $(function () {
        var _dataService = abp.services.app.languageText;
        var _$form = $('form[name=SearchForm]');

        $('#LanguageTextCreateModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                search();
            }  
        });
        $('#LanguageTextEditModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {
                search();
            }            
        });

        $('.add-language-text').click(function (e) {
            e.preventDefault();
            $.ajax({
                url: abp.appPath + 'Admin/Localization/Add',
                type: 'POST',
                contentType: 'application/html',
                success: function (content) {
                    $('#LanguageTextCreateModal div.modal-content').html(content);
                },
                error: function (e) { }
            });
        });

        $('.copy-language-text').click(function (e) {
            e.preventDefault();
            $.ajax({
                url: abp.appPath + 'Admin/Localization/Copy',
                type: 'POST',
                contentType: 'application/html',
                success: function (content) {
                    $('#LanguageTextCopyModal div.modal-content').html(content);
                },
                error: function (e) { }
            });
        });

        $('#btnSearch').click(function (e) {
            e.preventDefault();            
            search();
        });

        function search() {            
            var searchDto = _$form.serializeFormToObject();            
            _dataService.search(searchDto).done(function (data) {
                BindTable_100(data);
            });
        }

        var table_100 = null;
        search();

        function BindTable_100(data) {
            table_100 = $('#table_100').DataTable({
                data: data,
                destroy: true,
                searching: true,
                dom: 'Bftir',
                language: $.getDataTableLang(),
                buttons: $.getDataTableButtons(),
                deferRender: true,
                scrollY: $(window).height() - 400,
                scrollX: true,
                scrollCollapse: true,
                scroller: true,
                columns: [
                    { data: 'languageName', width: '60px' },
                    { data: 'key', width: '100px' },
                    { data: 'value', width: '60px' },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block edit-language-text" data-id="' + data + '"  data-toggle="modal" data-target="#LanguageTextEditModal"><i class="tiny material-icons">visibility</i></a>';

                            content += '</div>';
                            return content;
                        }
                    },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '40px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block delete-language-text" data-id="' + data + '" data-code="' + row.value + '" ><i class="tiny material-icons">delete</i></a>';

                            content += '</div>';
                            return content;
                        }
                    },
                    {
                        data: 'lastModificationTime',
                        width: '80px',
                        render: function (data, type, row, meta) {                            
                            return data ? data.substr(0, 16).replace(/T/, ' ') : null;
                            //return data ? $.dateFormat(new Date(data), "yyyy-MM-dd hh:mm:ss") : null;
                        }
                    },
                    {
                        data: 'creationTime',
                        render: function (data, type, row, meta) {                            
                            return data ? data.substr(0, 16).replace(/T/, ' ') : null;
                            //return data ? $.dateFormat(new Date(data), "yyyy-MM-dd hh:mm") : null;
                        }
                    }
                ],
                initComplete: function () {
                    bindEditEvent();
                    bindDeleteEvent();
                    $.setTableSelectedRowsCss('table_100');
                    $.bindTableColumnSearchEvent('table_100');
                    $.resetTableColumnSearchInput('table_100');
                }
            });
        }
        $.setTableColumnSearchInput('table_100');

        function bindEditEvent() {
            $('.edit-language-text').click(function (e) {
                var id = $(this).attr("data-id");
                e.preventDefault();
                $.ajax({
                    url: abp.appPath + 'Admin/Localization/Edit?id=' + id,
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#LanguageTextEditModal div.modal-content').html(content);
                    },
                    error: function (e) { }
                });

            });
        }

        function bindDeleteEvent() {
            $('.delete-language-text').click(function (e) {
                e.preventDefault();
                var id = $(this).attr("data-id");
                var code = $(this).attr("data-code");
                abp.message.confirm(
                    "Delete language text '" + code + "'?",
                    function (isConfirmed) {
                        if (isConfirmed) {
                            _dataService.delete(id).done(function () {
                                search();
                            });
                        }
                    }
                );
            });
        }
    });
})(jQuery);