<%--
  Created by IntelliJ IDEA.
  User: Florian
  Date: 05/12/2015
  Time: 22:51
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Editer POI</title>
</head>

<body>
<g:include view="frontEnd/menu.gsp"></g:include>
<div class="content">

    <h3>Modifier le titre du groupe</h3>
    <g:form uri="/groupe/${groupe.id}/editer/modifier"  method="POST">
        <p>
            <label>Titre actuel : </label>
            <label>${groupe.nom}</label>
        </p>
        <p>
            <label>Nouveau titre : </label>
            <g:field type="text" name="nom" value="${groupe.nom}"/>
        </p>
        <g:if test="${flash.messageModifInfo}">
            <p><label></label><span>${flash.messageModifInfo}</span></p>
        </g:if>
        <g:submitButton name="bModif" value="Modifier"/>

    </g:form>

</div>
<div class="content">

    <h3>Ajouter un POI au groupe</h3>
    <g:form uri="/groupe/${groupe.id}/editer/ajouterPOI"  method="POST">
        <p>
            <label>Liste des POIs : </label>
            <g:select required="required" name="poi" optionValue="nom" optionKey="id" from="${listePOIs}"></g:select>
        </p>
        <g:if test="${flash.messageAjout}">
            <p><label></label><span>${flash.messageModifInfo}</span></p>
        </g:if>
        <g:submitButton name="bModif" value="Ajouter"/>

    </g:form>

</div>
<div class="content">

    <h3>Supprimer un POI du groupe</h3>
    <g:form uri="/groupe/${groupe.id}/editer/supprimerPOI"  method="POST">
        <p>
            <label>Liste des POIs du groupe : </label>
            <g:select required="required" name="poi" optionValue="nom" optionKey="id" from="${groupe.pois}"></g:select>
        </p>
        <g:if test="${flash.messageSupp}">
            <p><label></label><span>${flash.messageModifInfo}</span></p>
        </g:if>
        <g:submitButton name="bModif" value="Supprimer"/>

    </g:form>

</div>
</body>
</html>