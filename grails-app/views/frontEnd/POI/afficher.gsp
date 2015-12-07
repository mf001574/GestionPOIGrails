<%--
  Created by IntelliJ IDEA.
  User: Florian
  Date: 06/12/2015
  Time: 22:55
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Détail POI</title>
</head>

<body>
    <g:include view="frontEnd/menu.gsp"></g:include>
    <div class="content">
        <h3>${poi.nom}</h3>
        <ul>
            <li>Id : ${poi.id}</li>
            <li>Emplacement : ${poi.emplacement.adresse}
                <ul>
                    <li>Latitude : ${poi.emplacement.latitude} </li>
                    <li>Longitude : ${poi.emplacement.longitude} </li>
                </ul>
            </li>
            <li>Description : ${poi.description}</li>
        </ul>
        <ul class="lImg">
            <g:each in="${poi.images}" var="img">
                <li><asset:image src="${img.src}"></asset:image> </li>
            </g:each>
        </ul>
    </div>
    <div class="content">
        <h3>Ajouter une évaluation</h3>
        <g:form method="post" uri="/POI/${poi.id}/commenter" >
            <p>
                <label>Note : </label>
                <g:field type="number" min="0" max="20" name="note" value="0"></g:field>
            </p>
            <p>
               <label>Commentaire : </label>
                <g:textArea name="commentaire"></g:textArea>
            </p>
            <g:submitButton name="bModif" value="Ajouter une evaluation"/>
        </g:form>

    </div>
    <div class="content">
        <h3>Evaluations</h3>
        <table>
            <thead>
                <tr>
                    <th>Note</th>
                    <th>Commentaire</th>
                    <th>Utilisateur</th>
                </tr>
            </thead>
            <tbody>
            <g:each in="${evaluations}" var="e">
                <tr>
                    <td>${e.note}/20</td>
                    <td>${e.commentaire}</td>
                    <td>${e.utilisateur.prenom} ${e.utilisateur.nom}</td>
                </tr>
            </g:each>
            </tbody>


        </table>
    </div>
</body>
</html>