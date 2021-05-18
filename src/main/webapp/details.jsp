<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">
  <title>Registration page</title>
  <Style>
    .details{
        margin: auto 80px;
        justify-content: center;
    }
    .input-group {
        width:52%;
        margin-bottom: 10px;
    }

    .col-md {
        width:50%;
    }
    .hobies{
        margin-bottom:10px;
    }

    .gender {
        margin-bottom:10px;
    }

    .country {
        margin-bottom:10px;
        margin-top:-5px;
    }

    .btn {
        width:20%;
    }
    .glabel {
        margin-right: 70px;
    }

    .glabel {
        margin-right: 70px;
    }

    .hlabel {
        margin-right: 70px;
    }

    .col-md-1 {
        margin-right:30px;
    }

    .form-check {
       margin-right: 40px;
    }

    h3 {
        margin: 70px 0 30px 80px;
    }

    .pass{
        width: 22%;
    }

    #validation{
        margin-left:80px;
    }

  </style>
</head>

<%
    java.util.List<String> validation = new java.util.ArrayList<String>();
    if(request.getParameter("submit") != null){
        String first = request.getParameter("firstname");
        session.setAttribute("first", first);
        String last = request.getParameter("lastname");
        session.setAttribute("last", last);
        String username = request.getParameter("username");
        session.setAttribute("username", username);
        String password = request.getParameter("password");
        session.setAttribute("password", password);

        String[] hobbies = request.getParameterValues("hobies");
        if(hobbies != null && hobbies.length != 0){
            for (int i = 0; i < hobbies.length; i++) {
                session.setAttribute("hobby"+i, hobbies[i]);
            }
        }



        String country = request.getParameter("country");
        session.setAttribute("country", country);


         if(request.getParameter("gender") != null) {
            String genderValue = request.getParameter("gender");
            session.setAttribute("gender", genderValue);
         }else{
            validation.add("Gender selection cannot be null");
         }

        if(first == null || first == ""){
            validation.add("First name cannot be null");
        }
        if(last == null || last == ""){
            validation.add("Last name cannot be null");
        }
        if(password == null || password == ""){
            validation.add("Password cannot be null");
        }
        if(username == null || username == ""){
            validation.add("Username cannot be null");
        }

        if(hobbies == null || hobbies.length == 0){
           validation.add("Select at least one hobby");
        }

        if(country == null || country == ""){
            validation.add("Country cannot be null");
        }

        if(validation.size() == 0){
            response.sendRedirect("show_details.jsp");
        }
    }
%>

<body>
<h3> Registration form: </h3>
<%
    out.print("<div id='validation'>");
    if(validation.size() != 0){
        for(int i = 0; i<validation.size(); i++){
            out.print("<span style='color:red;'>" + validation.get(i) + "</span><br>");
        }
    }
    out.print("</div>");
%>
<form method="post">
     <div class="details">
         <div class="input-group input-group-lg">
                    <span class="input-group-text" id="inputGroup-sizing-lg">First Name</span>
                    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="firstname">
                  </div>
        <div class="input-group input-group-lg">
                        <span class="input-group-text" id="inputGroup-sizing-lg">Last Name</span>
                        <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="lastname">
                      </div>
        <div class="input-group input-group-lg">
                                <span class="input-group-text pass" id="inputGroup-sizing-lg">Password</span>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="password">
                              </div>
        <div class="input-group input-group-lg">
                                <span class="input-group-text" id="inputGroup-sizing-lg">User Name</span>
                                <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" name="username">
                              </div>

        <div class="gender">
        <label class="glabel"> Gender: </label>
            <input type="radio" class="btn-check"  id="success-outlined" name="gender" value="male" autocomplete="off" checked>
            <label class="btn btn-outline-primary" for="success-outlined">Male</label>

            <input type="radio" class="btn-check" id="danger-outlined" name="gender" value="female" autocomplete="off">
            <label class="btn btn-outline-primary" for="danger-outlined">Female</label>
            </div>

        <div class="hobies">
        <label class="hlabel"> Hobies: </label>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="checkbox" id="inlineCheckbox1" name="hobies" value="dance">
              <label class="form-check-label" for="inlineCheckbox1">Dance</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="checkbox" id="inlineCheckbox2" name="hobies" value="music">
              <label class="form-check-label" for="inlineCheckbox2">Music</label>
            </div>
            <div class="form-check form-check-inline">
              <input class="form-check-input" type="checkbox" id="inlineCheckbox3" name="hobies" value="sports">
              <label class="form-check-label" for="inlineCheckbox3">Sports</label>
            </div>
            <div class="form-check form-check-inline">
                      <input class="form-check-input" type="checkbox" id="inlineCheckbox4" name="hobies" value="painting">
                      <label class="form-check-label" for="inlineCheckbox4">Painting</label>
            </div>
        </div>
        <div class="country">
            <div class="row">
                <div class="col-md-1">
                    <label class="clabel"> Coutry: </label>
                </div>
                <div class="col-md-5">
                    <div class="form-floating">
                      <select class="form-select" id="floatingSelectGrid" aria-label="Floating label select example" name="country">
                        <option selected></option>
                        <option value="usa">USA</option>
                        <option value="canada">CANADA</option>
                        <option value="france">FRANCE</option>
                        <option value="germany">GERMANY</option>
                      </select>
                      <label for="floatingSelectGrid">Select Country</label>
                    </div>
                </div>
            </div>
        </div>
        <input class="btn btn-primary" type="submit" name="submit" value="Submit" />
    </div>
</form>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-p34f1UUtsS3wqzfto5wAAmdvj+osOnFyQFpp4Ua3gs/ZVWx6oOypYoCJhGGScy+8" crossorigin="anonymous"></script><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


</body>
</html>