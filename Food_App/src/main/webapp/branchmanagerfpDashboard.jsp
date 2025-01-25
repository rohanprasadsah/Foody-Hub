<%@page import="com.dto.FoodProduct"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BRANCH MANAGER DASHBOARD</title>
</head>
<body>

	<%
	List<FoodProduct> list = (List<FoodProduct>) session.getAttribute("listoffp");
	%>

	<table border="1px solid black" cellspacing="2px" cellpadding="2px" width="100%">
		<tr>
			<th>SNO</th>
			<th>FP_ID</th>
			<th>FP_NAME</th>
			<th>FP_AVAILABILITY</th>
			<th>FP_ABOUT</th>
			<th>FP_PRICE</th>
			<th>FP_TYPE</th>
			<th>CHANGE STATUS</th>
			<th>UPDATE</th>
			<th>DELETE</th>
		</tr>

		<%
		int i=1;
		for (FoodProduct f : list) {
		%>

			<tr>
			<td><%=i++ %></td>
			<td><%=f.getId() %></td>
			<td><%=f.getName()%></td>
			<td><%=f.isAvailability() %></td>
			<td><%=f.getAbout() %></td>
			<td><%=f.getPrice() %></td>
			<td><%=f.getType() %></td>
			<td><a href="changeAvailability?id=<%=f.getId()%>"><button>CHANGE STATUS</button></a></td>
			<td><a href="updatefoodproduct.jsp?fpid=<%=f.getId()%>"><button>UPDATE</button></a></td>
			<td><a href="deletefoodproduct?fpid=<%=f.getId()%>"><button>DELETE</button></a></td>
			</tr>
		<%
		}
		%>
	</table>
<a href="createfoodProduct.jsp"><button>ADD FOOD PRODUCT</button></a>
<a href="menu.jsp"><button>HOME</button></a>
<a href="logout"><button>LOGOUT</button> </a>

</body>
</html>