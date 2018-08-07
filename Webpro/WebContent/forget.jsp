<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="banner.jsp"></jsp:include>
<form action="User" >
  <p>
    <label>Email</label>
    <input type="email" pattern="[a-zA-Z0-9_]+@[a-zA-Z0-9]+.[a-zA-Z]{2,3}"title="Enter Valid Email id" name="email"required>
  </p>
  <p>
    <label>Enter Favourite Movie </label>
    <input type="text" name="movie">
  </p>
  <p>
    <button>
      Submit
    </button>
  </p>
</form>
<%@ include file ="footer.html" %>
</body>
</html>