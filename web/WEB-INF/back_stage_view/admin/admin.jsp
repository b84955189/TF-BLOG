<%@ page import="utils.R" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>首页 - 听风-微管理(TF-TIM)后台</title>
    <link rel="icon" href="favicon.ico" type="image/ico">
    <meta name="keywords" content="听风-微管理(TF-TIM)后台">
    <meta name="description" content="听风-微管理(TF-TIM),小型信息管理系统。">
    <meta name="author" content="Jason.">
    <link href="${pageContext.request.contextPath}/static/light_year_ui/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/light_year_ui/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/light_year_ui/css/materialdesignicons.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/light_year_ui/css/style.min.css" rel="stylesheet">
    <!--Start 左侧导航数据-->
    <jsp:include page="<%=R.GLOBAL_URL.GLOBAL_URL_NAV_MENU_DATA_LIST%>"></jsp:include>
    <!--End 左侧导航数据-->
</head>

<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--Start 左侧导航-->
        <jsp:include page="<%=R.GLOBAL_URL.GLOBAL_URL_NAV_COMPONENT%>"></jsp:include>
        <!--End 左侧导航-->

        <!--头部信息-->
        <header class="lyear-layout-header">

            <nav class="navbar navbar-default">
                <div class="topbar">

                    <div class="topbar-left">
                        <div class="lyear-aside-toggler">
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                            <span class="lyear-toggler-bar"></span>
                        </div>
                        <span class="navbar-page-title"> 后台首页 </span>
                    </div>
                    <!--Start 右侧主题&用户信息模块-->
                    <jsp:include page="<%=R.GLOBAL_URL.GLOBAL_URL_RIGHT_THEME_USER_COMPONENT%>"></jsp:include>
                    <!--End 右侧主题&用户信息模块-->


                </div>
            </nav>

        </header>
        <!--End 头部信息-->

        <!--页面主要内容-->
        <main class="lyear-layout-content">

            <div class="container-fluid">

                <div class="row">
                    <div class="col-sm-6 col-lg-3">
                        <div class="card bg-primary">
                            <div class="card-body clearfix">
                                <div class="pull-right">
                                    <p class="h6 text-white m-t-0">今日收入</p>
                                    <p class="h3 text-white m-b-0">102,125.00</p>
                                </div>
                                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-currency-cny fa-1-5x"></i></span> </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-lg-3">
                        <div class="card bg-danger">
                            <div class="card-body clearfix">
                                <div class="pull-right">
                                    <p class="h6 text-white m-t-0">用户总数</p>
                                    <p class="h3 text-white m-b-0">920,000</p>
                                </div>
                                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-account fa-1-5x"></i></span> </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-lg-3">
                        <div class="card bg-success">
                            <div class="card-body clearfix">
                                <div class="pull-right">
                                    <p class="h6 text-white m-t-0">下载总量</p>
                                    <p class="h3 text-white m-b-0">34,005,000</p>
                                </div>
                                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-arrow-down-bold fa-1-5x"></i></span> </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-sm-6 col-lg-3">
                        <div class="card bg-purple">
                            <div class="card-body clearfix">
                                <div class="pull-right">
                                    <p class="h6 text-white m-t-0">新增留言</p>
                                    <p class="h3 text-white m-b-0">153 条</p>
                                </div>
                                <div class="pull-left"> <span class="img-avatar img-avatar-48 bg-translucent"><i class="mdi mdi-comment-outline fa-1-5x"></i></span> </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">

                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4>每周用户</h4>
                            </div>
                            <div class="card-body">
                                <canvas class="js-chartjs-bars"></canvas>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="card">
                            <div class="card-header">
                                <h4>交易历史记录</h4>
                            </div>
                            <div class="card-body">
                                <canvas class="js-chartjs-lines"></canvas>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="row">

                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <h4>项目信息</h4>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                        <tr>
                                            <th>#</th>
                                            <th>项目名称</th>
                                            <th>开始日期</th>
                                            <th>截止日期</th>
                                            <th>状态</th>
                                            <th>进度</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>设计新主题</td>
                                            <td>10/02/2019</td>
                                            <td>12/05/2019</td>
                                            <td><span class="label label-warning">待定</span></td>
                                            <td>
                                                <div class="progress progress-striped progress-sm">
                                                    <div class="progress-bar progress-bar-warning" style="width: 45%;"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>网站重新设计</td>
                                            <td>01/03/2019</td>
                                            <td>12/04/2019</td>
                                            <td><span class="label label-success">进行中</span></td>
                                            <td>
                                                <div class="progress progress-striped progress-sm">
                                                    <div class="progress-bar progress-bar-success" style="width: 30%;"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>模型设计</td>
                                            <td>10/10/2019</td>
                                            <td>12/11/2019</td>
                                            <td><span class="label label-warning">待定</span></td>
                                            <td>
                                                <div class="progress progress-striped progress-sm">
                                                    <div class="progress-bar progress-bar-warning" style="width: 25%;"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>后台管理系统模板设计</td>
                                            <td>25/01/2019</td>
                                            <td>09/05/2019</td>
                                            <td><span class="label label-success">进行中</span></td>
                                            <td>
                                                <div class="progress progress-striped progress-sm">
                                                    <div class="progress-bar progress-bar-success" style="width: 55%;"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>前端设计</td>
                                            <td>10/10/2019</td>
                                            <td>12/12/2019</td>
                                            <td><span class="label label-danger">未开始</span></td>
                                            <td>
                                                <div class="progress progress-striped progress-sm">
                                                    <div class="progress-bar progress-bar-danger" style="width: 0%;"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>桌面软件测试</td>
                                            <td>10/01/2019</td>
                                            <td>29/03/2019</td>
                                            <td><span class="label label-success">进行中</span></td>
                                            <td>
                                                <div class="progress progress-striped progress-sm">
                                                    <div class="progress-bar progress-bar-success" style="width: 75%;"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>APP改版开发</td>
                                            <td>25/02/2019</td>
                                            <td>12/05/2019</td>
                                            <td><span class="label label-danger">暂停</span></td>
                                            <td>
                                                <div class="progress progress-striped progress-sm">
                                                    <div class="progress-bar progress-bar-danger" style="width: 15%;"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>Logo设计</td>
                                            <td>10/02/2019</td>
                                            <td>01/03/2019</td>
                                            <td><span class="label label-warning">完成</span></td>
                                            <td>
                                                <div class="progress progress-striped progress-sm">
                                                    <div class="progress-bar progress-bar-success" style="width: 100%;"></div>
                                                </div>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </main>
        <!--End 页面主要内容-->
    </div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/light_year_ui/js/jquery.min.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/light_year_ui/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/light_year_ui/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/light_year_ui/js/main.min.js"></script>
