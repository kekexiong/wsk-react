<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>Metronic | General Components</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <jsp:include page="THead.jsp" flush="true" />
    <link rel="shortcut icon" href="favicon.ico" /> </head>

<body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-md">
<div class="page-header navbar navbar-fixed-top">
    <div class="page-header-inner ">
        <div class="page-logo">
            <h4 class="navbar-text font-white logo-default">测试系统</h4>
            <div class="menu-toggler sidebar-toggler">
                <span></span>
            </div>
        </div>
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
            <span></span>
        </a>
        <div class="top-menu">
            <ul class="nav navbar-nav pull-right">
                <li class="dropdown dropdown-extended dropdown-tasks" id="header_task_bar">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                        <i class="icon-calendar"></i>
                        <span class="badge badge-default"> 3 </span>
                    </a>
                    <ul class="dropdown-menu extended tasks">
                        <li class="external">
                            <h3>You have
                                <span class="bold">12 pending</span> tasks</h3>
                            <a href="app_todo.html">view all</a>
                        </li>
                        <li>
                            <ul class="dropdown-menu-list scroller" style="height: 275px;" data-handle-color="#637283">
                                <li>
                                    <a href="javascript:;">
                                                <span class="task">
                                                    <span class="desc">New release v1.2 </span>
                                                    <span class="percent">30%</span>
                                                </span>
                                        <span class="progress">
                                                    <span style="width: 40%;" class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">40% Complete</span>
                                                    </span>
                                                </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                                <span class="task">
                                                    <span class="desc">Application deployment</span>
                                                    <span class="percent">65%</span>
                                                </span>
                                        <span class="progress">
                                                    <span style="width: 65%;" class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">65% Complete</span>
                                                    </span>
                                                </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                                <span class="task">
                                                    <span class="desc">Mobile app release</span>
                                                    <span class="percent">98%</span>
                                                </span>
                                        <span class="progress">
                                                    <span style="width: 98%;" class="progress-bar progress-bar-success" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">98% Complete</span>
                                                    </span>
                                                </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                                <span class="task">
                                                    <span class="desc">Database migration</span>
                                                    <span class="percent">10%</span>
                                                </span>
                                        <span class="progress">
                                                    <span style="width: 10%;" class="progress-bar progress-bar-warning" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">10% Complete</span>
                                                    </span>
                                                </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                                <span class="task">
                                                    <span class="desc">Web server upgrade</span>
                                                    <span class="percent">58%</span>
                                                </span>
                                        <span class="progress">
                                                    <span style="width: 58%;" class="progress-bar progress-bar-info" aria-valuenow="58" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">58% Complete</span>
                                                    </span>
                                                </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                                <span class="task">
                                                    <span class="desc">Mobile development</span>
                                                    <span class="percent">85%</span>
                                                </span>
                                        <span class="progress">
                                                    <span style="width: 85%;" class="progress-bar progress-bar-success" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">85% Complete</span>
                                                    </span>
                                                </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                                <span class="task">
                                                    <span class="desc">New UI release</span>
                                                    <span class="percent">38%</span>
                                                </span>
                                        <span class="progress progress-striped">
                                                    <span style="width: 38%;" class="progress-bar progress-bar-important" aria-valuenow="18" aria-valuemin="0" aria-valuemax="100">
                                                        <span class="sr-only">38% Complete</span>
                                                    </span>
                                                </span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="dropdown dropdown-user">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                        <img alt="" class="img-circle" src="<%=request.getContextPath()%>/takin_theme/assets/layouts/layout/img/avatar3_small.jpg" />
                        <span class="username username-hide-on-mobile"> Nick </span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-default">
                        <li>
                            <a href="page_user_profile_1.html">
                                <i class="icon-user"></i> My Profile </a>
                        </li>
                        <li>
                            <a href="app_calendar.html">
                                <i class="icon-calendar"></i> My Calendar </a>
                        </li>
                        <li>
                            <a href="app_inbox.html">
                                <i class="icon-envelope-open"></i> My Inbox
                                <span class="badge badge-danger"> 3 </span>
                            </a>
                        </li>
                        <li>
                            <a href="app_todo.html">
                                <i class="icon-rocket"></i> My Tasks
                                <span class="badge badge-success"> 7 </span>
                            </a>
                        </li>
                        <li class="divider"> </li>
                        <li>
                            <a href="page_user_lock_1.html">
                                <i class="icon-lock"></i> Lock Screen </a>
                        </li>
                        <li>
                            <a href="page_user_login_1.html">
                                <i class="icon-key"></i> Log Out </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="clearfix"> </div>
