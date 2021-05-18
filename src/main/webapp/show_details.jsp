<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
  <title>Registration details</title>
  <style>
  h3 {
    margin: 70px 0 30px 80px;
  }

  .table{
    width:50%;
    margin: 0 0 30px 80px;
  }
  </style>
</head>
<body>

<h3>Registration details: </h3>

<table class="table table-sm table-dark">
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>First Name</td>
      <td><% out.print(session.getAttribute("first")); %></td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Last Name</td>
      <td><% out.print(session.getAttribute("last")); %></td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>User Name</td>
      <td><% out.print(session.getAttribute("username")); %></td>
    </tr>
     <tr>
          <th scope="row">4</th>
          <td>Gender</td>
          <td><% out.print(session.getAttribute("gender")); %></td>
        </tr>
         <tr>
              <th scope="row">5</th>
              <td>Hobbies</td>
              <td><%
              if(session.getAttribute("hobby1") != null){
                 out.print(session.getAttribute("hobby1"));
              }
              out.print("<br>");
              if(session.getAttribute("hobby2") != null){
                               out.print(session.getAttribute("hobby2"));
              }
              out.print("<br>");
              if(session.getAttribute("hobby3") != null){
                               out.print(session.getAttribute("hobby3"));
                            }
              out.print("<br>");
              if(session.getAttribute("hobby4") != null){
                               out.print(session.getAttribute("hobby4"));
              }
              %></td>
            </tr>
     <tr>
           <th scope="row">3</th>
           <td>Country</td>
           <td><% out.print(session.getAttribute("country")); %></td>
         </tr>
  </tbody>
</table>


</body>
</html>
