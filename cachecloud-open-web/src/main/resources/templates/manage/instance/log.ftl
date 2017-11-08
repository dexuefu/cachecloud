<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<title>Redis日志</title>
</head>
	<body STYLE="BACKGROUND-COLOR:#000;color:#FFF">
		<c:forEach items="${instanceLogList}" var="line">
			<c:set var="targetColor" value="white"></c:set>
			<#if test='${fn:indexOf(line,"#") > 0}'>
				<c:set var="targetColor" value="red"></c:set>
			</#if>
			<font color="${targetColor}">${line}</font><br/>
		</c:forEach>
	</body>
</html>
