<!DOCTYPE html>
<html>
<head>
   <title>Bienvenue sur l'application de Gestion de POI</title>
    <asset:link rel="stylesheet" href="template.css"></asset:link>
</head>
<body>
<article>
    <h1>Page de connexion</h1>
        <g:form controller="login" action="connect"  method="POST">
            <p>
                <label>Email </label>
                <g:field type="email" name="email"/>
            </p>
            <p>
                <label>Mot de passe </label>
                <g:passwordField name="mdp"/><br/>
            </p>
            <g:if test="${flash.message}">
               <p>
                   <label>Message</label>
                   <span>${flash.message}</span>
               </p>
            </g:if>
            <g:submitButton name="bConnexion" value="Se connecter"/>
        </g:form>


</article>
</body>
</html>
