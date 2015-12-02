



<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'commentaire', 'error')} required">
	<label for="commentaire">
		<g:message code="evaluation.commentaire.label" default="Commentaire" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="commentaire" required="" value="${evaluationInstance?.commentaire}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'note', 'error')} required">
	<label for="note">
		<g:message code="evaluation.note.label" default="Note" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="note" type="number" value="${evaluationInstance.note}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'poi', 'error')} required">
	<label for="poi">
		<g:message code="evaluation.poi.label" default="Poi" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="poi" name="poi.id" from="${POI.list()}" optionKey="id" required="" value="${evaluationInstance?.poi?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: evaluationInstance, field: 'utilisateur', 'error')} required">
	<label for="utilisateur">
		<g:message code="evaluation.utilisateur.label" default="Utilisateur" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="utilisateur" name="utilisateur.id" from="${Utilisateur.list()}" optionKey="id" required="" value="${evaluationInstance?.utilisateur?.id}" class="many-to-one"/>

</div>

