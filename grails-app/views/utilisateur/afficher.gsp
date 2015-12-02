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
    <div class="utilisateur">
        <fieldset>
            <legend>Detail utilisateur</legend>
            <ul>
                <li>Email : ${email}</li>
                <li>Nom : ${nom}</li>
                <li>Prenom : ${prenom}</li>
            </ul>
        </fieldset>
        <fieldset>
            <legend>Commentaires</legend>
            <ul>
                <g:each var="eval" in="${evaluations}">
                    <li>Evaluation sur le POI : ${eval.poi.nom}
                        <ul>
                            <li>Note : ${eval.note}</li>
                            <li>Commentaire : ${eval.commentaire}</li>
                        </ul>
                    </li>
                </g:each>
            </ul>
        </fieldset>

        <g:if test="${utilisateurSession}">
            <fieldset>
                <legend>
                    Changer les informations personnelles
                </legend>
                <g:form controller="utilisateur" action="modifierInfo"  method="POST">
                    <p>
                        <label>Nouveau nom : </label>
                        <g:field type="text" name="nom" value="${session.utilisateur.nom}"/>
                    </p>
                    <p>
                        <label>Nouveau prenom : </label>
                        <g:field type="text" name="prenom" value="${session.utilisateur.prenom}" />
                    </p>
                    <p>
                        <g:submitButton name="bModif" value="Modifier"/>
                    </p>
                </g:form>
                ${flash.messageModifInfo}
            </fieldset>
            <fieldset>
                <legend>
                    Changer le mot de passe
                </legend>
                <g:form controller="utilisateur" action="modifierMDP"  method="POST">
                    <p>
                        <label>Nouveau mot de passe : </label>
                        <g:field type="password" name="mdp"/>
                    </p>
                    <p>
                        <g:submitButton name="bModifMDP" value="Modifier"/>
                    </p>
                </g:form>
                ${flash.messageModifMDP}
            </fieldset>
        </g:if>
    </div>
</body>
</html>