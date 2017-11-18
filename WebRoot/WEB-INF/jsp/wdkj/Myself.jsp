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
                <div class="c_crumbs"><div><b></b><strong>基本信息</strong></div> </div>
                <div class="t_list" style="margin:0px; border:0px none;">
                    <table width="100%" border="0">
                        <tr class="t_tit">
                            <td width="140" align="center">用户名</td>
                            <td width="140" align="center">帐号</td>
                            <td width="160" align="center">所属部门</td>
                            <td width="80" align="center">性别</td>
                            <td align="center">电子邮箱</td>
                        </tr>
                            <tr bgcolor="f8f8f8">
                                <td align="center"><%=uu.getName() %></td>
                                <td align="center"><%=uu.getAccount() %></td>
                                <td align="center"><%=uu.getDept() %></td>
                                <td align="center"> 男 </td>
                                <td align="center"><%=uu.getEmail() %></td>
                            </tr>
                    </table>
                </div>
            </div>
        </div>
    </div>
</form>

</body>
</html>
