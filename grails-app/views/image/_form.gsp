



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'src', 'error')} required">
	<label for="src">
		<g:message code="image.src.label" default="Src" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="src" required="" value="${imageInstance?.src}"/>

</div>

