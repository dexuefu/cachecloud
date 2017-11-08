<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>迁移日志</title>
</head>
	<body STYLE="BACKGROUND-COLOR:#000;color:#FFF">
		<c:forEach items="${logList}" var="line">
			<font color="white">${line}</font><br/>
		</c:forEach>
	</body>
</html>
