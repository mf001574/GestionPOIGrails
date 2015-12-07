<%--
  Created by IntelliJ IDEA.
  User: Florian
  Date: 07/12/2015
  Time: 15:43
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Créer un groupe</title>
    </head>
    <body>
        <g:include view="frontEnd/menu.gsp"></g:include>
        <div class="content">
            <h3>Créer un groupe</h3>
        <g:form method="post" controller="Groupe" action="creerGroupe">
            <p>
                <label>Nom :</label>
                <g:field type="text" name="nom" required="required"></g:field>
            </p>
            <p>
                <label>Pois (on peut en selectionner plusieurs):</label>
                <g:select required="required" name="pois" optionValue="nom" optionKey="id" from="${pois}" multiple="true"></g:select>
            </p>
            <g:submitButton name="bC" value="Créer"/>
        </g:form>
        </div>
    </body>
</html>