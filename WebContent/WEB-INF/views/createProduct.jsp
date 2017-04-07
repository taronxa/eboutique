
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creation d'un produit et ajout au catalogue here</title>
</head>
<body>
	<div>
		<form action="CreateProductServlet" method="post">
			<table>
				<tr>
					<td><label>Nom :</label></td>
					<td><input name="nom" type="text"></td>
				<tr>
				<tr>
					<td><label>Prix :</label></td>
					<td><input name="price" type="text"></td>
				<tr>
				<tr />
				<tr />
				<tr>
					<td><input type="submit" name="create" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>