<%--
  Created by IntelliJ IDEA.
  User: Florian
  Date: 06/12/2015
  Time: 23:29
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Editer POI</title>
</head>
    <g:include view="frontEnd/menu.gsp"></g:include>
    <div class="content">
        <h3>Modifier les informations</h3>
        <g:form method="post" uri="/POI/${poi.id}/editer/modifierInfo" >
            <p><label>Titre actuel :</label> ${poi.nom}</p>
            <p><label>Description actuelle :</label> ${poi.description}</p>
            <p>
                <label>Nouveau titre : </label>
                <g:field type="text" name="nom" value="${poi.nom}"/>
            </p>
            <p>
                <label>Nouvelle description : </label>
                <g:textArea name="desc" value="${poi.description}"/>
            </p>
            <g:submitButton name="bModif" value="Modifier"/>

        </g:form>
    </div>
    <div class="content">
        <h3>Modifier l'emplacement</h3>
        <g:form method="post" uri="/POI/${poi.id}/editer/modifierEmplacement">
            <p>
                <label>Emplacement actuel: </label> ${poi.emplacement.adresse}
            </p>
            <p>
                <label>Nouvel emplacement : </label>
                <g:select name="emplacement" optionValue="adresse" optionKey="id" from="${emplacements}"></g:select>
            </p>
            <g:submitButton name="bModif" value="Modifier"/>
        </g:form>
    </div>

<body>

</body>
</html>