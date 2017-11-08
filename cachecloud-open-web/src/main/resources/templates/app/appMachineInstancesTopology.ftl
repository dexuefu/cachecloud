<link href="http://www.bootcss.com/p/buttons/css/buttons.css" rel="stylesheet">
<div class="row">
    <div class="page-header">
        <a target="_blank" data-container="body" class='button button-caution button-square button-small'> </a>
        <label>代表master节点</label>
        <a target="_blank" data-container="body" class='button button-caution button-square button-small button-border'> </a>
        <label>代表slave节点</label>
        <#if test="${appDesc.type == 5}">
        	<a target="_blank" data-container="body" class='button button-action button-square button-small'> </a>
        	<label>代表Sentinel节点</label>
        </#if>
    </div>
    <div style="margin-top: 20px">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <td  style='vertical-align: middle;text-align: center;'>机器</td>
                <c:forEach var="instanceIndex" begin="1" end="${instancePairCount}"> 
                	<td  style='vertical-align: middle;text-align: center;'>实例对${instanceIndex}</td>
               	</c:forEach>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="machineInstanceEntry" items="${machineInstanceMap}" varStatus="status">
                <tr>
                	<td  style='vertical-align: middle;text-align: center;'>${machineInstanceEntry.key}</td>
                	<c:forEach var="instanceIndex" begin="1" end="${instancePairCount}">
                	    <td style='vertical-align: middle;text-align: center;'>
	                		<c:forEach var="instance" items="${machineInstanceEntry.value}" varStatus="status">
	                			<c:set var="instanceNodeTypeStyle" value="button-caution"/>
	                			<#if test="${instance.type == 5}">
	                				<c:set var="instanceNodeTypeStyle" value="button-action"/>
	                			</#if>
	            				<#if test="${instance.groupId == instanceIndex}">
	            					<a target="_blank" data-container="body" data-toggle="popover" data-placement="top" data-content="<a target='_blank' href='/admin/instance/index.do?instanceId=${instance.id}'>${instance.ip}:${instance.port}</a>" href="/admin/instance/index.do?instanceId=${instance.id}" class='button ${instanceNodeTypeStyle} button-square button-small <#if test="${instance.masterInstanceId > 0}">button-border</#if>'>${instance.groupId}</a>
		            				<#if test="${instance.status == 0}">
		            					(心跳停止)
		            				</#if>
	            				</#if>
	            				
	                		</c:forEach>
                		</td>
                	</c:forEach>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
    
</div>
<script type="text/javascript" src="/resources/js/myPopover.js"></script>


