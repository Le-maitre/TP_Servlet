<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Connexion</title>
</head>
<body>
    <h1>Connexion</h1>
    <form action="AuthentificationServlet" method="post">
        <label for="pseudo">Pseudo :</label>
        <input type="text" name="pseudo" id="pseudo" required><br>
        <label for="motDePasse">Mot de passe :</label>
        <input type="password" name="motDePasse" id="motDePasse" required><br>
        <input type="submit" value="Se connecter">
    </form>
</body>
</html>
