<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor= skyblue text = darkblue>
<jsp:include page="banner.jsp"></jsp:include>
<form action="User">
  <p>
    <label>Enter Email Id</label>
    <input type="email" pattern="[a-zA-Z0-9_]+@[a-zA-Z0-9]+.[a-zA-Z]{2,3}"title="Enter Valid Email id" name="email"required>
  </p>
  <p>
    <label>Enter Password </label>
     <input type="password"pattern=[a-zA-Z0-9@_.]{8,20} title="between 8-20 characters(@_.)"name="password"required>
  </p>
  <p>
    <button>
      Submit
    </button>
    	<a href="forget.jsp">forget password?</a>
<a href="register.jsp">New User</a>
  </p>
</form>
<%@ include file ="footer.html" %>
</body>
</html>