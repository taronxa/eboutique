<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bienvenue sur le site eBoutique</title>
</head>
<body>
	<h1>Accueil</h1>
	<p>Bienvenue sur le site de commande en ligne eBoutique</p>

		<a href="<c:url value="/CreateCatalogServlet"/>"> Accès au catalogue </a> <br/><br/>
		<a href="<c:url value="/createProduct"/>"> Création de produit </a><br/><br/>
<%-- 		<c:url value="/views/panier.jsp"/> --%>
				

</body>
</html>