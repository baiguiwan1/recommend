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
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../img/apple-icon.png">
    <link rel="icon" type="image/png" href="../img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
        Material Dashboard by Creative Tim
    </title>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
    <!-- CSS Files -->
    <link href="/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="../demo/demo.css" rel="stylesheet" />
</head>

<body class="">
<div class="wrapper ">
    <div class="sidebar" data-color="blue" data-background-color="white" data-image="../img/sidebar-1.jpg">
        <div class="logo"><a href="http://www.creative-tim.com" class="simple-text logo-normal">
                科技大数据检索查询系统
            </a></div>
        <div class="sidebar-wrapper">
            <ul class="nav">
                <li class="nav-item ">
                    <a class="nav-link" href="#">
                        <i class="material-icons">dashboard</i>
                        <p>查询理论成果</p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="#">
                        <i class="material-icons">content_paste</i>
                        <p>查询应用领域</p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="#">
                        <i class="material-icons">library_books</i>
                        <p>搜索企业需求</p>
                    </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="/index">
                        <i class="material-icons">bubble_chart</i>
                        <p>推荐企业需求</p>
                    </a>
                </li>

            </ul>
        </div>
    </div>
    <div class="main-panel">
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg bg-blue">
            <div class="container">
                <a class="navbar-brand" href="#">推荐企业需求</a>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-auto">
                        <#if loginExpert??>
                            <li>
                                <a class="nav-link" href="/logout" style="display:inline" id="personLink"><i class="material-icons">person</i>${loginExpert.scholar_nickname}</a>
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
        <!--End Modal-->
        <div class="content">
            <div class="container-fluid">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-tabs card-header-blue">
                            <div class="nav-tabs-navigation">
                                <div class="nav-tabs-wrapper">
                                    <span class="nav-tabs-title">个性化推荐</span>
                                    <ul class="nav nav-tabs" data-tabs="tabs">
                                        <li class="nav-item">
                                            <a class="nav-link active" href="#profile" data-toggle="tab">
                                                <i class="material-icons">bug_report</i> 企业需求
                                                <div class="ripple-container"></div>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#settings" data-toggle="tab">
                                                <i class="material-icons">cloud</i> 需求趋势分析
                                                <div class="ripple-container"></div>
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="#messages" data-toggle="tab">
                                                <i class="material-icons">code</i> 科技资讯
                                                <div class="ripple-container"></div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="tab-content">
                                <div class="tab-pane active" id="profile">
<#--                                    <h4>向科研人员推荐企业需求信息</h4>-->
                                    <br/>
                                    <!-- End Navbar -->
                                    <div class="content">
                                        <div class="container-fluid">
<#--                                            <div class="row">-->
<#--                                                <div class="col-md-12">-->
<#--                                                    <div class="card card-profile">-->
<#--                                                        <div class="card-avatar">-->
<#--                                                            <a href="javascript:;">-->
<#--                                                                <img class="img" src="../img/faces/xuezhe.jpg" />-->
<#--                                                            </a>-->
<#--                                                        </div>-->
<#--                                                        <div class="card-body" style="height: 190px">-->
<#--                                                            <h5 class="card-category"><#if sch_post??>${sch_post}<#else>未填写职称</#if></h5>-->

<#--                                                            <h4 class="card-title"><#if sch_name??>${sch_name}<#else>未实名</#if></h4>-->
<#--                                                            <h5 class="card-category"><#if sch_institution??>${sch_institution}<#else>未填写机构/学校名</#if></h5>-->

<#--                                                        </div>-->
<#--                                                    </div>-->
<#--                                                </div>-->
<#--                                                <div class="col-md-12">-->
<#--                                                    <div class="card">-->
<#--                                                        <div class="card-header">-->
<#--                                                            <h4 class="card-title">个人简介</h4>-->
<#--                                                        </div>-->
<#--                                                        <div class="card-body">-->
<#--                                                            <p>-->
<#--                                                                <#if sch_description??>-->
<#--                                                                    ${sch_description}-->
<#--                                                                <#else>-->
<#--                                                                    暂无个人简介-->
<#--                                                                </#if>-->
<#--&lt;#&ndash;                                                                <#if sch_description??>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <#if (sch_description??&&sch_description?length>150)>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                        ${sch_description?substring(0, 149)}...&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <#else>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                        ${sch_description}&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    </#if>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                <#else>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    暂无个人简介&ndash;&gt;-->
<#--&lt;#&ndash;                                                                </#if>&ndash;&gt;-->

<#--                                                            </p>-->
<#--                                                        </div>-->
<#--                                                    </div>-->
<#--                                                </div>-->
<#--&lt;#&ndash;                                                <div class="col-md-4">&ndash;&gt;-->
<#--&lt;#&ndash;                                                    <div class="card">&ndash;&gt;-->
<#--&lt;#&ndash;                                                        <div class="card-header">&ndash;&gt;-->
<#--&lt;#&ndash;                                                            <h4 class="card-title">发表论文</h4>&ndash;&gt;-->
<#--&lt;#&ndash;                                                        </div>&ndash;&gt;-->
<#--&lt;#&ndash;                                                        <div class="card-body" style="height: 330px;">&ndash;&gt;-->
<#--&lt;#&ndash;                                                            <table class="table">&ndash;&gt;-->
<#--&lt;#&ndash;                                                                <thead>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                <tr>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <th class="text-center">#</th>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <th>论文标题</th>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <th class="text-right">年份</th>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                </tr>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                </thead>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                <tbody>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                <tr>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td class="text-center">1</td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                        <a href="#0" class="card-link text-blue">Learning With Interpretable Structure...</a>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    </td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td class="text-right">2020</td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                </tr>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                <tr>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td class="text-center">2</td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                        <a href="#0" class="card-link text-blue">Control Flow Graph Embedding based...</a>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    </td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td class="text-right">2020</td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                </tr>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                <tr>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td class="text-center">3</td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                        <a href="#0" class="card-link text-blue">Optimal Margin Distribution Machine...</a>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    </td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td class="text-right">2019</td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                </tr>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                <tr>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td class="text-center">4</td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                        <a href="#0" class="card-link text-blue">Learning to Generate Posters of...</a>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    </td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td class="text-right">2019</td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                </tr>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                <tr>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td class="text-center">5</td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                        <a href="#0" class="card-link text-blue">Unsupervised Object Discovery and Co...</a>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    </td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                    <td class="text-right">2019</td>&ndash;&gt;-->
<#--&lt;#&ndash;                                                                </tr>&ndash;&gt;-->

