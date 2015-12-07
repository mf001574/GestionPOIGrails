<%--
  Created by IntelliJ IDEA.
  User: Florian
  Date: 05/12/2015
  Time: 20:28
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Liste des groupes de POI</title>
    </head>
    <body>
        <g:include view="frontEnd/menu.gsp"></g:include>
            <div class="content">
            <h3>Liste des groupes</h3>

            <table>
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Nom</th>
                    <th>POIs</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <g:each var="g" in="${listeGroupe}">
                    <tr>
                        <td>${g.id}</td>
                        <td>${g.nom}</td>
                        <td>
                            <table>
                                <g:each in="${g.pois}" var="p">
                                    <tr><td><g:link uri="/POI/${p.id}">${p.nom}</g:link></td></tr>
                                </g:each>
                            </table>

                        </td>
                        <td>
                            <g:link uri="/groupe/${g.id}">Afficher</g:link>
                            <g:link uri="/groupe/${g.id}/editer">Editer</g:link>
                        </td>
                    </tr>
                </g:each>
                </tbody>
            </table>
    </div>
    </body>
</html>