<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css" />
    <script type="text/javascript" src="<%=path %>/js/modernizr-1.5.min.js"></script>
   
    <script type="text/javascript" src="<%=path %>/js/jquery.js"></script>
    <script type="text/javascript" src="<%=path %>/js/jquery.easing-sooper.js"></script>
    <script type="text/javascript" src="<%=path %>/js/jquery.sooperfish.js"></script>
    
	<script type="text/javascript">
	    function liuyanAdd()
        {
            /* <c:if test="${sessionScope.userType!=2}">
                  alert("请先登录");
            </c:if>
            <c:if test="${sessionScope.userType==2}"> 
             /* </c:if> */
                 var strUrl = "<%=path %>/qiantai/liuyan/liuyanAdd.jsp";
	             var ret = window.open(strUrl,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	             window.location.reload();
           
        }
        
        function liuyanDetail(id)
        {
             var strUrl = "<%=path %>/liuyanDetail.action?id="+id;
             var ret = window.open(strUrl,"","dialogWidth:800px; dialogHeight:400px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
        }
	</script>
	
	<style type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>
  </head>
   
  <body>
  <div id="main">
      <jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>
      
      
      
      
      <div id="site_content">
	      <jsp:include flush="true" page="/qiantai/right.jsp"></jsp:include>
	      <div class="content">
	          <!-- <h1 style="font-size: 22px;">新闻喜讯</h1>
	          <p>
		           This simple, fixed width website template is released under a Creative Commons Attribution 3.0 Licence
		           This means you are free to download and use it for personal and commercial proj
	          </p>
	          <p>1111</p>
	          <p>2222</p> -->
	          <!-- <h1 style="font-size: 22px;">
	                                        会员注册
	          </h1> -->
	          <div>
					 <div style="width:754px;margin-top: 1px;padding-bottom:5px;">
					      <%-- <div style="height:26px;background:url(<%=path %>/images/guangguang.PNG);font-size: 14px;color:#de3237;">
					         <span style="float:left;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;margin-left: 10px;">新闻资讯</span>
							 <span style="float:right;font-family: 微软雅黑;font-size: 14px;margin-top: 3px;">&nbsp;</span>
					      </div> --%>
					      <div style="border:1px solid #dfdfdf">
					            <c:forEach items="${requestScope.liuyanList}" var="liuyan" varStatus="sta">
						           <div class="c1-bline" style="padding:7px 0px;">
				                        <div class="f-left">
				                             &nbsp;&nbsp;&nbsp;<img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
				                             <a href="#" onclick="#">${liuyan.neirong }</a>
				                        </div>
							            <div class="f-right">${liuyan.liuyanshi }&nbsp;&nbsp;&nbsp;</div>
							            <div class="clear" style="margin-left: 10px;">
							                                                回复信息：${liuyan.huifu }<br>回复时间：${liuyan.huifushi }
							            </div>
						           </div>             
						        </c:forEach>
						        <br/><br/>
						        <center><a href="#" onclick="liuyanAdd()">我要问题答疑</a></center>
								<br/><br/>
					      </div>
					 </div>
	          </div>
	      </div>
      </div>
      
      
      
      
      
      <footer>
          <a href="<%=path %>/login.jsp">系统后台</a>
      </footer>
  </div>
</body>
</html>
