

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'POI.label', default: 'POI')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-POI" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-POI" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list POI">
			
				<g:if test="${POIInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="POI.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${POIInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${POIInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="POI.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${POIInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${POIInstance?.emplacement}">
				<li class="fieldcontain">
					<span id="emplacement-label" class="property-label"><g:message code="POI.emplacement.label" default="Emplacement" /></span>
					
						<span class="property-value" aria-labelledby="emplacement-label"><g:link controller="emplacement" action="show" id="${POIInstance?.emplacement?.id}">${POIInstance?.emplacement?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${POIInstance?.evaluation}">
				<li class="fieldcontain">
					<span id="evaluation-label" class="property-label"><g:message code="POI.evaluation.label" default="Evaluation" /></span>
					
						<g:each in="${POIInstance.evaluation}" var="e">
						<span class="property-value" aria-labelledby="evaluation-label"><g:link controller="evaluation" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${POIInstance?.images}">
				<li class="fieldcontain">
					<span id="images-label" class="property-label"><g:message code="POI.images.label" default="Images" /></span>
					
						<g:each in="${POIInstance.images}" var="i">
						<span class="property-value" aria-labelledby="images-label"><g:link controller="image" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:POIInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${POIInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
