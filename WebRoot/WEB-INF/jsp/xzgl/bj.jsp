<%@ page language="java" import="java.util.*,java.io.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("ctx", basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'bj.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script>
    function myFunction()
{
    alert("保存");
}
    </script>



  </head>
  
  <body>
    	<%
    	File file = new File("D:\\java\\myeclipse\\workspace\\itcastTax\\WebRoot\\WEB-INF\\jsp\\xzgl\\bj.txt");  
        BufferedReader reader = null;  
        try {  
            System.out.println("以行为单位读取文件内容，一次读一整行：");  
            reader = new BufferedReader(new FileReader(file));  
            String tempString = null;  
            int line = 1;  
            // 一次读入一行，直到读入null为文件结束  
            while ((tempString = reader.readLine()) != null) {  
                // 显示行号  
                out.println(tempString);   
            }  
            reader.close();  
        } catch (IOException e) {  
            e.printStackTrace();  
        } finally {  
            if (reader != null) {  
                try {  
                    reader.close();  
                } catch (IOException e1) {  
                }  
            }  
        }          
    	%>
    	<form action = "${ctx }xzgl/xzgl_note.action" method = "POST">
    		<textarea rows="10" cols="251" name = "tt"></textarea>
    		<input type = "submit" onclick="myFunction()" name = "提交"/>
    	</form>
    	
    	
    	
    	
  </body>
</html>
