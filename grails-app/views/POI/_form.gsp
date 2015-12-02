



<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="POI.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${POIInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="POI.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${POIInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'emplacement', 'error')} required">
	<label for="emplacement">
		<g:message code="POI.emplacement.label" default="Emplacement" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="emplacement" name="emplacement.id" from="${Emplacement.list()}" optionKey="id" required="" value="${POIInstance?.emplacement?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'evaluation', 'error')} ">
	<label for="evaluation">
		<g:message code="POI.evaluation.label" default="Evaluation" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${POIInstance?.evaluation?}" var="e">
    <li><g:link controller="evaluation" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="evaluation" action="create" params="['POI.id': POIInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'evaluation.label', default: 'Evaluation')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: POIInstance, field: 'images', 'error')} ">
	<label for="images">
		<g:message code="POI.images.label" default="Images" />
		
	</label>
	<g:select name="images" from="${Image.list()}" multiple="multiple" optionKey="id" size="5" value="${POIInstance?.images*.id}" class="many-to-many"/>

</div>

