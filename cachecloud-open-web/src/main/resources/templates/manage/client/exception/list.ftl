<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>CacheCloud管理后台</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	
	<%@include file="/WEB-INF/jsp/manage/include/cache_cloud_main_css.jsp" %>

</head>

<body class="page-header-fixed">
	<%@include file="/WEB-INF/jsp/manage/include/head.jsp" %>

	<%@include file="/WEB-INF/jsp/manage/include/left.jsp" %>

	<%@include file="statList.jsp" %>
	
	<%@include file="/WEB-INF/jsp/manage/include/foot.jsp" %>

	<script src="${base}/manage/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${base}/manage/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${base}/manage/plugins/data-tables/jquery.dataTables.js" type="text/javascript"></script>
	<script src="${base}/manage/plugins/data-tables/DT_bootstrap.js" type="text/javascript"></script>
	<script src="${base}/manage/scripts/app.js" type="text/javascript"></script>
	     
	<script>
		jQuery(document).ready(function() {    
		   App.init(); // initlayout and core plugins
		   TableManaged.init();
		});
		
	</script>
	
</body>
</html>