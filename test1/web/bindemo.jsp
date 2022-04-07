<%-- 
    Document   : bindemo
    Created on : 7 Apr, 2022, 12:17:45 PM
    Author     : keval & vasu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
            String nm = request.getParameter("n1");
            String em = request.getParameter("n2");
            
            %>
        <jsp:useBean beanName = "com.data.demo" id="d" type="com.data.demo">
            <jsp:setProperty name="d" property="name" value="<%=nm%>"/>
            <jsp:setProperty name="d" property="email" value="<%=em%>"/>
        </jsp:useBean>
        
        <jsp:getProperty name="d" property="name"/>
        <jsp:getProperty name="d" property="email"/>
        
    </body>
</html>
