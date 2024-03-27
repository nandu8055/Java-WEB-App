<%@include file="common/header.jspf"%>
<%@include file="common/navigation.jspf"%>
<div class="container">
	<h1>Your Tasks</h1>
	<table class="table">
		<thead>
			<tr>
				<th>Description</th>
				<th>TargetDate</th>
				<th>Progress</th>
				<th></th>
				<th></th>
			</tr>
		</thead>

		<tbody>

			<c:forEach items="${todos}" var="todos">
				<tr>
					<td>${todos.description}</td>
					<td>${todos.targetDate}</td>
					<td>${todos.done}</td>
					<td><a href="update-todo?id=${todos.id}"
						class="btn btn-success">Update</a></td>
					<td><a href="delete-todo?id=${todos.id}"
						class="btn btn-warning">Delete</a></td>
				</tr>



			</c:forEach>

		</tbody>
	</table>
	<a href="add-todo" class="btn btn-success">add Todo</a>
</div>
<%@include file="common/footer.jspf" %>
</body>
</html>