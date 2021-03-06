<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>视界-首页</title>

    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/static/bilibiliIndex/css/reset.css">
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/static/bilibiliIndex/css/common.css">
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/static/bilibiliIndex/css/index.css">

    <script
            src="<%=request.getContextPath()%>/static/Homepage/js/jquery.min.js"></script>
    <script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
    <script
            src="<%=request.getContextPath()%>/static/bilibiliIndex/js/script.js"></script>
</head>
<body>


<header id="header">
    <div id="page_top">
        <div class="bg-wrap">
            <div class="bg"></div>
            <div class="mask"></div>
        </div>
        <div class="header-top">
            <div class="page-width clearfix">
                <div class="header-top__nav">
                    <ul>
                        <li class="item item-home"><a href="index.sf">主站</a></li>
                        <li class="item"><a href="Shopping.sf">周边</a></li>
                        <li class="item"><a href="Shopping.sf">商品购买</a>
                        <li class="item"><a href="videoFileTop">上传视频</a>
                        <li class="item"><a href="forum.sf">进入论坛</a></li>
                    </ul>
                </div>

                <div class="header-top__user">
                    <%
                        if (request.getSession().getAttribute("userName") == null) {
                    %>
                    <div class="login-box">
                        <a href="login.sf">登录</a> <span></span> <a href="zhuce.sf">注册</a>
                    </div>

                    <%
                    } else {

                    %>
                    <div style="margin-top: 5px;"><!-- onmouseover="project()" -->
                        <span style="color: white;"><a href="User_full_information.sf" style="color: white;">欢迎你的登录: &nbsp; &nbsp; &nbsp;<%=request.getSession().getAttribute("userName") %></a>
						<a href="exect.sf" style="color: white;margin-top: 5%">退出登录</a></span>
                        &nbsp;&nbsp;&nbsp;
                    </div>
                    <%} %>
                </div>
            </div>
            <script type="text/javascript">
                $(document).ready(function () {
                    $("#div2").hide();

                })

                function asjdh() {//移出
                    //alert("1");
                    $("#div2").hide();
                }

                function project() {//移入
                    //alert("2");
                    $("#div2").show();
                }
            </script>
        </div>
    </div>
    </div>
    </div>
    <div class="header-c">
        <div class="page-width">
            <a href="#" id="header_logo"></a>
            <p id="header_title"></p>

            <div class="header-title">哔哩哔哩 (゜-゜)つロ 干杯~</div>
        </div>
    </div>
</header>

<nav id="nav">
    <div class="page-width clearfix">
        <ul class="nav-list">
            <li class="item item-home"><a href="index.sf" class="link">首页</a>
            </li>
            <!-- <li class="item" class="link">&nbsp&nbsp&nbsp&nbsp&nbsp</li> -->
            <li class="item"><a href="fenlei.sf?category=1" class="link">
                <div class="num">
                    <i>一</i>
                </div>
                动态
            </a></li>
            <!-- <li class="item" class="link">&nbsp&nbsp&nbsp&nbsp&nbsp</li> -->
            <li class="item"><a href="fenlei.sf?category=2" class="link">
                <div class="num">
                    <i>二</i>
                </div>
                热门
            </a></li>
            <!-- <li class="item" class="link">&nbsp&nbsp&nbsp&nbsp&nbsp</li> -->
            <li class="item"><a href="fenlei.sf?category=3" class="link">
                <div class="num">
                    <i>三</i>
                </div>
                频道
            </a></li>
            <!-- <li class="item" class="link">&nbsp&nbsp&nbsp&nbsp&nbsp</li> -->
            <li class="item"><a href="fenlei.sf?category=4" class="link">
                <div class="num">
                    <i>四</i>
                </div>
                动画
            </a></li>
            <!-- <li class="item" class="link">&nbsp&nbsp&nbsp&nbsp&nbsp</li> -->
            <li class="item"><a href="fenlei.sf?category=5" class="link">
                <div class="num">
                    <i>五</i>
                </div>
                音乐
            </a></li>
            <li class="item"><a href="fenlei.sf?category=1" class="link">
                <div class="num">
                    <i>999+</i>
                </div>
                舞蹈
            </a></li>
            <li class="item"><a href="fenlei.sf?category=2" class="link">
                <div class="num">
                    <i>999+</i>
                </div>
                番剧
            </a></li>
            <li class="item"><a href="fenlei.sf?category=3" class="link">
                <div class="num">
                    <i>77</i>
                </div>
                鬼畜
            </a></li>
            <li class="item"><a href="fenlei.sf?category=4" class="link">
                <div class="num">
                    <i>416</i>
                </div>
                科技
            </a></li>
            <li class="item"><a href="fenlei.sf?category=5" class="link">
                <div class="num">
                    <i>100</i>
                </div>
                知识
            </a></li>
            <li class="item"><a href="fenlei.sf?category=1" class="link">
                <div class="num">
                    <i>999+</i>
                </div>
                生活
            </a></li>
            <li class="item"><a href="fenlei.sf?category=2" class="link">
                <div class="num">
                    <i>916</i>
                </div>
                游戏
            </a></li>
            -->
            <li class="item item-square"><a href="fenlei.sf" class="link">广场</a>
                <div class="nav-square__hover">
                    <ul>
                        <li><a href="#"><i class="icon-activity"></i>活动中心</a></li>
                        <li><a href="#"><i class="icon-game"></i>游戏中心</a></li>
                        <li><a href="#"><i class="icon-news"></i>新闻中心</a></li>
                        <li><a href="#"><i class="icon-friend"></i>画友</a></li>
                        <li><a href="#"><i class="icon-tv"></i>芒果TV</a></li>
                    </ul>

                    <a href="#" class="activity"><img src="<%=request.getContextPath()%>/images/cont/nav-square__img.jpg" alt="#"></a>
                </div>
            </li>

            <li class="item item-room"><a href="xiaoheiwu.sf" class="link">小黑屋</a></li>
        </ul>
        <div class="nav-gif" id="qiulingyang">
            <img
                    src="<%=request.getContextPath()%>/static/bilibiliIndex/images/cont/nav_img.gif"
                    alt="求领养">
        </div>
    </div>
