<%@ page language="java" session="true" %>
<%
    // Set session timeout to 1 minute (60 seconds)
    session.setMaxInactiveInterval(60);

    String name = request.getParameter("uname");

    // If name is entered first time, store in session
    if (name != null) {
        session.setAttribute("username", name);
    }

    // Get stored session value
    String user = (String) session.getAttribute("username");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>

<%
    if (user != null) {
%>
        <h2>Hello <%= user %>!</h2>
        <p>Your session will expire in 1 minute of inactivity.</p>
        <a href="welcome.jsp">Refresh Page</a>
<%
    } else {
%>
        <h2>Session Expired!</h2>
        <p>Your session has ended. Please enter your name again.</p>
        <a href="index.jsp">Go Back</a>
<%
    }
%>

</body>
</html>