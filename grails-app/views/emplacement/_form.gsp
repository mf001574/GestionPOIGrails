



<div class="fieldcontain ${hasErrors(bean: emplacementInstance, field: 'adresse', 'error')} required">
	<label for="adresse">
		<g:message code="emplacement.adresse.label" default="Adresse" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="adresse" required="" value="${emplacementInstance?.adresse}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: emplacementInstance, field: 'latitude', 'error')} required">
	<label for="latitude">
		<g:message code="emplacement.latitude.label" default="Latitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="latitude" value="${fieldValue(bean: emplacementInstance, field: 'latitude')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: emplacementInstance, field: 'longitude', 'error')} required">
	<label for="longitude">
		<g:message code="emplacement.longitude.label" default="Longitude" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="longitude" value="${fieldValue(bean: emplacementInstance, field: 'longitude')}" required=""/>

</div>

