<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Check Session</title>
</head>
<body>
    <h1>Display the session value on this page</h1>
    <%
        String name = (String)session.getAttribute("user");
        
        if(name == null) {
            out.print("<h2 style='color:red;'>Sorry, the session has ended</h2>");
            out.print("<a href='index.html'>Go back to Start</a>");
        } else {
            out.print("<h2 style='color:green;'>Hello " + name + "</h2>");
            out.print("<p>The session is still active!</p>");
        }
    %>
</body>
</html>