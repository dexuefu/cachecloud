<!DOCTYPE html>
<html lang="en">
<head>
    <title>迁移工具执行状态</title>
    <#include "/include/head.ftl"/>
    <script type="text/javascript">
    
    </script>
    
</head>
<body role="document">
	<div class="container">
	    <#include "/include/headMenu.ftl"/>
	    <div id="systemAlert">
	    </div>
	    
	    <div class="row">
	        <div class="col-md-12">
	            <div class="page-header">
	                <h3>迁移工具执行状态</h3>
	            </div>
			</div>
		</div>
		<div class="row">
			<c:forEach items="${migrateToolStatMap}" var="entry">
				<div class="col-md-12">
		            <div class="page-header">
		                <h4>${entry.key}</h4>
		            </div>
				</div>
				<div class="col-md-12">
		            <table class="table table-striped table-hover" style="margin-top: 0px">
		                <thead>
			                <tr>
			                    <td>key</td>
			                    <td>value</td>
			                </tr>
		                </thead>
		                <tbody>
		                	<c:forEach items="${entry.value}" var="entry2">
		                		 <tr>
				                    <td>${entry2.key}</td>
				                    <td>${entry2.value}</td>
				                </tr>
		                	</c:forEach>
		                </tbody>
		            </table>
	            </div>
			</c:forEach>
        </div>
	    
	</div>
	<br/><br/><br/><br/><br/><br/><br/>
	<#include "/include/foot.ftl"/>
</body>
</html>

