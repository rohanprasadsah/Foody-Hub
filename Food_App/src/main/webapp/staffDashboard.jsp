<%@page import="com.dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>staff dashboard</title>
</head>
<body>

	<%
	List<User> listOfStaff = (List<User>) session.getAttribute("listOfStaff");
	%>

	<table border="1px solid" cellspacing="5px" cellpadding="5px"
		width="100%">
		<tr>

			<th>S.NO</th>
			<th>STAFF_ID</th>
			<th>STAFF_NAME</th>
			<th>STAFF_EMAIL</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>

		<!-- java code -->

		<%
		int i = 1;
		for (User u : listOfStaff) {
		%>

		<tr>
			<td><%=i++%></td>
			<td><%=u.getId()%></td>
			<td><%=u.getName()%></td>
			<td><%=u.getEmail()%></td>
			<td><a href="updateStaff.jsp?id=<%=u.getId()%>"><button>UPDATE</button>
			</a></td>
			<td><a href="deleteStaff?id=<%=u.getId()%>"><button>DELETE</button>
			</a></td>
		</tr>

		<%
		}
		%>
	</table>
	<a href="createstaff.jsp"><button>ADD STAFF</button> </a>
	<a href="menu.jsp">GO TO</a>

</body>
</html>