<#--&lt;#&ndash;                                                                </tbody>&ndash;&gt;-->
<#--&lt;#&ndash;                                                            </table>&ndash;&gt;-->
<#--&lt;#&ndash;                                                        </div>&ndash;&gt;-->
<#--&lt;#&ndash;                                                    </div>&ndash;&gt;-->
<#--&lt;#&ndash;                                                </div>&ndash;&gt;-->
<#--                                            </div>-->
                                            <br/>
                                            <h4>
                                                给科研人员个性化推荐的企业需求
                                            </h4>
                                            <br/>
                                            <div>
                                                <div style="width:70%;float:left;">
                                                    <#if myDemand_list??>
                                                        <#list myDemand_list as item>
                                                            <div class="col-md-12" data-name="box"  style="float: left">
                                                                <div class="card">
                                                                    <div class="card-header card-header-text card-header-blue">
                                                                        <div class="card-text">
                                                                            <h4 class="card-title">
                                                                                ${item_index+1}.
<#--                                                                                <#if (item.demand_title??&&item.demand_title?length>15)>-->
<#--                                                                                    ${item.demand_title?substring(0,14)}...-->
<#--                                                                                <#else>-->
                                                                                    ${item.demand_title}

<#--                                                                                </#if>-->
                                                                            </h4>
                                                                        </div>
                                                                    </div>
                                                                    <div class="card-body">
                                                                        <h4 class="header-title">${item.company_name}</h4>
                                                                        <p class="card-text" style="width: 95%;">
                                                                            <#if (item.demand_detail??&&item.demand_detail?length>200)>
                                                                                ${item.demand_detail?substring(0,199)}...
                                                                            <#else>
                                                                                ${item.demand_detail}
                                                                            </#if>
                                                                        </p>

                                                                        <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#demand${item.id}">
                                                                            了解更多
                                                                        </button>

                                                                        <!-- Modal -->
                                                                        <div class="modal fade" id="demand${item.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                                                            <div class="modal-dialog" role="document">
                                                                                <div class="modal-content">
                                                                                    <div class="modal-header">
                                                                                        <h5 class="modal-title" id="exampleModalLongTitle">需求详情</h5>
                                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                            <span aria-hidden="true">&times;</span>
                                                                                        </button>
                                                                                    </div>
                                                                                    <div class="modal-body">
                                                                                        <h5 class="header-title">需求名称</h5>
                                                                                        <p class="card-text">
                                                                                            ${item.demand_title}
                                                                                        </p>
                                                                                        <h5 class="header-title">拟投资规模</h5>
                                                                                        <p class="card-text">
                                                                                            ${item.money}
                                                                                        </p>
                                                                                        <h5 class="header-title">行业领域</h5>
                                                                                        <p class="card-text">
                                                                                            ${item.category}
                                                                                        </p>
                                                                                        <h5 class="header-title">联系方式</h5>
                                                                                        <p class="card-text">
                                                                                            ${item.phone}
                                                                                        </p>
                                                                                        <h5 class="header-title">时间</h5>
                                                                                        <p class="card-text">
                                                                                            ${item.create_time?string('dd.MM.yyyy')}
                                                                                        </p>
                                                                                        <h5 class="header-title">技术需求方式</h5>
                                                                                        <p class="card-text">
                                                                                            &nbsp;&nbsp;&nbsp;&nbsp;${item.demand_detail}
                                                                                        </p>


                                                                                    </div>
                                                                                    <div class="modal-footer">
                                                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                                                                                        <button type="button" class="btn btn-blue">发送合作消息</button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </#list>
                                                    <#else>
                                                        暂无推荐
                                                    </#if>
                                                </div>
                                                <div style="width: 30%;float: right;">
                                                    <div class="col-md-12">
                                                        <div class="card card-profile">
                                                            <div class="card-avatar">
                                                                <a href="javascript:;">
                                                                    <img class="img" src="../img/faces/xuezhe.jpg" />
                                                                </a>
                                                            </div>
                                                            <div class="card-body">
                                                                <h5 class="card-category"><#if sch_post??>${sch_post}<#else>未填写职称</#if></h5>

                                                                <h4 class="card-title"><#if sch_name??>${sch_name}<#else>未实名</#if></h4>
                                                                <h5 class="card-category"><#if sch_institution??>${sch_institution}<#else>未填写机构/学校名</#if></h5>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h4 class="card-title">个人简介</h4>
                                                            </div>
                                                            <div class="card-body">
                                                                <p>
                                                                    <#if sch_description??>
                                                                        ${sch_description}
                                                                    <#else>
                                                                        暂无个人简介
                                                                    </#if>
                                                                    <#--                                                                <#if sch_description??>-->
                                                                    <#--                                                                    <#if (sch_description??&&sch_description?length>150)>-->
                                                                    <#--                                                                        ${sch_description?substring(0, 149)}...-->
                                                                    <#--                                                                    <#else>-->
                                                                    <#--                                                                        ${sch_description}-->
                                                                    <#--                                                                    </#if>-->
                                                                    <#--                                                                <#else>-->
                                                                    <#--                                                                    暂无个人简介-->
                                                                    <#--                                                                </#if>-->

                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="settings" >
                                    <div class="content">
                                        <div class="container-fluid">
                                            <br/>
                                            <h4>
                                                给科研人员个性化推荐的需求趋势分析
                                            </h4>
                                            <br/>
                                            <div class="col-md-12">
                                                <div class="card">
                                                    <div class="card-header card-header-tabs card-header-blue">
                                                        <div class="nav-tabs-navigation">
                                                            <div class="nav-tabs-wrapper">
                                                                <span class="nav-tabs-title">行业图表推荐</span>
                                                                <ul class="nav nav-tabs" data-tabs="tabs">
                                                                    <#if categoryInfoList??>
                                                                        <#list categoryInfoList as categoryInfo>
                                                                            <li class="nav-item">
                                                                                <a class="nav-link <#if categoryInfo_index==0>active</#if>" href="#settings_<#if categoryInfo??>${categoryInfo.dcategoryId?c}<#else>10000</#if>" data-toggle="tab">
                                                                                    <i class="material-icons">cloud</i><#if categoryInfo??>${categoryInfo.dcategory}<#else>制造业</#if>
                                                                                    <div class="ripple-container"></div>
                                                                                </a>
                                                                            </li>
                                                                        </#list>
                                                                    <#else>
                                                                        <li class="nav-item">
                                                                            <a class="nav-link" href="#settingsall" data-toggle="tab">
                                                                                <i class="material-icons">cloud</i> 各行业热点趋势分析
                                                                                <div class="ripple-container"></div>
                                                                            </a>
                                                                        </li>
                                                                    </#if>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="card-body">
                                                        <div class="tab-content">
                                                            <#if categoryInfoList??>
                                                                <#list categoryInfoList as categoryInfo>
                                                                    <div class="tab-pane <#if categoryInfo_index==0>active</#if>" id="settings_<#if categoryInfo??>${categoryInfo.dcategoryId?c}<#else>10000</#if>">
                                                                        <div class="card card-collapse">
                                                                            <div class="card-header" role="tab" id="headingTwo">
                                                                                <h5 class="mb-0">
                                                                                    <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                                                                                        <#if categoryInfo??>${categoryInfo.dcategory}<#else>制造业</#if>应用热点趋势分析
                                                                                        <i class="material-icons">keyboard_arrow_down</i>
                                                                                    </a>
                                                                                </h5>
                                                                            </div>
                                                                            <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                                                                <div class="card-body">
                                                                                    <div id="settings_main_line<#if categoryInfo??>${categoryInfo.dcategoryId?c}<#else>10000</#if>" style="width: 800px;height:400px;margin:0 auto;">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-12">
                                                                                <div class="card">
                                                                                    <div class="card-header card-header-tabs card-header-blue">
                                                                                        <h5 class="card-title"><#if categoryInfo??>${categoryInfo.dcategory}<#else>制造业</#if>应用热点趋势分析</h5>
                                                                                    </div>
                                                                                    <div class="card-body">
                                                                                        <div id="settings_main_line<#if categoryInfo??>${categoryInfo.dcategoryId?c}<#else>10000</#if>" style="width: 800px;height:400px;margin:0 auto;">
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col-md-12">
                                                                                <div class="card">
                                                                                    <div class="card-header card-header-tabs card-header-blue">
                                                                                        <h5 class="card-title"><#if categoryInfo??>${categoryInfo.dcategory}<#else>制造业</#if>技术热词分析</h5>
                                                                                    </div>
                                                                                    <div class="card-body">
                                                                                        <#if categoryInfo??>
                                                                                            <#list themes_list[categoryInfo_index] as item>
                                                                                                <#if item_index%2==0>
                                                                                                    <div class="row">
                                                                                                </#if>
                                                                                                <div class="col-md-6">
                                                                                                    <div class="card">
                                                                                                        <div class="card-header card-header-tabs card-header-blue">
                                                                                                            <h4 class="card-title">${item!""}</h4>
                                                                                                        </div>
                                                                                                        <div class="card-body">
                                                                                                            <div id="settings_main${categoryInfo.dcategoryId?c}_${item_index?c}" style="width: 400px;height:400px;margin:0 auto;">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <#if item_index%2==1||themes_length[categoryInfo_index]==item_index>
                                                                                                    </div>
                                                                                                </#if>
                                                                                            </#list>
                                                                                        <#else>
                                                                                            <div class="row">
                                                                                                <div class="col-md-6">
                                                                                                    <div class="card">
                                                                                                        <div class="card-header card-header-tabs card-header-blue">
                                                                                                            <h4 class="card-title">自动化</h4>
                                                                                                        </div>
                                                                                                        <div class="card-body">
                                                                                                            <div id="settings_main10000_0" style="width: 400px;height:400px;margin:0 auto;">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <div class="card">
                                                                                                        <div class="card-header card-header-tabs card-header-blue">
                                                                                                            <h4 class="card-title">控制技术</h4>
                                                                                                        </div>
                                                                                                        <div class="card-body">
                                                                                                            <div id="settings_main10000_1" style="width: 400px;height:400px;margin:0 auto;">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="row">
                                                                                                <div class="col-md-6">
                                                                                                    <div class="card">
                                                                                                        <div class="card-header card-header-tabs card-header-blue">
                                                                                                            <h4 class="card-title">机器人</h4>
                                                                                                        </div>
                                                                                                        <div class="card-body">
                                                                                                            <div id="settings_main10000_2" style="width: 400px;height:400px;margin:0 auto;">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <div class="card">
                                                                                                        <div class="card-header card-header-tabs card-header-blue">
                                                                                                            <h5 class="card-title">高新技术</h5>
                                                                                                        </div>
                                                                                                        <div class="card-body">
                                                                                                            <div id="settings_main10000_3" style="width: 400px;height:400px;margin:0 auto;">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="row">
                                                                                                <div class="col-md-6">
                                                                                                    <div class="card">
                                                                                                        <div class="card-header card-header-tabs card-header-blue">
                                                                                                            <h5 class="card-title">智能化</h5>
                                                                                                        </div>
                                                                                                        <div class="card-body">
                                                                                                            <div id="settings_main10000_4" style="width: 400px;height:400px;margin:0 auto;">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <div class="card">
                                                                                                        <div class="card-header card-header-tabs card-header-blue">
                                                                                                            <h5 class="card-title">热处理</h5>
                                                                                                        </div>
                                                                                                        <div class="card-body">
                                                                                                            <div id="settings_main10000_5" style="width: 400px;height:400px;margin:0 auto;">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="row">
                                                                                                <div class="col-md-6">
                                                                                                    <div class="card">
                                                                                                        <div class="card-header card-header-tabs card-header-blue">
                                                                                                            <h5 class="card-title">不锈钢</h5>
                                                                                                        </div>
                                                                                                        <div class="card-body">
                                                                                                            <div id="settings_main10000_6" style="width: 400px;height:400px;margin:0 auto;">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-6">
                                                                                                    <div class="card">
                                                                                                        <div class="card-header card-header-tabs card-header-blue">
                                                                                                            <h5 class="card-title">全自动</h5>
                                                                                                        </div>
                                                                                                        <div class="card-body">
                                                                                                            <div id="settings_main10000_7" style="width: 400px;height:400px;margin:0 auto;">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </#if>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </#list>
                                                            <#else>
                                                                <div class="tab-pane" id="settingsall">
                                                                    <div class="row">
                                                                        <div class="col-md-12">
                                                                            <div class="card">
                                                                                <div class="card-header card-header-tabs card-header-blue">
                                                                                    <h5 class="card-title">各行业热点趋势分析</h5>
                                                                                </div>
                                                                                <div class="card-body">
                                                                                    <div id="settings_main_lineall" style="width: 900px;height:450px;margin:0 auto;">
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </#if>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane" id="messages">
                                    <br/>
                                    <!-- End Navbar -->
                                    <div class="content">
                                        <div class="container-fluid">
                                            <br/>
                                            <h4>
                                                给科研人员个性化推荐的科技资讯
                                            </h4>
                                            <br/>
                                            <div>
                                                <div style="width:70%;float:left;">
                                                    <#if myScience_Info??>
                                                        <#list myScience_Info as item>
                                                            <div class="col-md-12" data-name="box"  style="float: left">
                                                                <div class="card">
                                                                    <div class="card-header card-header-text card-header-blue">
                                                                        <div class="card-text">
                                                                            <h4 class="card-title">
                                                                                ${item_index+1}.
                                                                                ${item.title}
                                                                                <#--                                                                            <#if (item.title??&&item.title?length>60)>-->
                                                                                <#--                                                                                ${item.title?substring(0,59)}...-->
                                                                                <#--                                                                            <#else>-->
                                                                                <#--                                                                                ${item.title}-->
                                                                                <#--                                                                            </#if>-->
                                                                            </h4>
                                                                        </div>
                                                                    </div>
                                                                    <div class="card-body">
                                                                        <h5 class="header-title">快科技</h5>
                                                                        <p class="card-text" style="width: 95%;">
