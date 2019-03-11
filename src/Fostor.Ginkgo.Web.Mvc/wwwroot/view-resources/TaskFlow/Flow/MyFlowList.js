(function () {
    $(function () {
        $('#main_panel').height($(window).height() - 200);
        $('#flowtree_container').height($(window).height() - 225);
        $('#route_panel').height($(window).height() - 225);
        var _dataService = abp.services.app.taskPhase;
        var treedata = $('#flow_list_data').val();
       
        //alert(dataEdit);
        $('#flowtree').treeview({
            data: treedata,
            showBorder: false,
            color: "#3F51B5",
            levels: 1,
            nodeIcon: 'glyphicon glyphicon-th-list',
            onNodeSelected: function (event, data) {
                // Your logic goes here
                //alert(data.code);
                $('#lb_flow_route').text('[' + data.code + ']');
                $('#txt_task_code').val(data.code);
                //var classId = data.id;
                _dataService.getMyTaskFlow(data.code).done(function (d) {
                    BindTable_100(d);
                });
            }
        });

        var table_100 = null;

        BindTable_100(null);

        function BindTable_100(data) {
            table_100 = $('#table_100').DataTable({
                data: data,
                destroy: true,
                searching: true,
                dom: 'Bftir',
                language: $.getDataTableLang(),
                buttons: $.getDataTableButtons(),
                deferRender: true,
                scrollY: $(window).height() - 310,
                scrollX: true,
                scrollCollapse: true,
                scroller: true,
                //lengthMenu: [10, 50, 100, 500],
                //使用对象数组，一定要配置columns，告诉 DataTables 每列对应的属性
                //data 这里是固定不变的，name，position，salary，office 为你数据里对应的属性
                columns: [
                    { data: 'phaseCode', width: '80px' },               
                    { data: 'phaseName', width: '80px' },
                    {
                        orderable: false,
                        bSortable: false,
                        data: "id",
                        width: '35px',
                        render: function (data, type, row, meta) {
                            var content = '<div style="text-align:center;" >';
                            content += '   <a href="#" class="waves-effect waves-block edit-phase-route" data-code="' + encodeURI(JSON.stringify(row)) + '"  data-toggle="modal" data-target="#MyFlowPhaseEditModal" ><i class="tiny material-icons">visibility</i></a>';

                            content += '</div>';
                            return content;
                        }
                    },
                    { data: 'actors' }                  
                ],
                initComplete: function () {
                    bindEditEvent();
                    $.setTableSelectedRowsCss('table_100');
                }
            });
        }

        function bindEditEvent() {
            $('.edit-phase-route').click(function (e) {
                e.preventDefault();
                var row = JSON.parse(decodeURI($(this).attr("data-code")));
                $.ajax({
                    url: abp.appPath + 'TaskFlow/Flow/EditMyFlowPhase?taskCode=' + row.taskCode+'&phaseCode='+row.phaseCode,
                    type: 'POST',
                    contentType: 'application/html',
                    success: function (content) {
                        $('#MyFlowPhaseEditModal div.modal-content').html(content);
                    },
                    error: function (e) { }
                });

            });
        }

        $('#MyFlowPhaseEditModal').on('hide.bs.modal', function () {
            var s = $(this).find(".save-button").hasClass('save-clicked');
            if (s) {                
                var code = $('#txt_task_code').val();                
                _dataService.getMyTaskFlow(code).done(function (d) {
                    BindTable_100(d);
                });
            }
        });
    });
})();