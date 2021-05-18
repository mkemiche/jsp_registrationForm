<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>My JSP Page</title>
</head>

<%
    String message = null;
    if(request.getParameter("login") != null){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if("tom".equals(username) && "jerry".equals(password)){
            session.setAttribute("username", username);
            response.sendRedirect("success.jsp");
        }else{
            message = "Password and Username does not match";
        }
    }
%>

<body>
<%
    if(message != null){
        out.print("<span style='color:red;'>" + message + "</span>");
    }
%>
<form method="post">
    username: <input type="text" name="username" />
    password: <input type="text" name="password" />
    <input type="submit" name="login" value="Login" />
</form>
</body>
</html>