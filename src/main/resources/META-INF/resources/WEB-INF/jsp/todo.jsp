<%@include file="common/header.jspf"%>
<%@include file="common/navigation.jspf"%>

<div class="container">
	<h1>Enter Todo details</h1>
	<form:form method="post" modelAttribute="todo">
		<fieldset class="mb-3">
			<form:label path="description">description:</form:label>
			<form:input type="text" path="description" required="required" />
			<div>
				<form:errors path="description" cssClass="text-warning" />
			</div>
		</fieldset>
		<fieldset class="mb-3">
			<form:label path="targetDate">target Date:</form:label>
			<form:input type="text" path="targetDate" required="required" />
			<div>
				<form:errors path="targetDate" cssClass="text-warning" />
			</div>
		</fieldset>

		<form:input type="hidden" path="id" />
		<form:input type="hidden" path="done" />
		<input type="submit" class="btn btn-success" />
	</form:form>
</div>
<%@include file="common/footer.jspf"%>
<script type="text/javascript">
	$('#targetDate').datepicker({
		format : 'yyyy-mm-dd'
	});
</script>
</body>
</html>