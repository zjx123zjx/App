<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("ctx", path);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jj.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" language="javascript">
            function getContent(){
                var fckContent = FCKeditorAPI.GetInstance("content").EditorDocument.body.innerText;;     
                window.location.href="${ctx}/zxxx/zxxx_save.action?fckContent="+encodeURIComponent(fckContent);

            }
        </script>
	
  </head>
  
  <body>
    <FCK:editor instanceName="content" basePath="/fckeditor" value="${s}">
     
    </FCK:editor>
    <input type="button" value="保存" onclick="getContent();"/>
    
    
  </body>
</html>
