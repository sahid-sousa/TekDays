<%@ page import="com.tekdays.TekEvent" %>



<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="tekEvent.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${tekEventInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'city', 'error')} required">
	<label for="city">
		<g:message code="tekEvent.city.label" default="City" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="city" required="" value="${tekEventInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="tekEvent.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="500" required="" value="${tekEventInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'organizer', 'error')} required">
	<label for="organizer">
		<g:message code="tekEvent.organizer.label" default="Organizer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="organizer" name="organizer.id" from="${com.tekdays.TekUser.list()}" optionKey="id" required="" value="${tekEventInstance?.organizer?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'venue', 'error')} required">
	<label for="venue">
		<g:message code="tekEvent.venue.label" default="Venue" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="venue" required="" value="${tekEventInstance?.venue}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="tekEvent.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${tekEventInstance?.startDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="tekEvent.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${tekEventInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: tekEventInstance, field: 'volunteers', 'error')} ">
	<label for="volunteers">
		<g:message code="tekEvent.volunteers.label" default="Volunteers" />
		
	</label>
	<g:select name="volunteers" from="${com.tekdays.TekUser.list()}" multiple="multiple" optionKey="id" size="5" value="${tekEventInstance?.volunteers*.id}" class="many-to-many"/>

</div>