<div class="page-container">
    <div class="page-sidebar-wrapper">
        <div class="page-sidebar navbar-collapse collapse">
            <ul class="page-sidebar-menu  page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
                <li class="sidebar-toggler-wrapper hide">
                    <div class="sidebar-toggler">
                        <span></span>
                    </div>
                </li>
                <li class="nav-item start ">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-home"></i>
                        <span class="title">Dashboard</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item start ">
                            <a href="index.html" class="nav-link ">
                                <i class="icon-bar-chart"></i>
                                <span class="title">Dashboard 1</span>
                            </a>
                        </li>
                        <li class="nav-item start ">
                            <a href="dashboard_2.html" class="nav-link ">
                                <i class="icon-bulb"></i>
                                <span class="title">Dashboard 2</span>
                                <span class="badge badge-success">1</span>
                            </a>
                        </li>
                        <li class="nav-item start ">
                            <a href="dashboard_3.html" class="nav-link ">
                                <i class="icon-graph"></i>
                                <span class="title">Dashboard 3</span>
                                <span class="badge badge-danger">5</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="heading">
                    <h3 class="uppercase">Features</h3>
                </li>
                <li class="nav-item  active open">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-diamond"></i>
                        <span class="title">UI Features</span>
                        <span class="selected"></span>
                        <span class="arrow open"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item  ">
                            <a href="ui_colors.html" class="nav-link ">
                                <span class="title">Color Library</span>
                            </a>
                        </li>
                        <li class="nav-item  active open">
                            <a href="ui_general.html" class="nav-link ">
                                <span class="title">General Components</span>
                                <span class="selected"></span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="javascript:;" class="nav-link nav-toggle">
                                <span class="title">Page Progress Bar</span>
                                <span class="arrow"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="nav-item ">
                                    <a href="ui_page_progress_style_1.html" class="nav-link "> Flash </a>
                                </li>
                                <li class="nav-item ">
                                    <a href="ui_page_progress_style_2.html" class="nav-link "> Big Counter </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </li>
                <li class="nav-item  ">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-puzzle"></i>
                        <span class="title">Components</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item  ">
                            <a href="components_ion_sliders.html" class="nav-link ">
                                <span class="title">Ion Range Sliders</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="components_noui_sliders.html" class="nav-link ">
                                <span class="title">NoUI Range Sliders</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="components_knob_dials.html" class="nav-link ">
                                <span class="title">Knob Circle Dials</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item  ">
                    <a href="javascript:;" class="nav-link nav-toggle">
                        <i class="icon-settings"></i>
                        <span class="title">Form Stuff</span>
                        <span class="arrow"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="nav-item  ">
                            <a href="form_controls.html" class="nav-link ">
                                        <span class="title">Bootstrap Form
                                            <br>Controls</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_controls_md.html" class="nav-link ">
                                        <span class="title">Material Design
                                            <br>Form Controls</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_validation.html" class="nav-link ">
                                <span class="title">Form Validation</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_validation_states_md.html" class="nav-link ">
                                        <span class="title">Material Design
                                            <br>Form Validation States</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_validation_md.html" class="nav-link ">
                                        <span class="title">Material Design
                                            <br>Form Validation</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_layouts.html" class="nav-link ">
                                <span class="title">Form Layouts</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_input_mask.html" class="nav-link ">
                                <span class="title">Form Input Mask</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_editable.html" class="nav-link ">
                                <span class="title">Form X-editable</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_wizard.html" class="nav-link ">
                                <span class="title">Form Wizard</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_icheck.html" class="nav-link ">
                                <span class="title">iCheck Controls</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_image_crop.html" class="nav-link ">
                                <span class="title">Image Cropping</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_fileupload.html" class="nav-link ">
                                <span class="title">Multiple File Upload</span>
                            </a>
                        </li>
                        <li class="nav-item  ">
                            <a href="form_dropzone.html" class="nav-link ">
                                <span class="title">Dropzone File Upload</span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <div class="page-content-wrapper">
        <jsp:include page="TUser.jsp" flush="true" />
    </div>
    <a href="javascript:;" class="page-quick-sidebar-toggler">
        <i class="icon-login"></i>
    </a>
