



<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="utilisateur.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${utilisateurInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="utilisateur.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${utilisateurInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'mdp', 'error')} required">
	<label for="mdp">
		<g:message code="utilisateur.mdp.label" default="Mdp" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mdp" required="" value="${utilisateurInstance?.mdp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} required">
	<label for="prenom">
		<g:message code="utilisateur.prenom.label" default="Prenom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="prenom" required="" value="${utilisateurInstance?.prenom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'evaluations', 'error')} ">
	<label for="evaluations">
		<g:message code="utilisateur.evaluations.label" default="Evaluations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${utilisateurInstance?.evaluations?}" var="e">
    <li><g:link controller="evaluation" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="evaluation" action="create" params="['utilisateur.id': utilisateurInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'evaluation.label', default: 'Evaluation')])}</g:link>
</li>
</ul>


</div>

