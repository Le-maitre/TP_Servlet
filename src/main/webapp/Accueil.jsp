<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Accueil</title>
</head>
<body>
  <h1>Bienvenue <c:out value="${utilisateur.nom } ${utilisateur.prenom }"></c:out> !</h1>

<h2>Liste des utilisateurs inscrits :</h2>

<table>
 <thead>
  	<td>Prenom</td>
  	<td>Nom</td>
  	<td>Pseudo</td>
  	<td>Email</td>
  </thead>
  <c:forEach items="${utilisateurs}" var="utilisateur">
  <tr>
  	<td>${utilisateur.nom }</td>
    <td>${utilisateur.prenom }</td>
    <td>${utilisateur.pseudo }</td>
    <td>${utilisateur.email }</td>
  </tr>
  </c:forEach>
</table>
    <form action="MonServlet2" method="post">
        <input type="submit" value="Déconnecter">
    </form>
</body>
</html>
