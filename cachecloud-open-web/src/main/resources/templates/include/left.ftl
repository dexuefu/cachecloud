<script src="/resources/manage/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<div id="leftMenu" class="page-sidebar navbar-collapse collapse">
	<ul class="page-sidebar-menu">
		<li>
			<div class="sidebar-toggler hidden-phone"></div>
		</li>
		
		<li <#if test="${totalActive == 1}">class="active"</#if>>
			<a href="/manage/total/list.do">
				<i class="fa fa-map-marker"></i> 
				<span class="title">全局统计</span>
				<#if test="${totalActive == 1}">
					<span class="selected"></span>
					<span class="arrow"></span>
				</#if>
			</a>
		</li>
		
		<li <#if test="${checkActive == 1}">class="active"</#if>>
			<a href="/manage/app/auditList.do">
				<i class="fa fa-map-marker"></i> 
				<span class="title">流程审批</span>
				<#if test="${checkActive == 1}">
					<span class="selected"></span>
					<span class="arrow"></span>
				</#if>
			</a>
		</li>
		<li <#if test="${userActive == 1}">class="active"</#if>>
			<a href="/manage/user/list.do">
				<i class="fa fa-map-marker"></i> 
				<span class="title">用户管理</span>
				<#if test="${userActive == 1}">
					<span class="selected"></span>
					<span class="arrow"></span>
				</#if>
			</a>
		</li>
		<li <#if test="${quartzActive == 1}">class="active"</#if>>
			<a href="/manage/quartz/list.do">
				<i class="fa fa-map-marker"></i> 
				<span class="title">Quartz管理</span>
				<#if test="${quartzActive == 1}">
					<span class="selected"></span>
					<span class="arrow"></span>
				</#if>
			</a>
		</li>
		<li <#if test="${machineActive == 1}">class="active"</#if>>
			<a href="/manage/machine/list.do">
				<i class="fa fa-map-marker"></i> 
				<span class="title">机器管理</span>
				<#if test="${machineActive == 1}">
					<span class="selected"></span>
					<span class="arrow"></span>
				</#if>
			</a>
		</li>
		
		<li <#if test="${clientExceptionActive == 1}">class="active"</#if>>
			<a href="/manage/client/exception">
				<i class="fa fa-map-marker"></i> 
				<span class="title">客户端异常统计</span>
				<#if test="${clientExceptionActive == 1}">
					<span class="selected"></span>
					<span class="arrow"></span>
				</#if>
			</a>
		</li>
		
		<li <#if test="${clientVersionActive == 1}">class="active"</#if>>
			<a href="/manage/client/version">
				<i class="fa fa-map-marker"></i> 
				<span class="title">客户端版本统计</span>
				<#if test="${clientVersionActive == 1}">
					<span class="selected"></span>
					<span class="arrow"></span>
				</#if>
			</a>
		</li>
		
		<li <#if test="${noticeActive == 1}">class="active"</#if>>
			<a href="/manage/notice/initNotice.do">
				<i class="fa fa-map-marker"></i> 
				<span class="title">系统通知</span>
				<#if test="${noticeActive == 1}">
					<span class="selected"></span>
					<span class="arrow"></span>
				</#if>
			</a>
		</li>
		
		<li <#if test="${redisConfigActive == 1}">class="active"</#if>>
			<a href="/manage/redisConfig/init.do">
				<i class="fa fa-map-marker"></i> 
				<span class="title">Redis配置模板管理</span>
				<#if test="${redisConfigActive == 1}">
					<span class="selected"></span>
					<span class="arrow"></span>
				</#if>
			</a>
		</li>
		
		<li <#if test="${instanceAlertValueActive == 1}">class="active"</#if>>
			<a href="/manage/instanceAlert/init.do">
				<i class="fa fa-map-marker"></i> 
				<span class="title">Redis报警阀值</span>
				<#if test="${instanceAlertValueActive == 1}">
					<span class="selected"></span>
					<span class="arrow"></span>
				</#if>
			</a>
		</li>
		
		<li <#if test="${configActive == 1}">class="active"</#if>>
			<a href="/manage/config/init.do">
				<i class="fa fa-map-marker"></i> 
				<span class="title">系统配置管理</span>
				<#if test="${configActive == 1}">
					<span class="selected"></span>
					<span class="arrow"></span>
				</#if>
			</a>
		</li>
		
	</ul>
</div>
