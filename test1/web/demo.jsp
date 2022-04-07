<%-- 
    Document   : demo
    Created on : 7 Apr, 2022, 1:01:29 PM
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
            int count =1;
            if(session.getAttribute("count")==null)
            {
                session.setAttribute("count", count);
            }
            else
            {
              count=Integer.parseInt(session.getAttribute("count").toString());
              count++;
              session.setAttribute("count", count);
            }
            out.println("visit count::" +count);
        %>
    </body>
</html>
