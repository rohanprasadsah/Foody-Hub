<%@page import="com.dto.User"%>
<%@page import="com.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update staff</title>
</head>
<body>

<%
int staffId=Integer.parseInt(request.getParameter("id"));
UserDao userDao=new UserDao();
User  staff=userDao.findUserById(staffId);
%>

<form action="updatestaff">

<fieldset>

<legend>UPDATE STAFF</legend>
id:<input type="text" name="id" value="<%=staff.getId()%>" readonly="readonly"><br><br>
name:<input type="text" name="name" value="<%=staff.getName()%>"><br><br>
email:<input type="email" name="email" value="<%=staff.getEmail()%>"><br><br>
<input type="submit" value="UPDATE STAFF">
<input type="reset" value="CANCEL">

</fieldset>

</form>
<a href="menu.jsp">GO TO</a>

</body>
</html>