<#--                                                                            <#if (item.description??&&item.description?length>80)>-->
<#--                                                                                ${item.description?substring(0,79)}...-->
<#--                                                                            <#else>-->
                                                                                ${item.description}

<#--                                                                            </#if>-->
                                                                        </p>
                                                                        <p class="card-text">
                                                                            时间：${item.time}
                                                                        </p>
                                                                        <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#sci_info${item.information_id}">
                                                                            阅读全文
                                                                        </button>

                                                                        <!-- Modal -->
                                                                        <div class="modal fade" id="sci_info${item.information_id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                                                            <div class="modal-dialog" role="document">
                                                                                <div class="modal-content">
                                                                                    <div class="modal-header">
                                                                                        <h5 class="modal-title" id="exampleModalLongTitle">文章全文</h5>
                                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                            <span aria-hidden="true">&times;</span>
                                                                                        </button>
                                                                                    </div>
                                                                                    <div class="modal-body">
                                                                                        <h5 class="header-title">${item.title}</h5>
                                                                                        <h6 class="header-title"><#if item.sort??>${item.sort}</#if></h6>


                                                                                        <p class="card-text">
                                                                                            &nbsp;&nbsp;&nbsp;&nbsp;${item.text}
                                                                                        </p>


                                                                                    </div>
                                                                                    <div class="modal-footer">
                                                                                        <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button> -->
                                                                                        <button type="button" class="btn btn-blue" data-dismiss="modal">阅读完毕</button>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </#list>
                                                    <#else>
                                                        暂无科技咨询推荐
                                                    </#if>
                                                </div>
                                                <div style="width: 30%;float:right;">
                                                    <div class="col-md-12">
                                                        <div class="card card-profile">
                                                            <div class="card-avatar">
                                                                <a href="javascript:;">
                                                                    <img class="img" src="../img/faces/xuezhe.jpg" />
                                                                </a>
                                                            </div>
                                                            <div class="card-body">
                                                                <h5 class="card-category"><#if sch_post??>${sch_post}<#else>未填写职称</#if></h5>

                                                                <h4 class="card-title"><#if sch_name??>${sch_name}<#else>未实名</#if></h4>
                                                                <h5 class="card-category"><#if sch_institution??>${sch_institution}<#else>未填写机构/学校名</#if></h5>

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h4 class="card-title">个人简介</h4>
                                                            </div>
                                                            <div class="card-body">
                                                                <p>
                                                                    <#if sch_description??>
                                                                        ${sch_description}
                                                                    <#else>
                                                                        暂无个人简介
                                                                    </#if>
                                                                    <#--                                                                <#if sch_description??>-->
                                                                    <#--                                                                    <#if (sch_description??&&sch_description?length>150)>-->
                                                                    <#--                                                                        ${sch_description?substring(0, 149)}...-->
                                                                    <#--                                                                    <#else>-->
                                                                    <#--                                                                        ${sch_description}-->
                                                                    <#--                                                                    </#if>-->
                                                                    <#--                                                                <#else>-->
                                                                    <#--                                                                    暂无个人简介-->
                                                                    <#--                                                                </#if>-->

                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="footer">
    <div class="container-fluid">
        <nav class="float-left">
            <ul>
                <li>
                    <a href="https://www.creative-tim.com">
                        Creative Tim
                    </a>
                </li>
                <li>
                    <a href="https://creative-tim.com/presentation">
                        About Us
                    </a>
                </li>
                <li>
                    <a href="http://blog.creative-tim.com">
                        Blog
                    </a>
                </li>
                <li>
                    <a href="https://www.creative-tim.com/license">
                        Licenses
                    </a>
                </li>
            </ul>
        </nav>
        <div class="copyright float-right">
            &copy;
            <script>
                document.write(new Date().getFullYear())
            </script>, made with <i class="material-icons">favorite</i> by
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
        </div>
    </div>
