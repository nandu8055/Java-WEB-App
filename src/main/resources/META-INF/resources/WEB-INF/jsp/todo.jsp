<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>


<html>
<head>
<link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css"
	rel="stylesheet">
<link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css"
	rel="stylesheet">
	
<title>Add todo page</title>
</head>
<body>
	<div class="container">
		<h1>Enter Todo details</h1>
		<form:form method="post" modelAttribute="todo">
		<fieldset class="mb-3">
			<form:label path="description">description:</form:label>
			<form:input type="text" path="description" required="required"/>
			<div><form:errors path="description" cssClass="text-warning"/></div>
		</fieldset>
		<fieldset class="mb-3">
			<form:label path="targetDate">target Date:</form:label>
			<form:input type="text" path="targetDate" required="required"/>
			<div><form:errors path="targetDate" cssClass="text-warning"/></div>
		</fieldset>
		
		<form:input type="hidden" path="id"/>
		<form:input type="hidden" path="done"/>
		<input type="submit" class="btn btn-success"/>
		</form:form>
	</div>
		<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
	<script type="text/javascript">
	$('#targetDate').datepicker({
	    format: 'yyyy-mm-dd'
	});
	</script>
</body>
</html>