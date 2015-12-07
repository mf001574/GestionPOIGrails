<%--
  Created by IntelliJ IDEA.
  User: Florian
  Date: 02/12/2015
  Time: 14:37
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Page de l'utilisateur</title>
</head>

<body>
    <g:include view="frontEnd/menu.gsp"></g:include>
    <div class="content">

            <h3>Détail utilisateur</h3>
            <ul>
                <li>Email : ${email}</li>
                <li>Nom : ${nom}</li>
                <li>Prenom : ${prenom}</li>
            </ul>
        </fieldset>
    </div>
    <div class="content">
        <h3>Commentaires</h3>
            <table>
                <thead>
                    <tr>
                        <th>POI</th>
                        <th>Note</th>
                        <th>Commentaire</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each var="eval" in="${evaluations}">
                        <tr>
                            <td>${eval.poi.nom}</td>
                            <td>${eval.note}/20</td>
                            <td>${eval.commentaire}</td>
                        </tr>
                    </g:each>
                </tbody>
            </table>
        </div>
            <g:if test="${utilisateurSession}">
                <div class="content">
                    <h3>
                        Modifier les informations personnelles
                    </h3>
                    <g:form controller="utilisateur" action="modifierInfo"  method="POST">
                        <p>
                            <label>Nouveau nom : </label>
                            <g:field type="text" name="nom" value="${session.utilisateur.nom}"/>
                        </p>
                        <p>
                            <label>Nouveau prenom : </label>
                            <g:field type="text" name="prenom" value="${session.utilisateur.prenom}" />
                        </p>

                        <g:submitButton name="bModif" value="Modifier"/>
                        <g:if test="${flash.messageModifInfo}">
                            <p><label></label> </label><span>${flash.messageModifInfo}</span></p>
                        </g:if>
                    </g:form>

                </div>
                <div class="content">
                    <h3>
                        Modifier le mot de passe
                    </h3>
                    <g:form controller="utilisateur" action="modifierMDP"  method="POST">
                        <p>
                            <label>Nouveau mot de passe : </label>
                            <g:field type="password" name="mdp" required="required" />
                        </p>

                        <g:submitButton name="bModifMDP" value="Modifier"/>
                        <g:if test="${flash.messageModifMDP}">
                            <p><label></label> </label><span>${flash.messageModifMDP}</span></p>
                        </g:if>
                    </g:form>

                </div>
            </g:if>
</body>
</html>