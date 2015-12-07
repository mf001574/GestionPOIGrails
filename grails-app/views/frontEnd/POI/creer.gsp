<%--
  Created by IntelliJ IDEA.
  User: Florian
  Date: 07/12/2015
  Time: 15:06
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Créer un POI</title>
    </head>

    <body>
        <g:include view="frontEnd/menu.gsp"></g:include>
        <div class="content">
            <h3>Créer un POI</h3>
            <g:form method="post" controller="POI" action="creerPOI">
                <p>
                    <label>Nom :</label>
                    <g:field type="text" name="nom" required="required"></g:field>
                </p>
                <p>
                    <label>Description :</label>
                    <g:textArea name="description" required="required"></g:textArea>
                </p>
                <p>
                    <label>Emplacement :</label>
                    <g:select name="emplacement" optionValue="adresse" optionKey="id" from="${emplacements}"></g:select>
                </p>
                <g:submitButton name="bC" value="Créer"/>
            </g:form>
        </div>
    </body>
</html>