<!--左侧导航-->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/light_year_ui/js/slide_menu.js"></script>
<!--主题保存-->
<script src="https://cdn.bootcdn.net/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/light_year_ui/js/theme_status.js"></script>

<!--图表插件-->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/light_year_ui/js/Chart.js"></script>
<!--消息提示-->
<script src="${pageContext.request.contextPath}/static/light_year_ui/js/bootstrap-notify.min.js"></script>
<script src="${pageContext.request.contextPath}/static/light_year_ui/js/loading.js"></script>
<script type="text/javascript">
    //********加载动画***********
    loading.loading('show');
    document.onreadystatechange=function(){
        if(document.readyState==='complete'){
            setTimeout(function () {
                loading.loading('hide');
            },500)
        }
    }
    //*************************
    $(document).ready(function(e) {
        var $dashChartBarsCnt  = jQuery( '.js-chartjs-bars' )[0].getContext( '2d' ),
            $dashChartLinesCnt = jQuery( '.js-chartjs-lines' )[0].getContext( '2d' );

        var $dashChartBarsData = {
            labels: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
            datasets: [
                {
                    label: '注册用户',
                    borderWidth: 1,
                    borderColor: 'rgba(0,0,0,0)',
                    backgroundColor: 'rgba(51,202,185,0.5)',
                    hoverBackgroundColor: "rgba(51,202,185,0.7)",
                    hoverBorderColor: "rgba(0,0,0,0)",
                    data: [2500, 1500, 1200, 3200, 4800, 3500, 1500]
                }
            ]
        };
        var $dashChartLinesData = {
            labels: ['2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014'],
            datasets: [
                {
                    label: '交易资金',
                    data: [20, 25, 40, 30, 45, 40, 55, 40, 48, 40, 42, 50],
                    borderColor: '#358ed7',
                    backgroundColor: 'rgba(53, 142, 215, 0.175)',
                    borderWidth: 1,
                    fill: false,
                    lineTension: 0.5
                }
            ]
        };

        new Chart($dashChartBarsCnt, {
            type: 'bar',
            data: $dashChartBarsData
        });

        var myLineChart = new Chart($dashChartLinesCnt, {
            type: 'line',
            data: $dashChartLinesData,
        });
    });
</script>
</body>
</html>
<%-- author:Jason Date: 6/10/2020 5:10 PM--%>