</nav>

<div id="banner">
    <div class="page-width clearfix">
        <div class="slider fl">
            <div class="slider-img">
                <a href="#" slider-title="虚渊玄新作">
                    <img src="<%=request.getContextPath()%>/static/bilibiliIndex/images/cont/slider_img1.png"
                        alt="#">
                </a>
                <a href="#" slider-title="2022年4月新番导视">
                    <img src="<%=request.getContextPath()%>/static/bilibiliIndex/images/cont/slider_img2.png"
                    alt="#">
                </a>
                <a href="#" slider-title="虚拟主播五一大联欢"><img
                    src="<%=request.getContextPath()%>/static/bilibiliIndex/images/cont/slider_img3.png"
                    alt="#">
                </a>
                <a href="#" slider-title="有奖看国创，瓜分60000元！"><img
                    src="<%=request.getContextPath()%>/static/bilibiliIndex/images/cont/slider_img4.png"
                    alt="#">
                </a>
            </div>
            <div class="slider-title">
                <p>虚渊玄新作:BUBBLE</p>
            </div>
            <div class="slider-btn">
                <span class="cur"></span> <span></span> <span></span> <span></span>
            </div>
            <a href="#" class="slider-more">More</a>
        </div>
        <div class="banner-list fr">
            <ul>
                <c:forEach items="${fuck }" var="fuck">
                    <li><a
                            href="video.sf?dizhi=${fuck.videoAddress}&shipingID=${fuck.videoID}">
                        <img src="<%=request.getContextPath()%>${fuck.videoImage}"
                             alt="#">
                        <div class="info">
                            <p class="title">${fuck.videoName }</p>
                            <p class="author">up主：admin</p>
                            <p class="play">播放：${fuck.videolookTime}</p>
                        </div>
                    </a></li>
                </c:forEach>
            </ul>
            <a href="#" class="btn btn-prev">昨日</a> <a href="#"
                                                       class="btn btn-next">一周</a>
        </div>
    </div>
</div>

