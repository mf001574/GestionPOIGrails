<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Back-End</title>
    <style type="text/css" media="screen">
    #status {
        background-color: #eee;
        border: .2em solid #fff;
        margin: 2em 2em 1em;
        padding: 1em;
        width: 12em;
        float: left;
        -moz-box-shadow: 0px 0px 1.25em #ccc;
        -webkit-box-shadow: 0px 0px 1.25em #ccc;
        box-shadow: 0px 0px 1.25em #ccc;
        -moz-border-radius: 0.6em;
        -webkit-border-radius: 0.6em;
        border-radius: 0.6em;
    }

    .ie6 #status {
        display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
    }

    #status ul {
        font-size: 0.9em;
        list-style-type: none;
        margin-bottom: 0.6em;
        padding: 0;
    }

    #status li {
        line-height: 1.3;
    }

    #status h1 {
        text-transform: uppercase;
        font-size: 1.1em;
        margin: 0 0 0.3em;
    }

    #page-body {
        margin: 2em 1em 1.25em 18em;
    }

    h2 {
        margin-top: 1em;
        margin-bottom: 0.3em;
        font-size: 1em;
    }

    p {
        line-height: 1.5;
        margin: 0.25em 0;
    }

    #controller-list ul {
        list-style-position: inside;
    }

    #controller-list li {
        line-height: 1.3;
        list-style-position: inside;
        margin: 0.25em 0;
        list-style: none;
    }

    @media screen and (max-width: 480px) {
        #status {
            display: none;
        }

        #page-body {
            margin: 0 1em 1em;
        }

        #page-body h1 {
            margin-top: 0;
        }
    }
    </style>
</head>
<body>
<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div id="page-body" role="main">
   <g:link controller="login" action="login" >Retour</g:link>
    <h1>Back-end de l'application gestion de POI</h1>
    <p>Les rubriques ci-dessous permettent de gérer les données de l'application.</p>
    <div id="controller-list" role="navigation">
        <h2>Menu</h2>
        <ul>
            <li class="controller"><g:link controller="utilisateur" action="index" >Utilisateurs</g:link></li>
            <li class="controller"><g:link controller="emplacement" action="index" >Emplacements</g:link></li>
            <li class="controller"><g:link controller="groupe" action="index" >Groupes</g:link></li>
            <li class="controller"><g:link controller="image" action="index" >Images</g:link></li>
            <li class="controller"><g:link controller="POI" action="index" >POIs</g:link></li>
            <li class="controller"><g:link controller="evaluation" action="index" >Evaluations</g:link></li>
        </ul>
    </div>

</div>
</body>
</html>