</footer>

<script src="./js/core/jquery.min.js"></script>
<script src="./js/echarts.js"></script>
<script src="./js/echarts.min.js"></script>
<script src="./js/echarts-wordcloud.min.js"></script>
<!-- 引入 vintage 主题 -->
<script type="text/javascript" src="./js/dataTool.min.js"></script>
<script src="./js/jquery-3.3.1.min.js"></script>

<script>
    $(window).on('load', function () {
        $('#usertype').selectpicker({
            'selectedText': 'cat'
        });
    });
</script>

<script>
    var myChartall = echarts.init(document.getElementById("settings_main_lineall"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_countall.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;
        var c2 = data.data1;
        var c3 = data.data2;
        var c4 = data.data3;
        var c5 = data.data4;
        var c6 = data.data5;
        var c7 = data.data6;
        var c8 = data.data7;
        var c9 = data.data8;
        var c10 = data.data9;
        var c11 = data.data10;

        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c2[j], a[1]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c3[j], a[2]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c4[j], a[3]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c5[j], a[4]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c6[j], a[5]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c7[j], a[6]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c8[j], a[7]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c9[j], a[8]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c10[j], a[9]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c11[j], a[10]
            ]);
        }
        myChartall.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChartall.setOption(option);
</script>
<script>
    var myChart10000 = echarts.init(document.getElementById("settings_main_line10000"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_count10000.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;
        var c2 = data.data1;
        var c3 = data.data2;
        var c4 = data.data3;
        var c5 = data.data4;
        var c6 = data.data5;
        var c7 = data.data6;
        var c8 = data.data7;
        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c2[j], a[1]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c3[j], a[2]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c4[j], a[3]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c5[j], a[4]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c6[j], a[5]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c7[j], a[6]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c8[j], a[7]
            ]);
        }
        myChart10000.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChart10000.setOption(option);
