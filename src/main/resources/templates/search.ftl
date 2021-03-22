<!--
=========================================================
Material Dashboard - v2.1.2
=========================================================

Product Page: https://www.creative-tim.com/product/material-dashboard
Copyright 2020 Creative Tim (https://www.creative-tim.com)
Coded by Creative Tim

=========================================================
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml" xmlns="http://www.w3.org/1999/html">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="./img/apple-icon.png">
    <link rel="icon" type="image/png" href="./img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        企业需求搜索
    </title>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="/demo/demo.css" rel="stylesheet" />
</head>

<body class="">

<div class="wrapper ">
    <div class="sidebar" data-color="blue" data-background-color="white" data-image="./img/sidebar-1.jpg">
        <!--
          Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"
          Tip 2: you can also add an image using data-image tag
      -->
        <div class="logo"><a href="#" class="simple-text logo-normal">
                科技大数据检索查询系统
            </a></div>
        <div class="sidebar-wrapper">
            <ul class="nav">
                <li class="nav-item ">
                    <!--                    <a class="nav-link" href="./dashboard.html">-->
                    <a class="nav-link" href="#">
                        <i class="material-icons">dashboard</i>
                        <p>查询理论成果</p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="#">
                        <i class="material-icons">person</i>
                        <p>查询应用领域</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="material-icons">content_paste</i>
                        <p>搜索企业需求</p>
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/index">
                        <i class="material-icons">library_books</i>
                        <p>推荐企业需求</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg bg-blue" >
            <div class="container">
                <a class="navbar-brand" href="#" >推荐企业需求</a>
                <div class="collapse navbar-collapse" id="navbarNav">

                    <ul class="navbar-nav ml-auto">
                        <#if loginExpert??>
                            <li>
                                <a class="nav-link" href="/logout" style="display:inline" id="personLink"><i class="material-icons">person</i></a>
                            </li>
                        <#else>
                            <li class="nav-item">
                                <a class="nav-link" href="/register" id="registerLink">注册</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/login" id="loginLink">登录</a>
                            </li>
                        </#if>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- End Navbar -->
        <div class="content_NoMargin">
            <div class="container-fluid">
                <div class="card">
                    <!--企业需求搜索的标题-->
                    <div class="row">
                        <div class="col-md-4">
                        </div>
                        <div class="col-md-4">
                            <div class="typography-line">
                                <h2 class="text-center">
                                    根据搜索学者库注册用户
                                </h2>
                            </div>

                        </div>
                        <div class="col-md-4">
                        </div>
                    </div>
                    <!--企业需求搜索的标题-->

                    <!--搜索框那一栏-->
                    <div class="row">
                        <div class="col-md-3 dropdown ">
                            <a href="#" class="btn btn-blue dropdown-toggle pull-right" data-toggle="dropdown">
                                需求主题
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu">
                                <button class="dropdown-item" type="button">关键词</button>
                                <button class="dropdown-item" type="button">需求来源</button>
                                <button class="dropdown-item" type="button">需求类型</button>
                            </ul>
                        </div>

                        <div class="col-md-9">
                            <form method="get" action="/search">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="form-group">
                                            <input id="name" name="name" type="text" class="form-control" placeholder="" value="<#if s_name ??>${s_name}</#if>">

                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <button class="btn btn-blue" type="submit">搜索一下</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!--搜索框那一栏-->

                </div>






                <!--搜索结果-->
                <div>
                    <div class="row">
                        <#if search_scholar_info_list ??>
                            <#list search_scholar_info_list as scholar_info>
                                <div class="col-md-4">
                                    <div class="card card-profile">
                                        <div class="card-avatar">
                                            <a href="javascript:;">
                                                <img class="img" src="../img/faces/xuezhe.jpg" />
                                            </a>
                                        </div>
                                        <div class="card-body" style="height: 290px;">
                                            <h6 class="card-category">${scholar_info.scholar_post}</h6>
<#--                                            <h4 class="card-title"><a href="/info?s_id=${scholar_info.scholar_id}"> ${scholar_info.scholar_name}</a></h4>-->
                                            <#if scholar_info.password??>
                                                <h4 class="card-title"><a href="/login"> ${scholar_info.scholar_name}</a></h4>
                                            <#else>
                                                <h4 class="card-title"><a href="/myregister?s_id=${scholar_info.scholar_id?c}"> ${scholar_info.scholar_name}</a></h4>
                                            </#if>
                                            <h6 class="card-category">${scholar_info.scholar_institution}</h6>
                                            <p>
                                                <#if (scholar_info.scholar_description??&&scholar_info.scholar_description?length>150)>
                                                    ${scholar_info.scholar_description?substring(0, 149)}...
                                                <#else>
                                                    ${scholar_info.scholar_description}
                                                </#if>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </#list>
                        </#if>

                    </div>
                    <!--分页组件-->


                </div>
            </div>
        </div>
    </div>
</div>

<!--   Core JS Files   -->
<script src="/js/core/jquery.min.js"></script>
<script src="/js/core/popper.min.js"></script>
<script src="/js/core/bootstrap-material-design.min.js"></script>
<script src="/js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!-- Plugin for the momentJs  -->
<script src="/js/plugins/moment.min.js"></script>
<!--  Plugin for Sweet Alert -->
<script src="/js/plugins/sweetalert2.js"></script>
<!-- Forms Validations Plugin -->
<script src="/js/plugins/jquery.validate.min.js"></script>
<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="/js/plugins/jquery.bootstrap-wizard.js"></script>
<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="/js/plugins/bootstrap-selectpicker.js"></script>
<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="/js/plugins/bootstrap-datetimepicker.min.js"></script>
<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
<script src="/js/plugins/jquery.dataTables.min.js"></script>
<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="/js/plugins/bootstrap-tagsinput.js"></script>
<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="/js/plugins/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="/js/plugins/fullcalendar.min.js"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="/js/plugins/jquery-jvectormap.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="/js/plugins/nouislider.min.js"></script>
<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
<!-- Library for adding dinamically elements -->
<script src="/js/plugins/arrive.min.js"></script>
<!-- Chartist JS -->
<script src="/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<script src="/js/material-dashboard.js?v=2.1.2" type="text/javascript"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="/demo/demo.js"></script>
<script src="/js/echarts.min.js"></script>










</body>

</html>