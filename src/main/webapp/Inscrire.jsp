<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Inscription</title>
</head>
<body>
    <h1>Inscription</h1>
    <form action="MonServlet" method="post">
        <label for="nom">Nom :</label>
        <input type="text" name="nom" id="nom" required><br>
        <label for="prenom">Prénom :</label>
        <input type="text" name="prenom" id="prenom" required><br>
        <label for="pseudo">Pseudo :</label>
        <input type="text" name="pseudo" id="pseudo" required><br>
        <label for="email">Email :</label>
        <input type="email" name="email" id="email" required><br>
        <label for="motDePasse">Mot de passe :</label>
        <input type="password" name="motDePasse" id="motDePasse" required><br>
        <label for="confirmationMotDePasse">Confirmer le mot de passe :</label>
        <input type="password" name="confirmationMotDePasse" id="confirmationMotDePasse" required><br>
        <input type="submit" value="S'inscrire">
    </form>
</body>
</html>
