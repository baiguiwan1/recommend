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
  <link rel="apple-touch-icon" sizes="76x76" href="./img/apple-icon.png">
  <link rel="icon" type="image/png" href="./img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
      科技大数据检索查询系统
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="/css/font.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="/css/material-dashboard.css?v=2.1.2" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="/demo/demo.css" rel="stylesheet" />

</head>

<body class="">
  <div class="wrapper ">
    <div class="sidebar" data-color="blue" data-background-color="white" data-image="./img/sidebar-1.jpg">
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
                    <li class="nav-item">
                        <a class="nav-link" href="/myregister" id="registerLink">注册</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/mylogin" id="loginLink">登陆</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="display:none" id="personLink"><i class="material-icons">person</i></a>
                    </li>
                </ul>
              </div>
          </div>
      </nav>

     <!-- <div class="modal fade" id="RegisteredModal" tabindex="-1" role="dialog" aria-labelledby="RegisteredModalLabel" aria-hidden="true">
         <div class="modal-dialog" style="pointer-events:auto;">
           <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="RegisteredModalLabel">用户注册</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
             <div class="modal-body">
               <form role="form" action="/expert/register" method="post" class="Register-form">
                    <div class="form-group">
                       <input type="textbox" name="exName" style="eidth:100%" placeholder="用户名" class="form-control"/>
                    </div>
                    <div class="form-group">
                       <input type="password" name="password" style="eidth:100%" placeholder="密码" class="form-control"/>
                    </div>
                    <div class="form-group">
                       <input	type="password" name="second_pass" style="eidth:100%" placeholder="确认密码" class="form-control"/>
                    </div>
                    <div class="form-group">
                          <label class="col-sm-4 control-label" name="researchFields">研究领域</label>
                          <div class="col-sm-8">
                               <select class="form-control" placeholder="研究领域">
                                       <option value="0">制造业</option>
                                       <option value="1">农林牧渔业</option>
                                       <option value="2">医药业</option>
                                       <option value="3">科学服务业</option>
                                       <option value="4">电子信息业</option>
                                       <option value="5">社会保障和社会福利业</option>
                                       <option value="6">水利环境业</option>
                                       <option value="7">教育业</option>
                                       <option value="7">新材料能源行业</option>
                                       <option value="7">轻功石化业</option>
                                       <option value="7">建筑业</option>
                                       <option value="7">文化娱乐业</option>
                                       <option value="7">其他行业</option>

                               </select>
                           </div>
                    </div>
              </form>
            </div>
           <div class="modal-footer">
               <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
               <button id="submitBtn" type="submit" class="btn btn-blue">注册</button>
           </div>
        </div>
      </div>
     </div>
     <div class="modal fade" id="LoginModal" tabindex="-1" role="dialog" aria-labelledby="LoginModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="pointer-events:auto;">
          <div class="modal-content">
             <div class="modal-header">
               <h4 class="modal-title" id="LoginModalLabel">用户登录</h4>
               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                 <span aria-hidden="true">&times;</span>
               </button>
             </div>
         <div class="modal-body">
              <form role="form" action="" method="post" class="Login-form">
                   <div class="form-group">
                      <input type="textbox" name="username1" style="eidth:100%" placeholder="用户名" class="form-control"/>
                   </div>
                   <div class="form-group">
                      <input type="password" name="password1" style="eidth:100%" placeholder="密码" class="form-control"/>
                   </div>
             </form>
        </div>
        <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
              <button type="button" class="btn btn-blue" onclick="Login_user()">登录</button>
        </div>
         </div>
       </div>
    </div>
    -->
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
                    <div class="tab-pane" id="profile">
                      <h4>向科研人员推荐企业需求信息</h4>
                      <br/>
                      <div class="content">
                        <div class="container-fluid">
                          <div class="row">
                            <div class="col-md-4">
                              <div class="card card-profile">
                                <div class="card-avatar">
                                  <a href="#">
                                    <img class="img" src="./img/faces/xuezhe.jpg" />
                                  </a>
                                </div>
                                <div class="card-body" style="height: 290px;">
                                  <h6 class="card-category">南京大学教授 / 博士生导师</h6>
                                  <h4 class="card-title">学者</h4>
                                  <h6 class="card-category">南京大学</h6>
                                  <p>
                                    学者（1973.11- ）毕业于南京大学计算机科学与技术系（学士、硕士、博士），2001年留校任教。现为教育部“长江学者”特聘教授，国家杰出青年基金获得者；南京大学计算机科学与技术系主任、人工智能学院院长。
                                  </p>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="card">
                                <div class="card-header">
                                  <h4 class="card-title">领域热词</h4>
                                </div>
                                <div class="card-body" style="height: 330px;">
                                  <table class="table">
                                      <thead>
                                          <tr>
                                              <th class="text-center">#</th>
                                              <th>热词排行</th>
                                              <!-- <th>Job Position</th>
                                              <th>Since</th>
                                              <th class="text-right">Salary</th> -->
                                              <th class="text-right">热度值</th>
                                          </tr>
                                      </thead>
                                      <tbody>
                                          <tr>
                                              <td class="text-center">1</td>
                                              <td>
                                                <a href="#" class="card-link text-blue">Machine Learning</a>
                                              </td>
                                              <td class="text-right">
                                                <i class="material-icons">whatshot</i>
                                                <i class="material-icons">whatshot</i>
                                                <i class="material-icons">whatshot</i>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="text-center">2</td>
                                              <td>
                                                <a href="#" class="card-link text-blue">Data Mining</a>
                                              </td>
                                              <td class="text-right">
                                                <i class="material-icons">whatshot</i>
                                                <i class="material-icons">whatshot</i>
                                                <i class="material-icons">whatshot</i>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="text-center">3</td>
                                              <td>
                                                <a href="#" class="card-link text-blue">Neural Network</a>
                                              </td>
                                              <td class="text-right">
                                                <i class="material-icons">whatshot</i>
                                                <i class="material-icons">whatshot</i>
                                              </td>
                                          </tr>
                                          <tr>
                                              <td class="text-center">4</td>
                                              <td>
                                                <a href="#" class="card-link text-blue">Semi Supervised Learning</a>
                                              </td>
                                              <td class="text-right">
                                                <i class="material-icons">whatshot</i>
                                                <i class="material-icons">whatshot</i>
                                              </td>
                                          </tr>

                                      </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                            <div class="col-md-4">
                              <div class="card">
                                <div class="card-header">
                                  <h4 class="card-title">发表论文</h4>
                                </div>
                                <div class="card-body" style="height: 330px;">
                                  <table class="table">
                                      <thead>
                                          <tr>
                                              <th class="text-center">#</th>
                                              <th>论文标题</th>
                                              <th class="text-right">年份</th>
                                          </tr>
                                      </thead>
                                      <tbody>
                                          <tr>
                                              <td class="text-center">1</td>
                                              <td>
                                                <a href="#" class="card-link text-blue">Learning With Interpretable Structure...</a>
                                              </td>
                                              <td class="text-right">2020</td>
                                          </tr>
                                          <tr>
                                              <td class="text-center">2</td>
                                              <td>
                                                <a href="#" class="card-link text-blue">Control Flow Graph Embedding based...</a>
                                              </td>
                                              <td class="text-right">2020</td>
                                          </tr>
                                          <tr>
                                              <td class="text-center">3</td>
                                              <td>
                                                <a href="#" class="card-link text-blue">Optimal Margin Distribution Machine...</a>
                                              </td>
                                              <td class="text-right">2019</td>
                                          </tr>
                                          <tr>
                                              <td class="text-center">4</td>
                                              <td>
                                                <a href="#" class="card-link text-blue">Learning to Generate Posters of...</a>
                                              </td>
                                              <td class="text-right">2019</td>
                                          </tr>
                                          <tr>
                                              <td class="text-center">5</td>
                                              <td>
                                                <a href="#" class="card-link text-blue">Unsupervised Object Discovery and Co...</a>
                                              </td>
                                              <td class="text-right">2019</td>
                                          </tr>

                                      </tbody>
                                  </table>
                                </div>
                              </div>
                            </div>
                          </div>
                          <br/>
                          <h4>
                            给科研人员个性化推荐的企业需求
                          </h4>
                          <br/>
                          <div class="row">
                            <div class="col-md-4 " data-name="box"  style="float: left">
                                <div class="card">
                                    <div class="card-header card-header-text card-header-blue">
                                      <div class="card-text">
                                        <h4 class="card-title">视觉尺寸检查设备</h4>
                                      </div>
                                    </div>
                                    <div class="card-body"  style="height: 215px; width: 360px;">
                                        <h4 class="header-title">江苏省 南京市</h4>
                                        <p class="card-text">
                                            拟投资规模：30万
                                        </p>

                                        <p class="card-text">
                                            行业领域：人工智能
                                        </p>
                                        <p class="card-text">
                                            拟合作方式：技术转让、许可生产、合作开发
                                        </p>
                                        <!-- <a href="{%  url "recommend_by_emotion_Para" "1094293345" %}" target="_blank" class="card-link">根据情感推荐</a>
                                        <a href="{%  url "recommend_by_portrayal_Para" "1094293345" %}" target="_blank" class="card-link">根据画像推荐</a> -->
                                        <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong">
                                          了解更多
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                          <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                              <div class="modal-header">
                                                <h5 class="modal-title">需求详情</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                  <span aria-hidden="true">&times;</span>
                                                </button>
                                              </div>
                                              <div class="modal-body">
                                                <h5 class="header-title">需求名称</h5>
                                                <p class="card-text">
                                                    视觉尺寸检查设备
                                                </p>
                                                <h5 class="header-title">拟投资规模</h5>
                                                <p class="card-text">
                                                    30万元
                                                </p>
                                                <h5 class="header-title">行业领域</h5>
                                                <p class="card-text">
                                                    人工智能
                                                </p>
                                                <h5 class="header-title">拟合作方式</h5>
                                                <p class="card-text">
                                                    技术转让, 许可生产, 合作开发
                                                </p>
                                                <h5 class="header-title">技术需求方式</h5>
                                                <p class="card-text">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;1、通过视觉实现零件尺寸检查，检查精度±0.1mm；
                                                </p>
                                                <p class="card-text">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;2、实现10种微小零件计数识别；
                                                </p>
                                                <p class="card-text">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;3、实现25种特定零件的错漏装判断；
                                                </p>
                                                <p class="card-text">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;4、需要开发硬件（包含测试桌、移动滑台、摄像头等）
                                                </p>
                                                <p class="card-text">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;5、开发者应为企业，需签订计数协议和合同；
                                                </p>
                                                <p class="card-text">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;6、付款方式为361；
                                                </p>
                                                <p class="card-text">
                                                  &nbsp;&nbsp;&nbsp;&nbsp;7、需要基于web开发图像后台管理相关系统；
                                                </p>
                                                <p class="card-text">
                                                  &nbsp;&nbsp;&nbsp;&nbsp;8、定制开发3个3D展示界面。
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
                            <div class="col-md-4 " data-name="box"  style="float: left">
                                <div class="card">
                                    <div class="card-header card-header-text card-header-blue">
                                      <div class="card-text">
                                        <h4 class="card-title">开发音乐平台</h4>
                                      </div>
                                    </div>
                                    <div class="card-body"  style="height: 215px; width: 360px;">
                                        <h4 class="header-title">北京市</h4>
                                        <p class="card-text">
                                            拟投资规模：7万
                                        </p>
                                        <p class="card-text">
                                            行业领域：大数据
                                        </p>
                                        <p class="card-text">
                                            拟合作方式：技术转让、许可生产、合作开发
                                        </p>
                                        <!-- <a href="{%  url "recommend_by_emotion_Para" "1094293345" %}" target="_blank" class="card-link">根据情感推荐</a>
                                        <a href="{%  url "recommend_by_portrayal_Para" "1094293345" %}" target="_blank" class="card-link">根据画像推荐</a> -->
                                        <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong_2">
                                          了解更多
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModalLong_2" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                          <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                              <div class="modal-header">
                                                <h5 class="modal-title">需求详情</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                  <span aria-hidden="true">&times;</span>
                                                </button>
                                              </div>
                                              <div class="modal-body">
                                                <h5 class="header-title">需求名称</h5>
                                                <p class="card-text">
                                                    开发音乐平台
                                                </p>
                                                <h5 class="header-title">拟投资规模</h5>
                                                <p class="card-text">
                                                    7万
                                                </p>
                                                <h5 class="header-title">行业领域</h5>
                                                <p class="card-text">
                                                    大数据
                                                </p>
                                                <h5 class="header-title">拟合作方式</h5>
                                                <p class="card-text">
                                                    技术转让、许可生产、合作开发
                                                </p>
                                                <h5 class="header-title">技术需求介绍</h5>
                                                <p class="card-text">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;需要熟悉音乐播放器类技术开发一名或团队，需要开发一款软件。有相关熟悉音乐平台的技术大神优先来接单。
                                                </p>
                                                <p class="card-text">
                                                  &nbsp;&nbsp;&nbsp;&nbsp;诚信合作 价格可再商议.
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
                            <div class="col-md-4 " data-name="box"  style="float: left">
                                <div class="card">
                                    <div class="card-header card-header-text card-header-blue">
                                      <div class="card-text">
                                        <h4 class="card-title">树莓派上接入百度地图做成hud...</h4>
                                      </div>
                                    </div>
                                    <div class="card-body"  style="height: 215px; width: 360px;">
                                        <h4 class="header-title">广东省 珠海市</h4>
                                        <p class="card-text">
                                            拟投资规模：1万
                                        </p>
                                        <p class="card-text">
                                            行业领域：人工智能
                                        </p>
                                        <p class="card-text">
                                            拟合作方式：技术转让、许可生产、合作开发
                                        </p>
                                        <!-- <a href="{%  url "recommend_by_emotion_Para" "1094293345" %}" target="_blank" class="card-link">根据情感推荐</a>
                                        <a href="{%  url "recommend_by_portrayal_Para" "1094293345" %}" target="_blank" class="card-link">根据画像推荐</a> -->
                                        <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong_3">
                                          了解更多
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModalLong_3" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                          <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                              <div class="modal-header">
                                                <h5 class="modal-title" >需求详情</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                  <span aria-hidden="true">&times;</span>
                                                </button>
                                              </div>
                                              <div class="modal-body">
                                                <h5 class="header-title">需求名称</h5>
                                                <p class="card-text">
                                                    树莓派上接入百度地图做成hud抬头显示器
                                                </p>
                                                <h5 class="header-title">拟投资规模</h5>
                                                <p class="card-text">
                                                    1万
                                                </p>
                                                <h5 class="header-title">行业领域</h5>
                                                <p class="card-text">
                                                    人工智能
                                                </p>
                                                <h5 class="header-title">拟合作方式</h5>
                                                <p class="card-text">
                                                    技术转让、许可生产、合作开发
                                                </p>
                                                <h5 class="header-title">技术需求介绍</h5>
                                                <p class="card-text">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;在树莓派3上接入百度或者高德地图，实现语音控制，包括odb获取汽车电脑信息，实现hud抬头显示器功能。
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
                            <!-- </div> -->
                          </div>
                          <div class="row">
                            <div class="col-md-4 " data-name="box"  style="float: left">
                                <div class="card">
                                    <div class="card-header card-header-text card-header-blue">
                                      <div class="card-text">
                                        <h4 class="card-title">基于ROS的室内语义拓扑地图构建...</h4>
                                      </div>
                                    </div>
                                    <div class="card-body"  style="height: 215px; width: 360px;">
                                        <h4 class="header-title">江苏省 南京市</h4>
                                        <p class="card-text">
                                            拟投资规模：3万
                                        </p>

                                        <p class="card-text">
                                            行业领域：人工智能
                                        </p>
                                        <p class="card-text">
                                            拟合作方式：技术转让、许可生产、合作开发
                                        </p>
                                        <!-- <a href="{%  url "recommend_by_emotion_Para" "1094293345" %}" target="_blank" class="card-link">根据情感推荐</a>
                                        <a href="{%  url "recommend_by_portrayal_Para" "1094293345" %}" target="_blank" class="card-link">根据画像推荐</a> -->
                                        <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong_4">
                                          了解更多
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModalLong_4" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                          <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                              <div class="modal-header">
                                                <h5 class="modal-title" >需求详情</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                  <span aria-hidden="true">&times;</span>
                                                </button>
                                              </div>
                                              <div class="modal-body">
                                                <h5 class="header-title">需求名称</h5>
                                                <p class="card-text">
                                                    基于ROS的室内语义拓扑地图构建
                                                </p>
                                                <h5 class="header-title">拟投资规模</h5>
                                                <p class="card-text">
                                                    3万元
                                                </p>
                                                <h5 class="header-title">行业领域</h5>
                                                <p class="card-text">
                                                    人工智能
                                                </p>
                                                <h5 class="header-title">拟合作方式</h5>
                                                <p class="card-text">
                                                    技术转让, 许可生产, 合作开发
                                                </p>
                                                <h5 class="header-title">技术需求方式</h5>
                                                <p class="card-text">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;目标检测网络yolo检测物体，修改ratslam算法，生成语义拓扑地图，拓扑点储存检测到的物体信息。
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
                            <div class="col-md-4 " data-name="box"  style="float: left">
                                <div class="card">
                                    <div class="card-header card-header-text card-header-blue">
                                      <div class="card-text">
                                        <h4 class="card-title">BI数据分析系统开发</h4>
                                      </div>
                                    </div>
                                    <div class="card-body"  style="height: 215px; width: 360px;">
                                        <h4 class="header-title">江苏省 徐州市</h4>
                                        <p class="card-text">
                                            拟投资规模：5万
                                        </p>
                                        <p class="card-text">
                                            行业领域：大数据
                                        </p>
                                        <p class="card-text">
                                            拟合作方式：技术转让、许可生产、合作开发
                                        </p>

                                        <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong_5">
                                          了解更多
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModalLong_5" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                          <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                              <div class="modal-header">
                                                <h5 class="modal-title" >需求详情</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                  <span aria-hidden="true">&times;</span>
                                                </button>
                                              </div>
                                              <div class="modal-body">
                                                <h5 class="header-title">需求名称</h5>
                                                <p class="card-text">
                                                    BI数据分析系统开发
                                                </p>
                                                <h5 class="header-title">拟投资规模</h5>
                                                <p class="card-text">
                                                    5万
                                                </p>
                                                <h5 class="header-title">行业领域</h5>
                                                <p class="card-text">
                                                    大数据
                                                </p>
                                                <h5 class="header-title">拟合作方式</h5>
                                                <p class="card-text">
                                                    技术转让、许可生产、合作开发
                                                </p>
                                                <h5 class="header-title">技术需求介绍</h5>
                                                <p class="card-text">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;BI数据分析系统全新开发，要求企业开发，不接受个人报价，有相关BI开发经验。
                                                </p>
                                                <p class="card-text">
                                                  &nbsp;&nbsp;&nbsp;&nbsp;主要功能包括：数据采集、数据清洗、数据建模、数据分析、自动生成报告、可视化等功能。
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
                            <div class="col-md-4 " data-name="box"  style="float: left">
                                <div class="card">
                                    <div class="card-header card-header-text card-header-blue">
                                      <div class="card-text">
                                        <h4 class="card-title">帆软BI看板配置</h4>
                                      </div>
                                    </div>
                                    <div class="card-body"  style="height: 215px; width: 360px;">
                                        <h4 class="header-title">广东省 珠海市</h4>
                                        <p class="card-text">
                                            拟投资规模：待定
                                        </p>
                                        <p class="card-text">
                                            行业领域：大数据
                                        </p>
                                        <p class="card-text">
                                            拟合作方式：技术转让、许可生产、合作开发
                                        </p>
                                        <!-- <a href="{%  url "recommend_by_emotion_Para" "1094293345" %}" target="_blank" class="card-link">根据情感推荐</a>
                                        <a href="{%  url "recommend_by_portrayal_Para" "1094293345" %}" target="_blank" class="card-link">根据画像推荐</a> -->
                                        <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong_6">
                                          了解更多
                                        </button>

                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModalLong_6" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                          <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                              <div class="modal-header">
                                                <h5 class="modal-title" >需求详情</h5>
                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                  <span aria-hidden="true">&times;</span>
                                                </button>
                                              </div>
                                              <div class="modal-body">
                                                <h5 class="header-title">需求名称</h5>
                                                <p class="card-text">
                                                    帆软BI看板配置
                                                </p>
                                                <h5 class="header-title">拟投资规模</h5>
                                                <p class="card-text">
                                                    待定
                                                </p>
                                                <h5 class="header-title">行业领域</h5>
                                                <p class="card-text">
                                                    大数据
                                                </p>
                                                <h5 class="header-title">拟合作方式</h5>
                                                <p class="card-text">
                                                    技术转让、许可生产、合作开发
                                                </p>
                                                <h5 class="header-title">技术需求介绍</h5>
                                                <p class="card-text">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;帆软BI配置看板，数据已经准备好，仅负责配置和调整看板。
                                                </p>
                                                <p class="card-text">
                                                  &nbsp;&nbsp;&nbsp;&nbsp;要求：
                                                </p>
                                                <p class="card-text">
                                                  &nbsp;&nbsp;&nbsp;&nbsp;1.对数据有一定的理解，可以根据数据选择合理的图表进行展示
                                                </p>
                                                <p class="card-text">
                                                  &nbsp;&nbsp;&nbsp;&nbsp;2.对帆软的图表功能有很高的理解，尤其是一些不常用功能，能够独立的配置出展现的图表
                                                </p>
                                                <p class="card-text">
                                                  &nbsp;&nbsp;&nbsp;&nbsp;3.制定并编写《帆软配置规范》，指导其他业务用户配置
                                                </p>
                                                <p class="card-text">
                                                  &nbsp;&nbsp;&nbsp;&nbsp;4.对色彩和布局有一定的理解，保证看板整体和谐美观
                                                </p>
                                                <p class="card-text">
                                                  &nbsp;&nbsp;&nbsp;&nbsp;本次仅是初期适用，如实力满足要求，可长期合作
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
                            <!-- </div> -->
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="tab-pane active" id="settings" >
                      <h4>向科研人员推荐需求趋势分析</h4>
                      <br/>
                      <div class="row">
                        <div class="col-md-12">
                          <div class="card">
                            <div class="card-header card-header-tabs card-header-blue">
                              <h5 class="card-title">制造业应用热点趋势分析</h5>
                            </div>
                            <div class="card-body">
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="card">
                                    <div class="card-header card-header-tabs card-header-blue">
                                      <h4 class="card-title">堆叠图</h4>
                                    </div>
                                    <div class="card-body">
                                      <div id="settings_main_line" style="width: 800px;height:400px;margin:0 auto;">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="card">
                                    <div class="card-header card-header-tabs card-header-blue">
                                      <h4 class="card-title">柱状图与饼状图联动</h4>
                                    </div>
                                    <div class="card-body">
                                      <div id="settings_main_pie" style="width: 800px;height:400px;margin:0 auto;">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                         </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-12">
                          <div class="card">
                            <div class="card-header card-header-tabs card-header-blue">
                              <h5 class="card-title">各应用热点所用技术热词分析</h5>
                            </div>
                            <div class="card-body">
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="card">
                                    <div class="card-header card-header-tabs card-header-blue">
                                      <h4 class="card-title">自动化</h4>
                                    </div>
                                    <div class="card-body">
                                      <div id="settings_main1" style="width: 800px;height:400px;margin:0 auto;">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="card">
                                    <div class="card-header card-header-tabs card-header-blue">
                                      <h4 class="card-title">控制技术</h4>
                                    </div>
                                    <div class="card-body">
                                      <div id="settings_main2" style="width: 800px;height:400px;margin:0 auto;">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="card">
                                    <div class="card-header card-header-tabs card-header-blue">
                                      <h4 class="card-title">机器人</h4>
                                    </div>
                                    <div class="card-body">
                                      <div id="settings_main3" style="width: 800px;height:400px;margin:0 auto;">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="card">
                                    <div class="card-header card-header-tabs card-header-blue">
                                      <h5 class="card-title">高新技术</h5>
                                    </div>
                                    <div class="card-body">
                                      <div id="settings_main4" style="width: 800px;height:400px;margin:0 auto;">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="card">
                                    <div class="card-header card-header-tabs card-header-blue">
                                      <h5 class="card-title">智能化</h5>
                                    </div>
                                    <div class="card-body">
                                      <div id="settings_main5" style="width: 800px;height:400px;margin:0 auto;">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="card">
                                    <div class="card-header card-header-tabs card-header-blue">
                                      <h5 class="card-title">热处理</h5>
                                    </div>
                                    <div class="card-body">
                                      <div id="settings_main6" style="width: 800px;height:400px;margin:0 auto;">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="card">
                                    <div class="card-header card-header-tabs card-header-blue">
                                      <h5 class="card-title">不锈钢</h5>
                                    </div>
                                    <div class="card-body">
                                      <div id="settings_main7" style="width: 800px;height:400px;margin:0 auto;">
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-md-12">
                                  <div class="card">
                                    <div class="card-header card-header-tabs card-header-blue">
                                      <h5 class="card-title">全自动</h5>
                                    </div>
                                    <div class="card-body">
                                      <div id="settings_main8" style="width: 800px;height:400px;margin:0 auto;">
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
                    <div class="tab-pane" id="messages">

                      <h4>向科研人员推荐最新科技资讯</h4>
                      <br/>
                      <!-- End Navbar -->
                      <div class="content">
                              <div class="container-fluid">
                                <div class="row">
                                  <div class="col-md-4">
                                    <div class="card card-profile">
                                      <div class="card-avatar">
                                        <a href="#">
                                          <img class="img" src="./img/faces/xuezhe.jpg" />
                                        </a>
                                      </div>
                                      <div class="card-body" style="height: 290px;">
                                        <h6 class="card-category">南京大学教授 / 博士生导师</h6>
                                        <h4 class="card-title">学者</h4>
                                        <h6 class="card-category">南京大学</h6>
                                        <p>
                                          学者（1973.11- ）毕业于南京大学计算机科学与技术系（学士、硕士、博士），2001年留校任教。现为教育部“长江学者”特聘教授，国家杰出青年基金获得者；南京大学计算机科学与技术系主任、人工智能学院院长。
                                        </p>
                                        <!-- <button class="btn btn-blue btn-round" onclick='swal({ title:"已成功向该学者推送推荐信息 !", text: "", type: "success", buttonsStyling: false, confirmButtonClass: "btn btn-success"})'>向该学者邮箱推送推荐信息</button> -->
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="card">
                                      <div class="card-header">
                                        <h4 class="card-title">领域热词</h4>
                                      </div>
                                      <div class="card-body" style="height: 330px;">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">#</th>
                                                    <th>热词排行</th>
                                                    <!-- <th>Job Position</th>
                                                    <th>Since</th>
                                                    <th class="text-right">Salary</th> -->
                                                    <th class="text-right">热度值</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center">1</td>
                                                    <td>
                                                      <a href="#" class="card-link text-blue">Machine Learning</a>
                                                    </td>
                                                    <td class="text-right">
                                                      <i class="material-icons">whatshot</i>
                                                      <i class="material-icons">whatshot</i>
                                                      <i class="material-icons">whatshot</i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">2</td>
                                                    <td>
                                                      <a href="#0" class="card-link text-blue">Data Mining</a>
                                                    </td>
                                                    <td class="text-right">
                                                      <i class="material-icons">whatshot</i>
                                                      <i class="material-icons">whatshot</i>
                                                      <i class="material-icons">whatshot</i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">3</td>
                                                    <td>
                                                      <a href="#" class="card-link text-blue">Neural Network</a>
                                                    </td>
                                                    <td class="text-right">
                                                      <i class="material-icons">whatshot</i>
                                                      <i class="material-icons">whatshot</i>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">4</td>
                                                    <td>
                                                      <a href="#" class="card-link text-blue">Semi Supervised Learning</a>
                                                    </td>
                                                    <td class="text-right">
                                                      <i class="material-icons">whatshot</i>
                                                      <i class="material-icons">whatshot</i>
                                                    </td>
                                                </tr>

                                            </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="col-md-4">
                                    <div class="card">
                                      <div class="card-header">
                                        <h4 class="card-title">发表论文</h4>
                                      </div>
                                      <div class="card-body" style="height: 330px;">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th class="text-center">#</th>
                                                    <th>论文标题</th>
                                                    <th class="text-right">年份</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center">1</td>
                                                    <td>
                                                      <a href="#" class="card-link text-blue">Learning With Interpretable Structure...</a>
                                                    </td>
                                                    <td class="text-right">2020</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">2</td>
                                                    <td>
                                                      <a href="#" class="card-link text-blue">Control Flow Graph Embedding based...</a>
                                                    </td>
                                                    <td class="text-right">2020</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">3</td>
                                                    <td>
                                                      <a href="#" class="card-link text-blue">Optimal Margin Distribution Machine...</a>
                                                    </td>
                                                    <td class="text-right">2019</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">4</td>
                                                    <td>
                                                      <a href="#" class="card-link text-blue">Learning to Generate Posters of...</a>
                                                    </td>
                                                    <td class="text-right">2019</td>
                                                </tr>
                                                <tr>
                                                    <td class="text-center">5</td>
                                                    <td>
                                                      <a href="#" class="card-link text-blue">Unsupervised Object Discovery and Co...</a>
                                                    </td>
                                                    <td class="text-right">2019</td>
                                                </tr>

                                            </tbody>
                                        </table>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                                <br/>
                                <h4>
                                  给科研人员个性化推荐的科技资讯
                                </h4>
                                <br/>
                                <div class="row">
                                  <div class="col-md-4 " data-name="box"  style="float: left">
                                      <div class="card">
                                          <div class="card-header card-header-text card-header-blue">
                                            <div class="card-text">
                                              <h4 class="card-title">首档“AI 音乐公投榜”背后：小度助...</h4>
                                            </div>
                                          </div>
                                          <div class="card-body"  style="height: 215px; width: 360px;">
                                            <h5 class="header-title">快科技</h5>
                                            <p class="card-text" style="height: 60px; width: 350px; overflow: auto">
                                                人工智能  音乐  排行榜
                                            </p>
                                            <p class="card-text">
                                                时间：2020-04-10 11:48:36
                                            </p>
                                              <!-- <a href="{%  url "recommend_by_emotion_Para" "1094293345" %}" target="_blank" class="card-link">根据情感推荐</a>
                                              <a href="{%  url "recommend_by_portrayal_Para" "1094293345" %}" target="_blank" class="card-link">根据画像推荐</a> -->
                                              <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong_7">
                                                阅读全文
                                              </button>

                                              <!-- Modal -->
                                              <div class="modal fade" id="exampleModalLong_7" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                  <div class="modal-content">
                                                    <div class="modal-header">
                                                      <h5 class="modal-title" >文章全文</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                      </button>
                                                    </div>
                                                    <div class="modal-body">
                                                      <h5 class="header-title">首档“AI 音乐公投榜”背后：小度助推人工智能时代“打榜”</h5>
                                                      <h6 class="header-title">快科技</h6>


                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;在人工智能时代，众多行业迎来了新技术对品牌运营和商业运作的革新。最近音乐界就有这样一个例子——“2019 年小度 AI 音乐排行榜”发布，一众音乐界大咖均有均有斩获，纷纷在社交网络上表示了对粉丝和平台的谢意。他们作为当下热度颇高的明星，现身各路音乐排行榜本是家常便饭，但敏锐的网友们很快发现了不同——小度 AI 音乐排行榜是百度旗下人工智能品牌小度发布的、首个基于AI音乐服务用户大数据的华语音乐排行榜。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;这份榜单的独特之处在于，一方面，人工智能技术的加入，让“打榜”行为更加精准有效，并且更受年轻群体喜爱;另一方面，人工智能技术也在进一步扩大艺人的影响力和商业价值，为娱乐圈在人工智能时代的营销方式提供了范本。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;全新“打榜”方式更受粉丝青睐?小度AI音乐排行榜受圈内重视。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;这些大咖都是音乐界知名艺人，其音乐生涯获奖无数，但不约而同地拍照录视频表示谢意与喜悦，可见他们对“2019 年小度 AI 音乐排行榜”、以及小度平台上数以千万计粉丝群体的重视程度。国内首档“AI 音乐公投榜”不仅聚拢了最核心的AI智能时代用户粉丝，也更加精准的折射出了人工智能时代艺人们的受欢迎程度。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;传统音乐榜单的统计方式，单纯来源于歌曲专辑的点击数量，难免过于粗犷——用户随机点歌、随机切歌等行为和错误操作，都会被统计在内，这样体现出来的用户倾向不够明确，导致现存的各类音乐榜单在精准度上仍然存在很大的提升空间。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;但在小度平台上，有着基于人工智能技术的更多维、精准的评选方式：它是以语音点播、有效播放、收藏、付费及 AI 交互技能下音乐消费行为数据为基础，通过多纬度的统计算法对歌手综合 HOT 指数进行最终排名。
                                                      </p>
                                                      <p class="card-text">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;举例来说，用户使用小度系列智能音箱产品时，会用语音报出歌手名或歌曲名，这样的“打榜”行为明显更具有说服力，再结合用户是否有收藏、付费、完整地听完歌等行为，进一步明确用户的倾向，减少无效点击的影响，使这份榜单更加精准，也更吸引年轻粉丝参与。
                                                      </p>
                                                      <p class="card-text">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;AI技术带来全新“打榜”方式的同时，“2019 年小度 AI 音乐排行榜”诞生的另一大背景在于，平台流量达到了足够大的规模——国际权威数据机构Canalys和Strategy Analytics发布的市场报告显示，小度拿下了2019年中国智能音箱出货量的头名，同时百度2019年第四季度财报也提到，小度品牌第一方硬件语音交互次数高达惊人的23亿次。设备基数和互动次数的高速增长，催生了这份特殊的榜单。
                                                      </p>
                                                      <p class="card-text">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;由此可见，登上小度AI音乐榜单对艺人的影响是多方面的，人工智能时代下，音乐榜单评选变得更加智能化和多元化，悄然改变了音乐界流量分发、粉丝引流、营销变现的方式，这也是小度AI音乐排行榜带来的娱乐新风向，可以预见在未来数年内，“AI榜单”的分量将愈加吃重，成为人工智能技术改变传统行业的典型范例之一。
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
                                  <div class="col-md-4 " data-name="box"  style="float: left">
                                      <div class="card">
                                          <div class="card-header card-header-text card-header-blue">
                                            <div class="card-text">
                                              <h4 class="card-title">超越Google：阿里云四个第一打破AI...</h4>
                                            </div>
                                          </div>
                                          <div class="card-body"  style="height: 215px; width: 360px;">
                                            <h5 class="header-title">快科技</h5>
                                            <p class="card-text" style="height: 60px; width: 350px; overflow: auto">
                                                阿里巴巴 人工智能 阿里云 深度学习
                                            </p>
                                            <p class="card-text">
                                                时间：2020-04-03 15:27:56
                                            </p>

                                              <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong_8">
                                                阅读全文
                                              </button>

                                              <!-- Modal -->
                                              <div class="modal fade" id="exampleModalLong_8" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                  <div class="modal-content">
                                                    <div class="modal-header">
                                                      <h5 class="modal-title" >文章全文</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                      </button>
                                                    </div>
                                                    <div class="modal-body">
                                                      <h5 class="header-title">超越Google：阿里云四个第一打破AI计算世界纪录</h5>
                                                      <h6 class="header-title">快科技</h6>


                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;近日，斯坦福大学公布了最新的DAWNBench深度学习榜单，阿里云表现惊艳，打破了Google等企业创造的纪录，包揽图像识别比赛的四项第一，这也意味着阿里云可提供全球最快的AI计算服务。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;斯坦福大学DAWNBench是人工智能领域最权威的竞赛之一，也是衡量深度学习优化策略、模型架构、软件框架、云和硬件等综合解决方案实力的标准之一。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;在最新的Image Classification on ImageNet图像识别榜单中，阿里云一举包揽了训练时间、训练成本、推理延迟、推理成本四项第一，打破了Google等保持了一年多的纪录。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;DAWNBench官方数据显示，阿里云异构计算服务训练ImageNet 128万张图片仅需2分38秒，而基于阿里含光800芯片的AI服务识别一张图片仅需0.0739ms，同时在训练成本和推理成本上也实现世界纪录的突破。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;据悉，此次阿里云创造四项纪录得益于阿里云自研加速框架AIACC及平头哥含光800。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;AIACC是阿里云自主研发的飞天AI加速引擎，首次实现了统一加速Tensorflow、PyTorch、MxNet、Caffe等主流深度学习框架，在相同的硬件平台下能显著提升人工智能训练与推理的性能。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;含光800是阿里巴巴第一颗自研芯片，也是全球性能最强的AI推理芯片，性能及能效比全球第一，基于含光800的AI云服务每秒可实现1600万亿次级别深度学习计算。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;阿里云计算平台通过软硬件协同创新，实现了AI性能上的大幅提升，目前相关AI计算服务已经在图像识别、语音识别、内容推荐、自动驾驶、自然语言理解等人工智能场景得到了大规模应用。比如国内AI创业公司地平线，采用阿里云AI计算服务进行深度学习训练，性能提升了3倍，并显著降低训练成本。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;据了解，阿里云已开源了基于AIACC加速引擎的AI解决方案，基于含光800的AI云服务也将对外开放。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;相关消息，阿里云近日在企业层面也拿到了两个第一。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;一是在新出的Gartner容器报告中，阿里云覆盖九项容器产品，布局并列全球第一，并成为连续两年唯一入选该报告的中国企业。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;二是中央国家机关政府采购中心数据显示，阿里云位列中央国家机关云计算采购市场第一，份额超过50%。
                                                      </p>
                                                    </div>
                                                    <div class="modal-footer">
                                                      <button type="button" class="btn btn-blue" data-dismiss="modal">阅读完毕</button>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="col-md-4 " data-name="box"  style="float: left">
                                      <div class="card">
                                          <div class="card-header card-header-text card-header-blue">
                                            <div class="card-text">
                                              <h4 class="card-title">多家美国顶级大学与微软成立AI研究联盟</h4>
                                            </div>
                                          </div>
                                          <div class="card-body"  style="height: 215px; width: 360px;">
                                            <h5 class="header-title">快科技</h5>
                                            <p class="card-text" style="height: 60px; width: 350px; overflow: auto">
                                                美国  人工智能  计算机  新冠病毒
                                            </p>
                                            <p class="card-text">
                                                时间：2020-03-30 14:47:22
                                            </p>
                                              <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong_12">
                                                阅读全文
                                              </button>

                                              <!-- Modal -->
                                              <div class="modal fade" id="exampleModalLong_12" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                  <div class="modal-content">
                                                    <div class="modal-header">
                                                      <h5 class="modal-title" >阅读全文</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                      </button>
                                                    </div>
                                                    <div class="modal-body">
                                                      <h5 class="header-title">多家美国顶级大学与微软成立AI研究联盟 试图用AI来对抗新冠病毒</h5>
                                                      <h6 class="header-title">快科技</h6>

                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;据外媒报道称，近日美国多家顶级大学和微软结盟，试图使用人工智能（AI）和超级计算机来攻克新冠病毒。这个新研究联盟被称为“C3.ai 数字转型研究所”。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;新研究联盟的成员包括普林斯顿大学、卡内基梅隆大学、麻省理工学院、加州大学、伊利诺伊大学、芝加哥大学、C3.ai 和微软。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;人工智能公司C3.ai的创始人兼CEO Thomas M. Siebel 表示，这个公私合营的联盟将在最初的五年里投入3.67亿美元，它提供的第一批经费将用于寻找遏制席卷全球的新冠病毒的方法。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;目前该研究所的主要研究者来自该联盟的大学和公司机构，但也允许其他机构的合作伙伴和团队成员参与。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;该研究所表示，首个针对新型冠状病毒的提案征集活动的截止日期为2020年5月1日，并计划在6月发放第一笔资助。
                                                      </p>
                                                    </div>
                                                    <div class="modal-footer">
                                                      <button type="button" class="btn btn-blue" data-dismiss="modal">阅读完毕</button>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                </div>
                                <div class="row">
                                  <div class="col-md-4 " data-name="box"  style="float: left">
                                      <div class="card">
                                          <div class="card-header card-header-text card-header-blue">
                                            <div class="card-text">
                                              <h4 class="card-title">只需1499欧元！谷歌研发AI眼镜...</h4>
                                            </div>
                                          </div>
                                          <div class="card-body"  style="height: 215px; width: 360px;">
                                            <h5 class="header-title">快科技</h5>
                                            <p class="card-text" style="height: 60px; width: 350px; overflow: auto">
                                                谷歌  人工智能  眼镜  盲人
                                            </p>
                                            <p class="card-text">
                                                时间：2020-03-11 20:48:56
                                            </p>
                                              <!-- <a href="{%  url "recommend_by_emotion_Para" "1094293345" %}" target="_blank" class="card-link">根据情感推荐</a>
                                              <a href="{%  url "recommend_by_portrayal_Para" "1094293345" %}" target="_blank" class="card-link">根据画像推荐</a> -->
                                              <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong_9">
                                                阅读全文
                                              </button>

                                              <!-- Modal -->
                                              <div class="modal fade" id="exampleModalLong_9" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                  <div class="modal-content">
                                                    <div class="modal-header">
                                                      <h5 class="modal-title" >文章全文</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                      </button>
                                                    </div>
                                                    <div class="modal-body">
                                                      <h5 class="header-title">只需1499欧元！谷歌研发AI眼镜 盲人也能看世界</h5>
                                                      <h6 class="header-title">快科技</h6>


                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;3月11日，据外媒报道，荷兰一家初创公司Envision与谷歌眼镜（Google Glass）合作，开发人工智能眼镜，帮助盲人和视力受损的人看东西。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;这款眼镜可以从人、物品和公共交通工具的图像中提取信息，然后用语言告诉佩戴者。它可以阅读书本上的文字，记住朋友的脸和对应的名字，还可以描述周围的环境，如火车标志和警告标示。视力受损的佩戴者可以用眼镜看烹饪书上的食谱，去杂货店找到配料，然后回家自己烹饪。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;该设备由总部位于荷兰海牙的Envision公司开发，并与谷歌眼镜合作。Envision声称该软件是目前最快、最准确的光学字符识别 (OCR)软件，能够从任何类型的表面，从食品标签到手写体，读取超过60种语言的任何文本。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;根据国际预防失明机构(IAPB)的数据，全球73亿人口中，视力障碍者有2.53亿人，其中3600万为盲人，2.17亿为中度至重度视觉障碍。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;目前，该智能眼镜可以在Envision官网进行预定，有两种规格可以选，价格为1499欧元和1699欧元。2020年8月开始发货后，正式零售价将达到1899欧元。
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
                                  <div class="col-md-4 " data-name="box"  style="float: left">
                                      <div class="card">
                                          <div class="card-header card-header-text card-header-blue">
                                            <div class="card-text">
                                              <h4 class="card-title">世卫组织考察腾讯：中国唯一一家科技...</h4>
                                            </div>
                                          </div>
                                          <div class="card-body"  style="height: 215px; width: 360px;">
                                            <h5 class="header-title">快科技</h5>
                                            <p class="card-text" style="height: 60px; width: 350px; overflow: auto">
                                                腾讯 人工智能 大数据
                                            </p>
                                            <p class="card-text">
                                                时间：2020-03-02 12:24:29
                                            </p>

                                              <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong_10">
                                                阅读全文
                                              </button>

                                              <!-- Modal -->
                                              <div class="modal fade" id="exampleModalLong_10" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                  <div class="modal-content">
                                                    <div class="modal-header">
                                                      <h5 class="modal-title" >文章全文</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                      </button>
                                                    </div>
                                                    <div class="modal-body">
                                                      <h5 class="header-title">世卫组织考察腾讯：中国唯一一家科技企业</h5>
                                                      <h6 class="header-title">快科技</h6>


                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;2月29日，世卫组织(WHO)公布中国新冠疫情考察报告，称赞“中国采取了历史上最勇敢、最灵活、最积极的防控措施”，其中，深圳疫情防控被作为唯一一个城市个案进行了分析。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;值得一提的是，在为期9天的行程中，世卫组织考察组对北京、四川、广东、湖北等省市进行了实地考察和调研，其中2月18、19日到访深圳的6个地点，这其中就有腾讯公司，调研的正是科技公司如何利用大数据防控疫情。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;事实上，腾讯也是世卫组织在华考察全程中，去过的唯一一家科技企业。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;世卫组织在报告中提到，中国应用大数据和人工智能等新技术，加强了对密切接触者和重点人群的管理，并积极利用前沿科技，促进防控措施的创新，比如将常规医疗和教学工作转移到在线医疗平台，使用5G平台支持农村地区防控工作。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;面对本次疫情，腾讯也是寄出了多项前沿技术支持防控，比如医疗辅助
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;面对大量新冠肺炎病人的诊断需求，腾讯拿出搭载最新“腾讯觅影”AI的应急专用CT装备，支援湖北前线医院，最快2秒就能完成AI模式识别，1分钟内即可为医生提供辅助诊断参考。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;健康登记：疫情期间，腾讯上线了“防疫健康码”，目前已经落地上海、黑龙江、湖南、广州、武汉等多个省市，超100个城市计划上线，覆盖超过7亿人口，累计亮码人次近6亿，是服务用户最多的健康码。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;公共出行：腾讯紧急上线“乘车登记码”，上车扫码登记后，如有疫情发生，将第一时间通过通知同乘乘客。目前已在北京、上海、深圳、宁波、阜阳等13个城市落地。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;在线教育：聚合腾讯会议、企业微信、腾讯QQ、腾讯教育等产品资源，提供包括在线直播、在线课程、协同办公、教务教学管理在内的“全家桶”解决方案。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;其中，光腾讯教育已服务于30多省市教育主管部门，助力万所学校数千万师生在线教学。
                                                      </p>
                                                    </div>
                                                    <div class="modal-footer">
                                                      <button type="button" class="btn btn-blue" data-dismiss="modal">阅读完毕</button>
                                                    </div>
                                                  </div>
                                                </div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="col-md-4 " data-name="box"  style="float: left">
                                      <div class="card">
                                          <div class="card-header card-header-text card-header-blue">
                                            <div class="card-text">
                                              <h4 class="card-title">收购三年成弃儿：Intel AI功臣离职</h4>
                                            </div>
                                          </div>
                                          <div class="card-body"  style="height: 215px; width: 360px;">
                                            <h5 class="header-title">快科技</h5>
                                            <p class="card-text" style="height: 60px; width: 350px; overflow: auto">
                                                英特尔  人工智能
                                            </p>
                                            <p class="card-text">
                                                时间：2020-04-09 10:40:54
                                            </p>
                                              <button type="button" class="btn btn-blue btn-fill btn-sm" data-toggle="modal" data-target="#exampleModalLong_11">
                                                阅读全文
                                              </button>

                                              <!-- Modal -->
                                              <div class="modal fade" id="exampleModalLong_11" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                  <div class="modal-content">
                                                    <div class="modal-header">
                                                      <h5 class="modal-title" >阅读全文</h5>
                                                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">&times;</span>
                                                      </button>
                                                    </div>
                                                    <div class="modal-body">
                                                      <h5 class="header-title">收购三年成弃儿：Intel AI功臣离职</h5>
                                                      <h6 class="header-title">快科技</h6>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;Intel企业副总裁、AI平台事业部负责人Naveen Rao宣布，将于3月11日正式离职。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;Intel对他表达了深深地感谢，称其打造了一个世界级的AI团队，而他本人表示：“能在Intel内部组建一个新品牌，并聚焦于AI，这绝对是非凡的体验。随着AI的逐渐成熟，祝福所有同事一切顺利。”
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;2016年，Intel斥资4.08亿美元收购AI创业企业Nervana，联合创始人Naveen Rao随之进入Intel，很快就被任命为新成立的AI产品事业部的企业副总裁，该部门在去年更名为AI平台事业部，重要程度进一步提升。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;Naveen Rao还负责了去年发布的两款重量级Nervana产品，一个是16nm工艺的AI训练用NNP-T，另一个是10nm的AI推理用NNP-I。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;不过在2019年12月，Intel又花了20亿美元收购意大利AI创业企业Habana Labs，其业务和Nervana存在很大重叠，Intel也在仅仅一个月之后就宣布未来将专注于Habana Labs的产品和业务，Nervana成为弃儿，相关产品停止开发。
                                                      </p>
                                                      <p class="card-text">
                                                          &nbsp;&nbsp;&nbsp;&nbsp;这种情况下，Naveen Rao走人也就在情理之中。
                                                      </p>
                                                      <p class="card-text">
                                                        &nbsp;&nbsp;&nbsp;&nbsp;Intel已经任命此前曾在Naveen Rao手下工作、负责推理产品事业部的Gadi Singer接替他的职务。
                                                      </p>


                                                    </div>
                                                    <div class="modal-footer">
                                                      <button type="button" class="btn btn-blue" data-dismiss="modal">阅读完毕</button>
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
            </script>,made with <i class="material-icons">favorite</i>
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
  	 var myChart = echarts.init(document.getElementById("settings_main_line"));
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
             bottom: 50,
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
                 start: 10,      // 左边在 10% 的位置。
                 end: 60 ,      // 右边在 60% 的位置。
                 top: 95,
                 left: 5

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
                 data: []
             }
         ]
     };
     $.getJSON('/json_category/category_time_count10000.json',function(data) {
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
         myChart.setOption({
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
     myChart.setOption(option);
  </script>

  <script>
  var myChart_pie = echarts.init(document.getElementById('settings_main_pie'));
  var option = {
        legend: {},
        tooltip: {
            trigger: 'axis',
            showContent: false
        },
        dataset: {
            source: [
                [],
                [],
                [],
                [],
                [],
                [],
                []

            ]
        },
        xAxis: {type: 'category'},
        yAxis: {gridIndex: 0},
        grid: {top: '55%'},
        series: [
            {type: 'line', smooth: true, seriesLayoutBy: 'row'},
            {type: 'line', smooth: true, seriesLayoutBy: 'row'},
            {type: 'line', smooth: true, seriesLayoutBy: 'row'},
            {type: 'line', smooth: true, seriesLayoutBy: 'row'},
            {type: 'line', smooth: true, seriesLayoutBy: 'row'},
            {type: 'line', smooth: true, seriesLayoutBy: 'row'},
            {
                type: 'pie',
                id: 'pie',
                radius: '30%',
                center: ['50%', '25%'],
                label: {
                    formatter:'{b}: {@'+"2019-8"+'} ({d}%)'
                },
                encode: {
                    itemName: "product",
                    value: "2019-8",
                    tooltip: "2019-8"
                }
            }
        ]
    };
    $.getJSON('./json_category/category_time_count.json',function(data){
      //  var a=data.category_group;
        var b=data.time;
        var c1=data.data0;
        var c2=data.data1;
        var c3=data.data2;
        var c4=data.data3;
        var c5=data.data4;
        var c6=data.data5;
          myChart_pie.setOption({
              dataset: {
                  source: [
                      b,
                      c1,
                      c2,
                      c3,
                      c4,
                      c5,
                      c6
                  ]
              },

              series: [
                  {
                      type: 'pie',
                      id: 'pie',
                      radius: '30%',
                      center: ['50%', '25%'],
                      label: {
                          formatter: '{b}: {@'+b[1]+'} ({d}%)'
                      },
                      encode: {
                          value: b[1],
                          tooltip: b[1]
                      }
                  }
              ]
          });
      });
    myChart_pie.on('updateAxisPointer', function (event) {
        var xAxisInfo = event.axesInfo[0];
        if (xAxisInfo) {
            var dimension = xAxisInfo.value + 1;
            myChart.setOption({
                series: {
                    id: 'pie',
                    label: {
                        formatter: '{b}: {@[' + dimension + ']} ({d}%)'
                    },
                    encode: {
                        value: dimension,
                        tooltip: dimension
                    }
                }
            });
        }
    });

    myChart_pie.setOption(option);

 </script>
  <script>
           var myChart1 = echarts.init(document.getElementById('settings_main1'));
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
           $.getJSON("./json_category/keywords_dict_every_cluster10000_0.json",function(data){
             var data_dict=[];
             for (var name in data) {
                 data_dict.push({
                     name: name,
                     value: data[name]
                 })
             }
             myChart1.setOption({
               series:[{
                 data:data_dict
               }]
             })
           });
           myChart1.setOption(option);
           window.onresize = myChart1.resize;
 </script>

 <script>
          var myChart2 = echarts.init(document.getElementById('settings_main2'));
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
          $.getJSON("./json_category/keywords_dict_every_cluster10000_1.json",function(data){
            var data_dict=[];
            for (var name in data) {
                data_dict.push({
                    name: name,
                    value: data[name]
                })
            }
            myChart2.setOption({
              series:[{
                data:data_dict
              }]
            })
          });
          myChart2.setOption(option);
          window.onresize = myChart2.resize;
</script>
<script>
         var myChart3 = echarts.init(document.getElementById('settings_main3'));
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
           myChart3.setOption({
             series:[{
               data:data_dict
             }]
           })
         });
         myChart3.setOption(option);
         window.onresize = myChart3.resize;
</script>
<script>
         var myChart4 = echarts.init(document.getElementById('settings_main4'));
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
           myChart4.setOption({
             series:[{
               data:data_dict
             }]
           })
         });
         myChart4.setOption(option);
         window.onresize = myChart4.resize;
