<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Success page</title>
</head>
<body>
    <h1> Authentification success </h1>
    <h3> Welcome <% out.print(session.getAttribute("username")); %></h3>



</body>
</html>