</script>
<script>
    var myChart10001 = echarts.init(document.getElementById("settings_main_line10001"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_count10001.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;
        var c2 = data.data1;
        var c3 = data.data2;
        var c4 = data.data3;
        var c5 = data.data4;
        var c6 = data.data5;

        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c2[j], a[1]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c3[j], a[2]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c4[j], a[3]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c5[j], a[4]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c6[j], a[5]
            ]);
        }
        myChart10001.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChart10001.setOption(option);
</script>
<script>
    var myChart10002 = echarts.init(document.getElementById("settings_main_line10002"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_count10002.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;
        var c2 = data.data1;
        var c3 = data.data2;
        var c4 = data.data3;
        var c5 = data.data4;


        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c2[j], a[1]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c3[j], a[2]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c4[j], a[3]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c5[j], a[4]
            ]);
        }

        myChart10002.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChart10002.setOption(option);
</script>
<script>
    var myChart10003 = echarts.init(document.getElementById("settings_main_line10003"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_count10003.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;
        var c2 = data.data1;
        //var c3 = data.data2;

        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c2[j], a[1]
            ]);
        }
        // for (var j = 0; j < b.length; j++) {
        //     datalist.push([
        //         b[j], c3[j], a[2]
        //     ]);
        // }

        myChart10003.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChart10003.setOption(option);
</script>
<script>
    var myChart10004 = echarts.init(document.getElementById("settings_main_line10004"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_count10004.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;
        var c2 = data.data1;
        var c3 = data.data2;
        var c4 = data.data3;
        var c5 = data.data4;
        var c6 = data.data5;

        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c2[j], a[1]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c3[j], a[2]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c4[j], a[3]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c5[j], a[4]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c6[j], a[5]
            ]);
        }

        myChart10004.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChart10004.setOption(option);
</script>
<script>
    var myChart10005 = echarts.init(document.getElementById("settings_main_line10005"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_count10005.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;

        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }

        myChart10005.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChart10005.setOption(option);
</script>
<script>
    var myChart10006 = echarts.init(document.getElementById("settings_main_line10006"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_count10006.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;
        var c2 = data.data1;
        //var c3 = data.data2;

        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c2[j], a[1]
            ]);
        }
        // for (var j = 0; j < b.length; j++) {
        //     datalist.push([
        //         b[j], c3[j], a[2]
        //     ]);
        // }

        myChart10006.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChart10006.setOption(option);
</script>
<script>
    var myChart10007 = echarts.init(document.getElementById("settings_main_line10007"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_count10007.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;

        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }

        myChart10007.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChart10007.setOption(option);
</script>
<script>
    var myChart10008 = echarts.init(document.getElementById("settings_main_line10008"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_count10008.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;
        var c2 = data.data1;
        var c3 = data.data2;
        var c4 = data.data3;
        var c5 = data.data4;
        var c6 = data.data5;

        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c2[j], a[1]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c3[j], a[2]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c4[j], a[3]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c5[j], a[4]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c6[j], a[5]
            ]);
        }

        myChart10008.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChart10008.setOption(option);
</script>
<script>
    var myChart10009 = echarts.init(document.getElementById("settings_main_line10009"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_count10009.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;
        var c2 = data.data1;
        var c3 = data.data2;
        var c4 = data.data3;
        var c5 = data.data4;
        var c6 = data.data5;

        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c2[j], a[1]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c3[j], a[2]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c4[j], a[3]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c5[j], a[4]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c6[j], a[5]
            ]);
        }

        myChart10009.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChart10009.setOption(option);
