<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Session Started</title>
</head>
<body>
    <%
        String name = request.getParameter("uname");
        
        if(name != null && !name.isEmpty()) {
            out.print("Welcome! " + name);
            out.print("<br>Session has started ... " + name);
            
            // Store name in session
            session.setAttribute("user", name);
            out.print("<br>Your name has been stored in session object");
            
            // Set expiry to 60 seconds (1 minute)
            session.setMaxInactiveInterval(60);
            out.print("<br>One minute is set for the session expiry");
        }
        
        out.print("<br><br>Kindly press the following link to check it within a minute " +
                  "or wait here for a minute to see the session expiry <br>");
    %>
    <a href="second.jsp">Display the value</a>
</body>
</html>