</div>

<!--[if lt IE 9]>
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/respond.min.js"></script>
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/excanvas.min.js"></script>

<![endif]-->
<!-- 开始核心插件 BEGIN CORE PLUGINS 每个页面必有-->
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/js.cookie.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>

<!-- 主题全局脚本 app.js必有-->
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/scripts/app.min.js" type="text/javascript"></script>
<%--<script src="<%=request.getContextPath()%>/takin_theme/assets/pages/scripts/ui-modals.min.js" type="text/javascript"></script>--%>
<!-- 主题布局脚本 每个页面必有-->
<script src="<%=request.getContextPath()%>/takin_theme/assets/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/takin_theme/assets/layouts/layout/scripts/demo.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/takin_theme/assets/layouts/global/scripts/quick-sidebar.min.js" type="text/javascript"></script>

<%--弹出框插件--%>
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/bootbox/bootbox.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/bootbox/bootbox.locales.min.js" type="text/javascript"></script>
<!-- table js -->
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/takin_theme/assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<%--CONST调用处理原因 2020-02-13--%>
<script src="<%=request.getContextPath()%>common/js/constant.js" type="text/javascript"></script>


<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    ga('create', 'UA-37564768-1', 'keenthemes.com');
    ga('send', 'pageview');
</script>
<script type="text/javascript">
    bootbox.alert("This is the default alert!");
    //分页功能
    //分页默认隐藏
    $("#pagination-bar").hide();
    //每页多少条
    var limit = 0;
    //当前页
    var page = 1;
    //起始条
    var start = 0;
    //总页数
    var toalPage;
    //数据列表缓存
    var tableData;

    var importLimit = 0;

    var importPage = 1;

    var importStart = 0;

    var importTotalPage;

    /*function pageing(opp) {
        $(window.document).scrollTop(0, 500);
        limit = $("#limit  option:selected").text();
        if (opp == 'pro') {
            if (page > 1) {
                page = page - 1;
                start = (page - 1) * limit;
            } else {
                bootbox.alert('已经是第一页');
                return;
            }
        } else if (opp == 'next') {
            if (page == toalPage) {
                bootbox.alert('已经是最后一页');
                return;
            }
            page = page + 1;
            start = (page - 1) * limit;
        } else if (opp == 'last') {
            if (page == toalPage) {
                bootbox.alert('已经是最后一页');
                return;
            }
            page = $("#toalPage").text();
            if (page > toalPage) {
                bootbox.alert('对不起没有你要跳转的页面');
                return;
            } else if (page < 1) {
                bootbox.alert('对不起没有你要跳转的页面');
                return;
            }

            start = (page - 1) * limit;
        } else {
            if (page == 1 && opp == 1) {
                bootbox.alert('已经是第一页');
                return;
            }
            page = opp * 1;
            if (page > toalPage) {
                bootbox.alert('对不起没有你要跳转的页面');
                return;
            } else if (page < 1) {
                bootbox.alert('对不起没有你要跳转的页面');
                return;
            }
            start = (page - 1) * limit;
        }
        $('#queryMecGrid > tbody').empty();
        reloadGrid();
    }*/
    //全选列表数据
    function checkAll(checked) {
        $("#queryMecGrid tbody :checkbox").prop('checked', checked);
    }
    function onChange4PageSize(select) {
        limit = select.value;
        reloadGrid();
    }
    //初始化页面功能
    $(function(){
        //<!---------------------在此手动设置按钮的权限------------------------------->
        //if (!hasPermission(PERMISSSIONCONST.SES1002)) {$("#").hide();}
        //<!---------------------在此手动初始化页面表单审核状态数据源---------------------->
        <!--getComboStore系统表生成下拉框    参数说明1：传入值，用于下拉框回显，2下拉夸ID，3传入key值，4传入FALSE或者TRUE用于下拉框可选或者可读状态，FALSE下拉框可以不是disabled，TRUE是disabled状态-->
        <!--getCustomStore自定义下拉框    参数说明1：传入值，用于下拉框回显，2下拉夸ID，3传入FALSE或者TRUE用于下拉框可选或者可读状态，FALSE下拉框可以不是disabled，TRUE是disabled状态-->
        <!--如果不需要回显第一个参数传入""，如果不需要设定disabled属性传入FALSE-->
        //初始化输入框时间默认值方法
        initDefaultDate();
        //重置按钮
        $("#reset_btn").on('click', function() {
            $("#queryMecPanel_Form")[0].reset();
            //$("#queryMecPanel_Form .bs-select").selectpicker('val','');
            initDefaultDate();
        });
        //查询按钮
        $("#query_btn").on('click', function() {
            page = 1;
            reloadGrid();
        });
        //增加按钮 2020-2-12
        $("#add_btn").on('click', function() {
            $("#addOrUpdateWin").find('.modal-body input').val('');
            $("#hiddenType").val("1");
            var title = $("#addOrUpdateWin_title").html("用户添加信息");
            addOrUpdate("add","");
        });
        //修改按钮 2020-2-12
        $("#edit_btn").on('click', function() {
            var selectRocords = $("#queryMecGrid tbody input:checked");
            if (selectRocords.length != 1) {
                bootbox.alert("请选择一条数据");
                return;
            } else {
                var index = $(selectRocords[0]).attr("rownum");
                record = tableData.items[index];
            }
            $("#hiddenType").val("2");
            var title = $("#addOrUpdateWin_title").html("用户修改信息");
            addOrUpdate("update",record);
        });
        //添加保存按钮
        var param = {};
        $("#addform_save_btn").off('click').on('click', function() {
            param.name = $("#name_SHOW").val();
            param.age = $("#age_SHOW").val();
            param.tel = $("#tel_SHOW").val();
            var hiddenType = $("#hiddenType").val();
            var url = "";
            if("1" == hiddenType){
                url = "/demo/tUser/save";
                //url = baseURL + "/demo/tUser/save";
            }else if ("2" == hiddenType){
                //url = baseURL + "/demo/tUser/update";
                url = "/demo/tUser/update";
                param.uuid = $("#hiddenUUid").val();
            }else{
                url = "";
            }
            $.ajax({
                type: "POST",
                url: url,
                contentType: "application/x-www-form-urlencoded;charset=utf-8",
                data: param,
                dataType: "json",
                success:function(data){
                    if(data.timeout){
                        ajaxTimeout();
                    }
                    //bootbox.alert(data.msg);
                    bootbox.alert(data.msg);
                    $("#addOrUpdateWin").modal('hide');
                    reloadGrid();
                },
                error:function(){

                }
            });
        });
        //弹出页面取消按钮（添加/修改）
        $("#addform_cancel_btn").on('click',function(){
            $("#addOrUpdateWin").modal('hide');
        });
        //删除按钮
        $("#dele_btn").on('click', function() {
            var selectRocords = $("#queryMecGrid tbody input:checked");
            var uuids = "";
            if(selectRocords.length <= 0){
                bootbox.alert(CONST.TIP001);
                return;
            }else{
                for(i=0; i < selectRocords.length; i++){
                    var index = $(selectRocords[i]).attr("rownum");
                    record = tableData.items[index];
                    uuids += record.uuid+",";
                }
                uuids = uuids.substring(0, uuids.lastIndexOf(","));
                bootbox.confirm({
                    message: "选择了"+selectRocords.length+"条, 确认删除?",
                    buttons: {
                        cancel: {
                            label: '取消',
                            className: 'btn-danger'
                        },
                        confirm: {
                            label: '确认',
                            className: 'btn-success'
                        }
                    },
                    callback: function (truthBeTold) {
                        if(truthBeTold){
                            $.ajax({
                                type: "POST",
                                url: "/demo/tUser/deleteByUuid",
                                data:{
                                    uuids:uuids
                                },
                                contentType: "application/x-www-form-urlencoded;charset=utf-8",
                                dataType: "json",
                                success: function(data) {
                                    if(data.timeout){
                                        ajaxTimeout();
                                    }
                                    if (data.success) {
                                        bootbox.alert("操作成功!");
                                        reloadGrid();
                                    }else{
                                        bootbox.alert("操作失败！ "+data.msg);
                                    }
                                },
                                error: function(error) {
                                    bootbox.alert("操作失败!");
                                }
                            });
                        }else{
                            return;
                        }
                    }
                });
            }
        });
    });
    //添加或者修改方法
    function addOrUpdate(type,record){
        if("add" == type){
            $("#addOrUpdateWin").modal('show');
        }else if("update" == type){
            var param = {};
            param.uuid = record.uuid;
            $.ajax({
                type : "POST",
                url : "/demo/tUser/getDetail",
                data :param,
                contentType: "application/x-www-form-urlencoded;charset=utf-8",
                dataType : "json",
                success:function(data){
                    <!--修改页面展示字段-->
                    console.log(data.data);
                    $("#hiddenUUid").val(data.data.uuid);
                    $("#name_SHOW").val(data.data.name);
                    $("#age_SHOW").val(data.data.age);
                    $("#tel_SHOW").val(data.data.tel);
                    $("#addOrUpdateWin").modal('show');
                },
                error:function(){
                    bootbox.alert("操作失败，请重新操作！")
                }
            });
        }else{
            bootbox.alert("操作错误，请重新操作！");
            return;
        }
    }
    //下拉框码表中加载数据(使用系统表)
    function getComboStore(value,element,type_code,isdisabled) {
        $.ajax({
            type: "GET",
            url: baseURL+"/code/query/typ/" + type_code,
            contentType: "application/json;charset=utf-8",
            dataType: "json",
            success: function(data) {
                if(data.timeout){
                    ajaxTimeout();
                }
                $("#" + element).empty();
                $("#" + element).append($("<option></option>").val("").text("全部"));
                $.each(data, function(index, obj) {
                    $("#" + element).append($("<option></option>").val(obj.cdVl).text(obj.cdNm));
                });
                //更新内容刷新到相应的位置
                $("#" + element).selectpicker('render');
                $("#" + element).selectpicker('refresh');
                $("#" + element).selectpicker('val', value);
                if(isdisabled){
                    $("#" + element).attr('disabled', true);
                }
            },
            error: function(error) {
            }
        });
    }
    function initDefaultDate(){
        var myDate = new Date();
        var tempMonth;
        if(myDate.getMonth()<9){
            tempMonth = '0'+ (myDate.getMonth() + 1);
        }else{
            tempMonth = myDate.getMonth() + 1;
        }
        var tempDay;
        if(myDate.getDate()<=9){
            tempDay = '0'+ myDate.getDate();
        }else{
            tempDay = myDate.getDate();
        }
        var dateString = myDate.getFullYear()+"/"+tempMonth+"/"+tempDay;
    }
    //var queryInner_Path = baseURL + "/demo/tUser/query";
    var queryInner_Path = "/demo/tUser/query";
    //实现查询按钮方法
    function reloadGrid(){
        $('#queryMecGrid > tbody').empty();
        if(limit==0) {
            //默认20条
            limit=$("#limit").val();
        }
        start=(page-1)*limit;
        //获取筛选条件输入值
        var param = {page:page,start:start,limit:limit};
        param.name = $("#name").val();
        param.age = $("#age").val();
        param.tel = $("#tel").val();
        App.blockUI({target:"body",boxed:!0,message:"查询中，请稍后...",zIndex:12000});
        var table = $('#queryMecGrid').DataTable( {
            "pagingType": "full_numbers",
            "language": {
                "lengthMenu": "每页 _MENU_ 条记录",
                "zeroRecords": "没有找到记录",
                "info": "第 _PAGE_ 页 ( 总共 _MAX_ 条记录，共 _PAGES_ 页)",
                "infoEmpty": "无记录",
                "infoFiltered": "(从 _MAX_ 条记录过滤)",
                "paginate": {
                    "first": "首页",
                    "last": "末页",
                    "next": "下页",
                    "previous": "上页"
                }
            },
            "destroy": true
        });
        $.ajax({
            type: "POST",
            url: queryInner_Path,
            contentType: "application/x-www-form-urlencoded;charset=utf-8",
            data: param,
            dataType: "json",
            success:function(data){
                if(data.timeout){
                    ajaxTimeout();
                }
                toalPage=Math.ceil(data.totalCount/limit);
                $("#itemCount").text(data.totalCount);
                $("#nowpage").text(page);
                $("#toalPage").text(toalPage);
                if (toalPage < 2) {
                    $("#pagination").hide();
                } else {
                    $("#pagination").show();
                }
                tableData = $.extend(true, {}, data);
                table.clear().draw();
                $.each(data.items,function(index,obj){
                    var trData = [];
                    trData.push("<input type=\"checkbox\" class=\"checkboxes\" onclick=\"clickCheck(this)\" rownum=\""+index+"\" />");
                    trData.push(start + index + 1);
                    trData.push(obj.name);
                    trData.push(obj.age);
                    trData.push(obj.tel);
                    trData.push("<a href='javascript:void(0)'  onclick=view('"+obj.uuid+"')><i class='fa fa-search-plus'></i>查看</a>");
                    for(i=0; i < trData.length; i++){
                        if(trData[i] == undefined){
                            trData[i] = '';
                        }
                    }
                    table.row.add(trData).draw();
                });
                table.order([1, 'asc']).draw();
                $("#pagination-bar").show();
                if (page == 1) {
                    //first page
                    $("#pagination .prev a").css({'color':'gray','cursor':'not-allowed'});
                } else {
                    $("#pagination .prev a").css({'color':'#23527c','cursor':'pointer'});
                }
                if (page == toalPage) {
                    // last page
                    $("#pagination .next a").css({'color':'gray','cursor':'not-allowed'});
                } else {
                    $("#pagination .next a").css({'color':'#23527c','cursor':'pointer'});
                }
                $.unblockUI();
                $("#pagination-bar").hide();
                //动态设置iframe高度
                //var currentTabId = $("#tab-bar", parent.document).children('li.active').children('a').attr('href').replace('#tab_','');
                //setIframeHeight($('#frame_'+currentTabId,parent.document)[0]);
            },
            error:function(error){

            }
        });

    }
    //验证时间间隔方法
    function daysBetween(DateOne,DateTwo){
        var OneMonth = DateOne.substring(5,DateOne.lastIndexOf ('/'));
        var OneDay = DateOne.substring(DateOne.length,DateOne.lastIndexOf ('/')+1);
        var OneYear = DateOne.substring(0,DateOne.indexOf ('/'));

        var TwoMonth = DateTwo.substring(5,DateTwo.lastIndexOf ('/'));
        var TwoDay = DateTwo.substring(DateTwo.length,DateTwo.lastIndexOf ('/')+1);
        var TwoYear = DateTwo.substring(0,DateTwo.indexOf ('/'));

        var cha=((Date.parse(OneMonth+'/'+OneDay+'/'+OneYear)- Date.parse(TwoMonth+'/'+TwoDay+'/'+TwoYear))/86400000);
        return Math.abs(cha);
    }
    <!--操作链接点击事件-->
    function view(uuid){
        var param = {};
        param.uuid = uuid;
        $.ajax({
            type : "POST",
            url : "/demo/tUser/getDetail",
            data :param,
            contentType: "application/x-www-form-urlencoded;charset=utf-8",
            dataType : "json",
            success:function(data){
                console.log(data.data);
                $("#name_VIEW").val(data.data.name);
                $("#age_VIEW").val(data.data.age);
                $("#tel_VIEW").val(data.data.tel);
                /*document.getElementById('name_VIEW').value=data.data.name;
                document.getElementById('age_VIEW').value=data.data.age;
                document.getElementById('tel_VIEW').value=data.data.tel;*/
                $("#viewWin").modal('show');
            },
            error:function(){
                bootbox.alert("操作失败，请重新操作！")
            }
        });
    }
    //弹出页面取消按钮（详情）
    $("#openform_cancel_btn").on('click',function(){
        $("#viewWin").modal('hide');
    });
    function clickCheck(box) {
        if(!$(box).prop('checked')) {
            $(box).parents('tbody').siblings('thead').find(':checkbox').prop('checked',false);
        } else {
            var selectAll = true;
            $(box).parents('tbody').find(':checkbox').each(function() {
                if (!$(this).prop('checked')) {
                    selectAll = false;
                    return false;
                }
            });
            if (selectAll) {
                $(box).parents('tbody').siblings('thead').find(':checkbox').prop('checked',true);
            }
        }
    }
</script>
</body>
</html>