</script>
<script>
    var myChart10010 = echarts.init(document.getElementById("settings_main_line10010"));
    var option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'line',
                lineStyle: {
                    color: 'rgba(0,0,0,0.2)',
                    width: 1,
                    type: 'solid'
                }
            }
        },
        legend: {
            data: []
        },
        singleAxis: {
            top: 50,
            bottom: 65,
            axisTick: {},
            axisLabel: {},
            type: 'time',
            axisPointer: {
                animation: true,
                label: {
                    show: true
                }
            },
            splitLine: {
                show: true,
                lineStyle: {
                    type: 'dashed',
                    opacity: 0.2
                }
            }
        },
        dataZoom: [
            {   // 这个dataZoom组件，默认控制x轴。
                type: 'slider', // 这个 dataZoom 组件是 slider 型 dataZoom 组件
                start: 65,      // 左边在 10% 的位置。
                end: 70 ,      // 右边在 60% 的位置。
                bottom: 0

            }
        ],
        series: [
            {
                type: 'themeRiver',
                emphasis: {
                    itemStyle: {
                        shadowBlur: 20,
                        shadowColor: 'rgba(0, 0, 0, 0.8)'
                    }
                },
                data: [],
                label: {
                    show: false
                }
            }
        ]
    };
    $.getJSON('../json_category/category_time_count10010.json',function(data) {
        var a = data.category_group;
        var b = data.time;
        var c1 = data.data0;
        var c2 = data.data1;
        //var c3 = data.data2;

        var datalist = []
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c1[j], a[0]
            ]);
        }
        for (var j = 0; j < b.length; j++) {
            datalist.push([
                b[j], c2[j], a[1]
            ]);
        }
        // for (var j = 0; j < b.length; j++) {
        //     datalist.push([
        //         b[j], c3[j], a[2]
        //     ]);
        // }

        myChart10010.setOption({
            legend: {
                data: a
            },
            series: [
                {
                    data: datalist
                }
            ]
        });
    });
    myChart10010.setOption(option);
