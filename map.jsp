<!doctype html>
<html>
<%@page import="java.sql.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
    <title>路线规划</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
 
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //custom-theme -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet"> 
    <!-- //font-awesome-icons -->
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="map.css"/>
 
    <script src="http://cache.amap.com/lbs/static/es5.min.js"></script>
    <!-- 这里要配置参数key,将其值设置为高德官网开发者获取的key -->
    <script src="http://webapi.amap.com/maps?v=1.3&key=9b2c5c13a6501227c97613b559324a12"></script> 
    <script type="text/javascript" src="http://cache.amap.com/lbs/static/addToolbar.js"></script>
 
    <style type="text/css">
    html, body {
	margin: 0;
	height: 100%;
	width: 100%;
	position: absolute;
}
    #container {
      top:20;
      width: 100%;
      height: 100%;
    }
    </style>
    <style type="text/css">
        #panel {
            position: fixed;
            background-color: white;
            max-height: 90%;
            overflow-y: auto;
            top: 10px;
            right: 10px;
            width: 280px;
        }
        #panel .amap-call {
            background-color: #009cf9;
            border-top-left-radius: 4px;
   	        border-top-right-radius: 4px;
        }
        #panel .amap-lib-driving {
	        border-bottom-left-radius: 4px;
   	        border-bottom-right-radius: 4px;
            overflow: hidden;
        }
    </style>
    <link rel="stylesheet" href="https://a.amap.com/jsapi_demos/static/demo-center/css/demo-center.css" />
    <script src="https://a.amap.com/jsapi_demos/static/demo-center/js/demoutils.js"></script>
    <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.15&key=9b2c5c13a6501227c97613b559324a12&plugin=AMap.Driving"></script>
    <script type="text/javascript" src="https://cache.amap.com/lbs/static/addToolbar.js"></script>
</head>
<body>
    <div class="w3_navigation">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1><a class="navbar-brand" href="homepage.html"> Travelling </a></h1>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav class="menu menu--iris">
						<ul class="nav navbar-nav menu__list">
							<li class="menu__item"><a href="homepage.html" class="menu__link"> 首页 </a></li>
                                                        <li class="menu__item"><a href="citypage.html" class="menu__link"> 城市详情 </a></li>
                                                        <li class="menu__item menu__item--current"><a href="mappage.html" class="menu__link"> 路线规划 </a></li>
							<li class="menu__item"><a href="buy.html" class="menu__link"> 购票渠道 </a></li>
						</ul>      
					</nav>   
				</div>    
			</nav>
                    <div style="width:100%; height:2px; border-top:1px solid #cccccc; clear:both;"></div>
		</div>
	</div>
    <div style="font-size:18px;color:#666666;font-weight: bold">
        <center>
             <th>最优旅游路线：</th>
        <%String city=(String)request.getAttribute("city");
                    String citylist[]=city.split(" ");
                    int n=(int)request.getAttribute("citynums");
                    for(int i=0;i<n;i++){
                        String a=citylist[i];
                        if(i != (n-1)){
        %>
        <th ><%=a%>---></th>
            <%
                        }
        else{
%>
           <th><%=a%></th>
        <%
                    }
            }
        %>
           </center>
    </div>
           <hr>
    <div id="container"></div>
    <script type="text/javascript">
        
        //基本地图加载
        var map = new AMap.Map("container", {
            resizeEnable: true,
            center: [116.397428, 39.90923],//地图中心点
            zoom: 5 //地图显示的缩放级别
        });
        //构造路线导航类
        var driving = new AMap.Driving({
            map: map,
        }); 
        // 根据起终点名称规划驾车导航路线
            driving.search([
                <%
                    for(int i=0;i<n;i++){
                        String a=citylist[i];
                        if(i != (n-1)){
                    %>
                    {keyword: "<%=a%>",city:"<%=a%>"}, 
                    <%      
                        }
                        else{
                    %>
                    {keyword: "<%=a%>",city:"<%=a%>"} 
                    <%      
                        }
                    }
                %>
            ]);
    </script>
    </body>
</html>