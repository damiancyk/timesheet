<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Spring MVC Multiple File Upload</title>

<script type="text/javascript">
	function showPreview(input, element) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				element.attr('src', e.target.result).width(200).height(200);
			};

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>

</head>
<body>

	<form:form method="post" action="" id="imageform"
		modelAttribute="uploadForm" enctype="multipart/form-data">

		<span class="title">add item</span>
		<hr>

		<table>
			<tr>
				<td><span class="field">name</span>
				</td>
				<td><input type='text' /></td>
			</tr>
			<tr>
				<td><span class="field">description</span>
				</td>
				<td><input type='text' /></td>
			</tr>
			<tr>
				<td><span class="field">front page</span>
				</td>
				<td><input type='file'
					onchange="showPreview(this, $('#previewFront'));" /></td>
			</tr>
			<tr>
				<td><span class="field">back page</span></td>
				<td><input type='file'
					onchange="showPreview(this, $('#previewBack'));" /></td>
			</tr>
			<tr>
				<td><span class="field">pdf</span></td>
				<td><input type='file' /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Upload" /></td>
			</tr>

		</table>
	</form:form>
	<hr>
	<h3>preview:</h3>
	<table>
		<tr>
			<td>front page</td><td>back page</td>
		</tr>
		<tr>
			<td>
				<div class="preview">
					<img id="previewFront" src="#" alt="front page" />
				</div></td><td>
				<div class="preview">
					<img id="previewBack" src="#" alt="back page" />
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