</script>
<script>
         var myChart5 = echarts.init(document.getElementById('settings_main5'));
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
           myChart5.setOption({
             series:[{
               data:data_dict
             }]
           })
         });
         myChart5.setOption(option);
         window.onresize = myChart5.resize;
</script>
<script>
         var myChart6 = echarts.init(document.getElementById('settings_main6'));
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
           myChart6.setOption({
             series:[{
               data:data_dict
             }]
           })
         });
         myChart6.setOption(option);
         window.onresize = myChart6.resize;
</script>

<#--  <script>-->
<#--    function Register_user(){-->
<#--      var username=document.getElementById("username");-->
<#--      var pass1=document.getElementById("first_pass");-->
<#--      var pass2=document.getElementById("second_pass");-->
<#--      if(username!==''&&pass1!==''&&pass2!==''){-->
<#--        alert("注册成功！");-->
<#--      }-->
<#--      else{-->
<#--        $("#RegisteredModal").on("hidden.bs.modal", function() {-->
<#--            $(this).removeData("bs.modal");-->
<#--        });-->
<#--      }-->
<#--    }-->
<#--  </script>-->

<!--  <script>
    $(function() {
        $('#RegisteredModal').model('hide')
    });
  </script>
  <script>
    $(function() {
        $('#RegisteredModal').on('hide.bs.modal',
        function() {
            alert('放弃注册');
        })
    });
  </script>-->
