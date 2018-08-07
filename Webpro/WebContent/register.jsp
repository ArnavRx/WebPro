<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
</head>
<body>
<jsp:include page="banner.jsp"></jsp:include>
<form action="User" method = "get" >
  
  <p>
    <label>Name</label>
    <input type="text" name ="name"required>
  </p>
  
  <p>
    <label>Email</label>
    <input type="email"  name ="email"  pattern="[a-zA-Z0-9_]+@[a-zA-Z0-9]+.[a-zA-Z]{2,3}"title="Enter Valid Email id" required>
  </p>
  <p>
    <label>Password</label>
    <input type="password" name ="password" pattern=[a-zA-Z0-9@_.]{8,20} title="between 8-20 characters(@_.)"required>
  </p>
  <p>
    <label>Age</label>
    <select name ="age">
    <% for (int a=18;a<=60;a++){ %>
    <option value ="<%=a%>"><%=a%></option>
    <%} %>
  </p>
 <p>
    <label>Gender <input type="radio" name ="gender">Male
    <input type="radio" name ="gender">Female
    </label>
    
  </p>
  <p>
   <br>
    <label>Movie</label>
    <input type="text" name ="movie"required>
  </p>
  
  <p>
    <label>City</label>
    <select type="text" name ="city" >
    <% String[] cities = {"Mumbai","Pune","Manglore","Noida","Kanpur"}; %>
 <% for (String ct : cities){ %>
    <option value ="<%=ct%>"><%=ct %></option>
    <%} %>
  </p>
  
<p>
  
<label>Select a file to upload </label>
<input type="file" name="photo" >
<br>
   <input type="submit" value="register"><br>
  </p>
  
</form>
<%@ include file ="footer.html" %>
</body>
</html>