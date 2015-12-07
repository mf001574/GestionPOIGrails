<nav>
    <asset:link rel="stylesheet" href="template.css"></asset:link>
    <ul>
        <li><g:link controller="login" action="disconnect">Se déconnecter</g:link></li>
        <li><g:link uri="/utilisateur/${session.utilisateur.id}">Profil</g:link></li>
        <li><g:link controller="utilisateur" action="lister">Utilisateur</g:link></li>
        <li><g:link controller="groupe" action="lister">Groupe</g:link></li>
        <li><g:link controller="POI" action="lister">POI</g:link></li>
        <li><g:link uri="/backEnd" target="_blank">Back-end</g:link></li>
    </ul>
</nav>