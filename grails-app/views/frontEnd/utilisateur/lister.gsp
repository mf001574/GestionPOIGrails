<%--
  Created by IntelliJ IDEA.
  User: Florian
  Date: 05/12/2015
  Time: 21:38
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Liste des utilisateurs</title>
</head>

<body>
    <g:include view="frontEnd/menu.gsp"></g:include>
    <div class="content">
        <h3>Liste des utilisateurs</h3>
        <table>
            <thead>
            <tr>
                <th>Id</th>
                <th>Nom</th>
                <th>Prénom</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${utilisateurs}" var="u">
                <tr>
                    <td>${u.id}</td>
                    <td>${u.nom}</td>
                    <td>${u.prenom}</td>
                    <td><g:link uri="/utilisateur/${u.id}">Afficher</g:link></td>
                </tr>
            </g:each>
            </tbody>

        </table>
    </div>


</body>
</html>