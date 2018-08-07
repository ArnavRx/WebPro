<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="User">
<p>
    <label>Enter Email Id</label>
    <input type="email" pattern="[a-zA-Z0-9_]+@[a-zA-Z0-9]+.[a-zA-Z]{2,3}"title="Enter Valid Email id" name="email"required>
  </p>
  
<p>
    <label>Enter Password </label>
     <input type="password"pattern=[a-zA-Z0-9@_.]{8,20} title="between 8-20 characters(@_.)"name="password"required>
  </p>
  <br>
   <input type="submit" value="changepassword"><br>
</form>
</body>
</html>