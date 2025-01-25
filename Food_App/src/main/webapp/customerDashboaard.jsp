<%@page import="com.dto.Branch"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

 List<Branch> listOfBranch=(List<Branch>)session.getAttribute("list");

%>

<table border="1px solid black" cellpadding="2px" cellspacing="3px" width="100%">
<tr>

			<th>S.NO</th>
			<th>B_ID</th>
			<th>B_NAME</th>
			<th>B_ADDRESS</th>
			<th>B_PHONE_NUMBER</th>
			<th>SEE MENU</th>

</tr>
<%
int i=1;
for(Branch b:listOfBranch)
{
%>
<tr>
<tr>
			<td><%=i++%></td>
			<td><%=b.getId()%></td>
			<td><%=b.getBranchname()%></td>
			<td><%=b.getAddress()%></td>
			<td><%=b.getPhonenumber()%></td>
			<td> <a href="viewMenu?id=<%=b.getId() %>"><button>MENU</button></a> </td>
			
		</tr>

</tr>

<%} %>



</table>

</body>
</html>