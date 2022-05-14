<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) -->
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome, ${thisUser.name }</h1>
	<h4>Books from everyone's shelves:</h4>
	<div>
	<a href="/logout">Logout</a>
	<a href="/books/new">Create Book</a>	
	</div>
	<table>
		<thead>
			<tr>
				<td>ID</td>
				<td>Title</td>
				<td>title</td>
				<td>Author Name</td>
				<td>Posted By</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${books }" var = "book">
				<tr>
					<td>${book.id }</td>
					<td><a href="/books/${book.id }">${book.title }</a></td>
					<td>${book.author }</td>
					<td>${book.user.name }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>