<#--  <script>-->
<#--    function Login_user(){-->
<#--      var myusername=document.getElementById("username1");-->
<#--      var mypass=document.getElementById("password1");-->
<#--      var registerLink=document.getElementById("registerLink");-->
<#--      var loginLink=document.getElementById("loginLink");-->
<#--      var personLink=document.getElementById("personLink");-->
<#--      if(myusername!=''&&mypass!=''){-->
<#--        alert("登录成功！");-->
<#--        registerLink.style.display='none';-->
<#--        loginLink.style.display='none';-->
<#--        personLink.style.display='inline';-->
<#--      }-->
<#--      else{-->
<#--        $("#LoginModal").on("hidden.bs.modal", function() {-->
<#--            $(this).removeData("bs.modal");-->
<#--        });-->
<#--        alert("用户名密码错误，重新登录！")-->
<#--      }-->
<#--    }-->
<#--  </script>-->

<!--  <script>
    $(function(){
      $('#LoginModal').model('hide')
    });
  </script>
  <script>
    $(function() {
        $('#LoginModal').on('hide.bs.modal',
        function() {
            alert('放弃登录');
        })
    });
  </script>-->


  <script src="./js/core/popper.min.js"></script>
  <script src="./js/core/bootstrap-material-design.min.js"></script>
  <script src="./js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="./js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="./js/plugins/sweetalert2.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="./js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="./js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="../static/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <script src="./js/plugins/bootstrap-datetimepicker.min.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="./js/plugins/jquery.dataTables.min.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="./js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="./js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="./js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="./js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="./js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="./js/plugins/arrive.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="./js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="./js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="./js/material-dashboard.js?v=2.1.2" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="./demo/demo.js"></script>
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
      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();

    });
  </script>
</body>

</html>
