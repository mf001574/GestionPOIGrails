



<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="groupe.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${groupeInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'images', 'error')} ">
	<label for="images">
		<g:message code="groupe.images.label" default="Images" />
		
	</label>
	<g:select name="images" from="${Image.list()}" multiple="multiple" optionKey="id" size="5" value="${groupeInstance?.images*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupeInstance, field: 'pois', 'error')} ">
	<label for="pois">
		<g:message code="groupe.pois.label" default="Pois" />
		
	</label>
	<g:select name="pois" from="${POI.list()}" multiple="multiple" optionKey="id" size="5" value="${groupeInstance?.pois*.id}" class="many-to-many"/>

</div>