<div id="main">
    <div class="page-width">
        <!-- 推广 -->


        <div class="mainCont clearfix" id="dance" js-move="true">
            <div class="pic-list fl" js-tab="true">
                <div class="pic-list__title">
                    <i class="icon icon-dance"></i>
                    <h2>前方高能</h2>
                    <div class="tab-title">
                        <a href="#" class="cur">有新动态</a>

                    </div>

                    <div class="more-wrap">
                        <a href="#" class="dynamic" id="shuaxin"><i></i>209条新动态</a>

                    </div>
                </div>
                <ul class="pic-list__wrapper clearfix tab-cont__item tab-cont__cur">
                    <!-- 这里开始遍历 -->
                    <c:forEach items="${list}" var="list">
                        <li class="item"><a
                                href="video.sf?dizhi=${list.videoAddress}&shipingID=${list.videoID}"
                                class="img-link"> <img
                                src="<%=request.getContextPath()%>${list.videoImage}" alt="#">
                            <span class="mask"></span> <span class="time">${list.videoTime}</span>
                        </a>
                            <div class="img-info">
                                <a
                                        href="video.sf?dizhi=${list.videoAddress}&shipingID=${list.videoID}">${list.videoName }</a>
                                <div class="btm">
                                    <div class="user">
                                        <i></i>admin
                                    </div>
                                    <div class="online">
                                        <i></i>${list.videolookTime}</div>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="main-side fr" js-tab="true">
                <div class="main-side__title">
                    <div class="rank-t">
                        <h3>排行</h3>
                    </div>
                    <div class="tab-title">
                        <a href="#" class="cur">全部</a>
                    </div>
                    <div class="side-select">
                        <span>三日</span>
                        <i></i>
                    </div>
                </div>
                <div class="main-side__cont">
                    <div class="tab-cont">
                        <ul class="tab-cont__item main-rank" id="did2">
                            <!-- ajax -->
                        </ul>
                    </div>
                    <button type="button" class="more" id="chakan">
                        随机刷新<i></i>
                    </button>

                    <script type="text/javascript">

                    </script>
                </div>
            </div>
        </div>

        <!-- 游戏 -->
        <div class="mainCont clearfix" id="game" js-move="true">
            <div class="pic-list fl" js-tab="true">
                <div class="pic-list__title">
                    <i class="icon icon-game"></i>
                    <h2>MAD·AMV</h2>
                    <div class="tab-title">
                        <a href="#" class="cur">有新动态</a>
                    </div>
                    <div class="more-wrap">
                        <a href="#" class="dynamic" id="shuaxin1"><i></i>308条新动态</a>
                    </div>
                </div>
                <ul class="pic-list__wrapper clearfix tab-cont__item tab-cont__cur">

                    <c:forEach items="${list2}" var="list2">
                        <li class="item"><a
                                href="video.sf?dizhi=${list2.videoAddress}&shipingID=${list2.videoID}"
                                class="img-link"> <img
                                src="<%=request.getContextPath()%>${list2.videoImage}" alt="#">
                                <%-- <span class="mask"></span> <span class="time">${list2.videoTime}</span> --%>
                        </a>
                            <div class="img-info">
                                <a
                                        href="video.sf?dizhi=${list2.videoAddress}&shipingID=${list2.videoID}">${list2.videoName }</a>
                                <div class="btm">
                                    <div class="user">
                                        <i></i>admin
                                    </div>
                                    <div class="online">
                                        <i></i>${list2.videolookTime}</div>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="main-side fr" js-tab="true">
                <div class="main-side__title">
                    <div class="rank-t">
                        <h3>排行</h3>
                    </div>
                    <div class="tab-title">
                        <a href="#" class="cur">全部</a>
                    </div>
                    <div class="side-select">
                        <span>三日</span> <i></i>
                    </div>
                </div>
                <div class="main-side__cont">
                    <div class="tab-cont">
                        <ul class="tab-cont__item main-rank" id="did3">

                        </ul>

                    </div>
                    <button type="button" class="more" id="chakan3">
                        随机刷新<i></i>
                    </button>
                    <script type="text/javascript">


                    </script>
                </div>
            </div>
        </div>

        <!-- 科技 -->
        <div class="mainCont clearfix" id="technology" js-move="true">
            <div class="pic-list fl" js-tab="true">
                <div class="pic-list__title">
                    <i class="icon icon-technology"></i>
                    <h2>MMD·3D</h2>
                    <div class="tab-title">
                        <a href="#" class="cur">有新动态</a>
                    </div>
                    -->
                    <div class="more-wrap">
                        <a href="#" class="dynamic" id="shuaxin2"><i></i>407条新动态</a>
                    </div>
                </div>
                <ul class="pic-list__wrapper clearfix tab-cont__item tab-cont__cur">

                    <c:forEach items="${list3}" var="list3">
                        <li class="item"><a
                                href="video.sf?dizhi=${list3.videoAddress}&shipingID=${list3.videoID}"
                                class="img-link"> <img
                                src="<%=request.getContextPath()%>${list3.videoImage}" alt="#">
                            <span class="mask"></span> <span class="time">${list3.videoTime}</span>
                        </a>
                            <div class="img-info">
                                <a
                                        href="video.sf?dizhi=${list3.videoAddress}&shipingID=${list3.videoID}">${list3.videoName }</a>
                                <div class="btm">
                                    <div class="user">
                                        <i></i>admin
                                    </div>
                                    <div class="online">
                                        <i></i>${list3.videolookTime}</div>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="main-side fr" js-tab="true">
                <div class="main-side__title">
                    <div class="rank-t">
                        <h3>排行</h3>
                    </div>
                    <div class="tab-title">
                        <a href="#" class="cur">全部</a>
                    </div>
                    <div class="side-select">
                        <span>三日</span> <i></i>
                    </div>
                </div>
                <div class="main-side__cont">
                    <div class="tab-cont">
                        <ul class="tab-cont__item main-rank" id=did4>

                        </ul>

                    </div>
                    <button type="button" class="more" id="chakan4">
                        随机刷新<i></i>
                    </button>


                    <!-- 这里是AJAX 提交 后台刷新数据 -->
                    <script
                            src="<%=request.getContextPath()%>/static/adminjs/adminjs.js"></script>
                </div>
            </div>
        </div>


    </div>
</div>


<div id="sideBar">
    <div class="sideBar-list">

        <br> <a href="#">动态</a> <a href="#">热门</a> <a href="#">频道</a> <br>
    </div>
    <div class="sideBar-line"></div>
    <a href="#" class="sideBar-toTop" id="backTop"></a>
</div>


<%--背景音乐 --%>

<EMBED id="music" src="/static/The Truth That You Leave.mp3" HIDDEN="true" volume="10" controller="true"
       autostart="true" loop="true">
<script type="text/javascript">
    $("#closemusic").click(function () {
        $("#music").playOrPause();
        document.embeds('music').stop();
    })
</script>

</body>
</html>