</script>
<script>
    var myChart10000_0 = echarts.init(document.getElementById('settings_main10000_0'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'square',
            width: 400,
            height: 400,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10000_0.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10000_0.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10000_0.setOption(option);
    window.onresize = myChart10000_0.resize;
</script>
<script>
    var myChart10000_1 = echarts.init(document.getElementById('settings_main10000_1'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'square',
            width: 400,
            height: 400,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10000_1.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10000_1.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10000_1.setOption(option);
    window.onresize = myChart10000_1.resize;
</script>
<script>
    var myChart10000_2 = echarts.init(document.getElementById('settings_main10000_2'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10000_2.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10000_2.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10000_2.setOption(option);
    window.onresize = myChart10000_2.resize;
</script>
<script>
    var myChart10000_3 = echarts.init(document.getElementById('settings_main10000_3'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10000_3.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10000_3.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10000_3.setOption(option);
    window.onresize = myChart10000_3.resize;
</script>
<script>
    var myChart10000_4 = echarts.init(document.getElementById('settings_main10000_4'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10000_4.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10000_4.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10000_4.setOption(option);
    window.onresize = myChart10000_4.resize;
</script>
<script>
    var myChart10000_5 = echarts.init(document.getElementById('settings_main10000_5'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10000_5.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10000_5.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10000_5.setOption(option);
    window.onresize = myChart10000_5.resize;
</script>
<script>
    var myChart10000_6 = echarts.init(document.getElementById('settings_main10000_6'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10000_6.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10000_6.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10000_6.setOption(option);
    window.onresize = myChart10000_6.resize;
</script>
<script>
    var myChart10000_7 = echarts.init(document.getElementById('settings_main10000_7'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10000_7.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10000_7.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10000_7.setOption(option);
    window.onresize = myChart10000_7.resize;
</script>
<script>
    var myChart10001_0 = echarts.init(document.getElementById('settings_main10001_0'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10001_0.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10001_0.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10001_0.setOption(option);
    window.onresize = myChart10001_0.resize;
</script>
<script>
    var myChart10001_1 = echarts.init(document.getElementById('settings_main10001_1'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10001_1.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10001_1.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10001_1.setOption(option);
    window.onresize = myChart10001_1.resize;
</script>
<script>
    var myChart10001_2 = echarts.init(document.getElementById('settings_main10001_2'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10001_2.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10001_2.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10001_2.setOption(option);
    window.onresize = myChart10001_2.resize;
</script>
<script>
    var myChart10001_3 = echarts.init(document.getElementById('settings_main10001_3'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10001_3.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10001_3.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10001_3.setOption(option);
    window.onresize = myChart10001_3.resize;
</script>
<script>
    var myChart10001_4 = echarts.init(document.getElementById('settings_main10001_4'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10001_4.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10001_4.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10001_4.setOption(option);
    window.onresize = myChart10001_4.resize;
</script>
<script>
    var myChart10001_5 = echarts.init(document.getElementById('settings_main10001_5'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10001_5.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10001_5.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10001_5.setOption(option);
    window.onresize = myChart10001_5.resize;
</script>
<script>
    var myChart10002_0 = echarts.init(document.getElementById('settings_main10002_0'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10002_0.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10002_0.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10002_0.setOption(option);
    window.onresize = myChart10002_0.resize;
</script>
<script>
    var myChart10002_1 = echarts.init(document.getElementById('settings_main10002_1'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10002_1.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10002_1.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10002_1.setOption(option);
    window.onresize = myChart10002_1.resize;
</script>
<script>
    var myChart10002_2 = echarts.init(document.getElementById('settings_main10002_2'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10002_2.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10002_2.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10002_2.setOption(option);
    window.onresize = myChart10002_2.resize;
</script>
<script>
    var myChart10002_3 = echarts.init(document.getElementById('settings_main10002_3'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10002_3.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10002_3.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10002_3.setOption(option);
    window.onresize = myChart10002_3.resize;
</script>
<script>
    var myChart10002_4 = echarts.init(document.getElementById('settings_main10002_4'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10002_4.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10002_4.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10002_4.setOption(option);
    window.onresize = myChart10002_4.resize;
</script>
<script>
    var myChart10003_0 = echarts.init(document.getElementById('settings_main10003_0'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10003_0.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10003_0.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10003_0.setOption(option);
    window.onresize = myChart10003_0.resize;
</script>
<script>
    var myChart10003_1 = echarts.init(document.getElementById('settings_main10003_1'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10003_1.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10003_1.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10003_1.setOption(option);
    window.onresize = myChart10003_1.resize;
</script>
<script>
    var myChart10003_2 = echarts.init(document.getElementById('settings_main10003_2'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10003_2.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10003_2.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10003_2.setOption(option);
    window.onresize = myChart10003_2.resize;
</script>
<script>
    var myChart10004_0 = echarts.init(document.getElementById('settings_main10004_0'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10004_0.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10004_0.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10004_0.setOption(option);
    window.onresize = myChart10004_0.resize;
</script>
<script>
    var myChart10004_1 = echarts.init(document.getElementById('settings_main10004_1'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10004_1.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10004_1.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10004_1.setOption(option);
    window.onresize = myChart10004_1.resize;
</script>
<script>
    var myChart10004_2 = echarts.init(document.getElementById('settings_main10004_2'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10004_2.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10004_2.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10004_2.setOption(option);
    window.onresize = myChart10004_2.resize;
</script>
<script>
    var myChart10004_3 = echarts.init(document.getElementById('settings_main10004_3'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10004_3.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10004_3.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10004_3.setOption(option);
    window.onresize = myChart10004_3.resize;
</script>
<script>
    var myChart10004_4 = echarts.init(document.getElementById('settings_main10004_4'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10004_4.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10004_4.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10004_4.setOption(option);
    window.onresize = myChart10004_4.resize;
</script>
<script>
    var myChart10004_5 = echarts.init(document.getElementById('settings_main10004_5'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10004_5.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10004_5.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10004_5.setOption(option);
    window.onresize = myChart10004_5.resize;
</script>
<script>
    var myChart10005_0 = echarts.init(document.getElementById('settings_main10005_0'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10005_0.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10005_0.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10005_0.setOption(option);
    window.onresize = myChart10005_0.resize;
</script>
<script>
    var myChart10006_0 = echarts.init(document.getElementById('settings_main10006_0'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10006_0.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10006_0.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10006_0.setOption(option);
    window.onresize = myChart10006_0.resize;
</script>
<script>
    var myChart10006_1 = echarts.init(document.getElementById('settings_main10006_1'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10006_1.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10006_1.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10006_1.setOption(option);
    window.onresize = myChart10006_1.resize;
</script>
<script>
    var myChart10006_2 = echarts.init(document.getElementById('settings_main10006_2'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10006_2.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10006_2.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10006_2.setOption(option);
    window.onresize = myChart10006_2.resize;
</script>
<script>
    var myChart10007_0 = echarts.init(document.getElementById('settings_main10007_0'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10007_0.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10007_0.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10007_0.setOption(option);
    window.onresize = myChart10007_0.resize;
</script>
<script>
    var myChart10008_0 = echarts.init(document.getElementById('settings_main10008_0'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10008_0.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10008_0.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10008_0.setOption(option);
    window.onresize = myChart10008_0.resize;
</script>
<script>
    var myChart10008_1 = echarts.init(document.getElementById('settings_main10008_1'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10008_1.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10008_1.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10008_1.setOption(option);
    window.onresize = myChart10008_1.resize;
</script>
<script>
    var myChart10008_2 = echarts.init(document.getElementById('settings_main10008_2'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10008_2.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10008_2.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10008_2.setOption(option);
    window.onresize = myChart10008_2.resize;
</script>
<script>
    var myChart10008_3 = echarts.init(document.getElementById('settings_main10008_3'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10008_3.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10008_3.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10008_3.setOption(option);
    window.onresize = myChart10008_3.resize;
</script>
<script>
    var myChart10008_4 = echarts.init(document.getElementById('settings_main10008_4'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10008_4.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10008_4.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10008_4.setOption(option);
    window.onresize = myChart10008_4.resize;
</script>
<script>
    var myChart10008_5 = echarts.init(document.getElementById('settings_main10008_5'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10008_5.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10008_5.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10008_5.setOption(option);
    window.onresize = myChart10008_5.resize;
</script>
<script>
    var myChart10009_0 = echarts.init(document.getElementById('settings_main10009_0'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10009_0.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10009_0.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10009_0.setOption(option);
    window.onresize = myChart10009_0.resize;
</script>
<script>
    var myChart10009_1 = echarts.init(document.getElementById('settings_main10009_1'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10009_1.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10009_1.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10009_1.setOption(option);
    window.onresize = myChart10009_1.resize;
</script>
<script>
    var myChart10009_2 = echarts.init(document.getElementById('settings_main10009_2'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10009_2.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10009_2.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10009_2.setOption(option);
    window.onresize = myChart10009_2.resize;
</script>
<script>
    var myChart10009_3 = echarts.init(document.getElementById('settings_main10009_3'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10009_3.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10009_3.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10009_3.setOption(option);
    window.onresize = myChart10009_3.resize;
</script>
<script>
    var myChart10009_4 = echarts.init(document.getElementById('settings_main10009_4'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10009_4.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10009_4.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10009_4.setOption(option);
    window.onresize = myChart10009_4.resize;
</script>
<script>
    var myChart10009_5 = echarts.init(document.getElementById('settings_main10009_5'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10009_5.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10009_5.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10009_5.setOption(option);
    window.onresize = myChart10009_5.resize;
</script>
<script>
    var myChart10010_0 = echarts.init(document.getElementById('settings_main10010_0'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10010_0.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10010_0.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10010_0.setOption(option);
    window.onresize = myChart10010_0.resize;
</script>
<script>
    var myChart10010_1 = echarts.init(document.getElementById('settings_main10010_1'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10010_1.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10010_1.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10010_1.setOption(option);
    window.onresize = myChart10010_1.resize;
</script>
<script>
    var myChart10010_2 = echarts.init(document.getElementById('settings_main10010_2'));
    var option = {
        tooltip: {},
        series: [ {
            type: 'wordCloud',
            gridSize: 2,
            sizeRange: [12, 50],
            rotationRange: [-90, 90],
            shape: 'pentagon',
            width: 800,
            height: 500,
            drawOutOfBound: true,
            textStyle: {
                normal: {
                    color: function () {
                        return 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')';
                    }
                },
                emphasis: {
                    shadowBlur: 10,
                    shadowColor: '#333'
                }
            },
            data: []
        } ]
    };
    $.getJSON("./json_category/keywords_dict_every_cluster10010_2.json",function(data){
        var data_dict=[];
        for (var name in data) {
            data_dict.push({
                name: name,
                value: data[name]
            })
        }
        myChart10010_2.setOption({
            series:[{
                data:data_dict
            }]
        })
    });
    myChart10010_2.setOption(option);
    window.onresize = myChart10010_2.resize;
</script>
<script src="../js/core/jquery.min.js"></script>

<script>
    function Register_user(){
        var username=document.getElementById("username");
        var pass1=document.getElementById("first_pass");
        var pass2=document.getElementById("second_pass");
        if(username!=''&&pass1!=''&&pass2!=''){
            alert("注册成功！");
        }
        else{
            $("#RegisteredModal").on("hidden.bs.modal", function() {
                $(this).removeData("bs.modal");
            });
        }
    }
</script>







<script src="../js/core/popper.min.js"></script>
<script src="../js/core/bootstrap-material-design.min.js"></script>
<script src="../js/plugins/perfect-scrollbar.jquery.min.js"></script>
<!-- Plugin for the momentJs  -->
<script src="../js/plugins/moment.min.js"></script>
<!--  Plugin for Sweet Alert -->
<script src="../js/plugins/sweetalert2.js"></script>
<!-- Forms Validations Plugin -->
<script src="../js/plugins/jquery.validate.min.js"></script>
<!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
<script src="../js/plugins/jquery.bootstrap-wizard.js"></script>
<!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
<script src="../js/plugins/bootstrap-selectpicker.js"></script>
<!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
<script src="../js/plugins/bootstrap-datetimepicker.min.js"></script>
<!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
<script src="../js/plugins/jquery.dataTables.min.js"></script>
<!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
<script src="../js/plugins/bootstrap-tagsinput.js"></script>
<!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
<script src="../js/plugins/jasny-bootstrap.min.js"></script>
<!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
<script src="../js/plugins/fullcalendar.min.js"></script>
<!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
<script src="../js/plugins/jquery-jvectormap.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="../js/plugins/nouislider.min.js"></script>
<!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
<!-- Library for adding dinamically elements -->
<script src="../js/plugins/arrive.min.js"></script>
<!--  Google Maps Plugin    -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!-- Chartist JS -->
<script src="../js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="../js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../js/material-dashboard.js?v=2.1.2" type="text/javascript"></script>
<!-- Material Dashboard DEMO methods, don't include it in your project! -->
<script src="../demo/demo.js"></script>
<script>
    $(document).ready(function() {
        $().ready(function() {
            $sidebar = $('.sidebar');

            $sidebar_img_container = $sidebar.find('.sidebar-background');

            $full_page = $('.full-page');

            $sidebar_responsive = $('body > .navbar-collapse');

            window_width = $(window).width();

            fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

            if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
                if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
                    $('.fixed-plugin .dropdown').addClass('open');
                }

            }

            $('.fixed-plugin a').click(function(event) {
                // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
                if ($(this).hasClass('switch-trigger')) {
                    if (event.stopPropagation) {
                        event.stopPropagation();
                    } else if (window.event) {
                        window.event.cancelBubble = true;
                    }
                }
            });

            $('.fixed-plugin .active-color span').click(function() {
                $full_page_background = $('.full-page-background');

                $(this).siblings().removeClass('active');
                $(this).addClass('active');

                var new_color = $(this).data('color');

                if ($sidebar.length != 0) {
                    $sidebar.attr('data-color', new_color);
                }

                if ($full_page.length != 0) {
                    $full_page.attr('filter-color', new_color);
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.attr('data-color', new_color);
                }
            });

            $('.fixed-plugin .background-color .badge').click(function() {
                $(this).siblings().removeClass('active');
                $(this).addClass('active');

                var new_color = $(this).data('background-color');

                if ($sidebar.length != 0) {
                    $sidebar.attr('data-background-color', new_color);
                }
            });

            $('.fixed-plugin .img-holder').click(function() {
                $full_page_background = $('.full-page-background');

                $(this).parent('li').siblings().removeClass('active');
                $(this).parent('li').addClass('active');


                var new_image = $(this).find("img").attr('src');

                if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                    $sidebar_img_container.fadeOut('fast', function() {
                        $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                        $sidebar_img_container.fadeIn('fast');
                    });
                }

                if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
                    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                    $full_page_background.fadeOut('fast', function() {
                        $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                        $full_page_background.fadeIn('fast');
                    });
                }

                if ($('.switch-sidebar-image input:checked').length == 0) {
                    var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
                    var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

                    $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
                    $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
                }

                if ($sidebar_responsive.length != 0) {
                    $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
                }
            });

            $('.switch-sidebar-image input').change(function() {
                $full_page_background = $('.full-page-background');

                $input = $(this);

                if ($input.is(':checked')) {
                    if ($sidebar_img_container.length != 0) {
                        $sidebar_img_container.fadeIn('fast');
                        $sidebar.attr('data-image', '#');
                    }

                    if ($full_page_background.length != 0) {
                        $full_page_background.fadeIn('fast');
                        $full_page.attr('data-image', '#');
                    }

                    background_image = true;
                } else {
                    if ($sidebar_img_container.length != 0) {
                        $sidebar.removeAttr('data-image');
                        $sidebar_img_container.fadeOut('fast');
                    }

                    if ($full_page_background.length != 0) {
                        $full_page.removeAttr('data-image', '#');
                        $full_page_background.fadeOut('fast');
                    }

                    background_image = false;
                }
            });

            $('.switch-sidebar-mini input').change(function() {
                $body = $('body');

                $input = $(this);

                if (md.misc.sidebar_mini_active == true) {
                    $('body').removeClass('sidebar-mini');
                    md.misc.sidebar_mini_active = false;

                    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

                } else {

                    $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

                    setTimeout(function() {
                        $('body').addClass('sidebar-mini');

                        md.misc.sidebar_mini_active = true;
                    }, 300);
                }

                // we simulate the window Resize so the charts will get updated in realtime.
                var simulateWindowResize = setInterval(function() {
                    window.dispatchEvent(new Event('resize'));
                }, 180);

                // we stop the simulation of Window Resize after the animations are completed
                setTimeout(function() {
                    clearInterval(simulateWindowResize);
                }, 1000);

            });
        });
    });
</script>
<script>
    $(document).ready(function() {
        // Javascript method's body can be found in /js/demos.js
        md.initDashboardPageCharts();

    });
</script>
</body>

</html>
