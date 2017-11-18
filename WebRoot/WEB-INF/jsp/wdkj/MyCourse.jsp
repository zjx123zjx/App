<%@ page language="java" import="java.util.*,cn.itcast.nsfw.user.entity.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Myself.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body class="rightBody">
    <%
    	User uu = (User)session.getAttribute("u");
     %>
<form name="form1" action="" method="post" enctype="multipart/form-data">
    <div class="p_d_1">
        <div class="p_d_1_1">
            <div class="content_info">
                <div class="c_crumbs"><div><b></b><strong>我的课程</strong></div> </div>
                <div class="t_list" style="margin:0px; border:0px none;">
                    <table width="100%" border="0">
                        <tr class="t_tit">
                            <td width="140" align="center">已学课程</td>
                            <td width="140" align="center">未学课程</td>
                        </tr>
                            <tr bgcolor="f8f8f8">
                                <td align="center">为人处世学</td>
                                <td align="center">心理学</td>
                            </tr>
                            
                            <tr bgcolor="f8f8f8">
                                <td align="center">说话技巧</td>
                                <td align="center">爱的种子</td>
                            </tr>
                            
                            <tr bgcolor="f8f8f8">
                                <td align="center"></td>
                                <td align="center">进化论</td>
                            </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</form>

</body>
</html>
