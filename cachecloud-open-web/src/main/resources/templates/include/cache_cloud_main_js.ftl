<script src="${base}/manage/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${base}/manage/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${base}/manage/plugins/data-tables/jquery.dataTables.js" type="text/javascript"></script>
<script src="${base}/manage/plugins/data-tables/DT_bootstrap.js" type="text/javascript"></script>
<script src="${base}/manage/scripts/app.js" type="text/javascript"></script>
<script src="${base}/manage/scripts/table-managed.js" type="text/javascript"></script>
<script src="${base}/manage/manage/userManage.js" type="text/javascript"></script>     
<script src="${base}/manage/manage/machineManage.js" type="text/javascript"></script>
<script src="${base}/manage/manage/auditManage.js?<%=System.currentTimeMillis()%>" type="text/javascript"></script>
     
<script>
	jQuery(document).ready(function() {    
	   App.init(); // initlayout and core plugins
	   TableManaged.init();
	});
	
</script>

