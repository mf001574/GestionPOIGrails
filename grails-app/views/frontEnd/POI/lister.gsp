<%--
  Created by IntelliJ IDEA.
  User: Florian
  Date: 06/12/2015
  Time: 22:22
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Liste des POI(s)</title>
</head>
<body>
    <g:include view="frontEnd/menu.gsp"></g:include>
    <div class="content">
        <h3>Liste des POIs</h3>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nom</th>
                    <th>Emplacement</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${pois}" var="p">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.nom}</td>
                        <td>${p.emplacement.adresse} </td>
                        <td><g:link uri="/POI/${p.id}">Afficher</g:link> <g:link uri="/POI/${p.id}/editer">Editer</g:link></td>
                    </tr>
                </g:each>
            </tbody>

        </table>
    </div>
</body>
</html>