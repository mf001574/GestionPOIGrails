<%--
  Created by IntelliJ IDEA.
  User: Florian
  Date: 05/12/2015
  Time: 20:28
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Détail Groupe</title>
</head>
<body>
<g:include view="frontEnd/menu.gsp"></g:include>
<div class="content">
    <h3>${groupe.nom}</h3>
    <ul>
        <li>Id : ${groupe.id}</li>
        <li>POI(s) :
            <ul>
                <g:each in="${groupe.pois}" var="poi">
                    <li>${poi.nom}</li>
                </g:each>
            </ul>
        </li>
    </ul>
    <ul class="lImg">
    <g:each in="${groupe.images}" var="img">
        <li><asset:image src="${img.src}"></asset:image></li>
    </g:each>
    </ul>
</div>

</body>
</html>