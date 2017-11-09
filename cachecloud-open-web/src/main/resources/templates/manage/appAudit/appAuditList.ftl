<div class="page-container">
	<div class="page-content">
		<div class="row">
			<div class="col-md-12">
				<h3 class="page-title">
					应用审批列表
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="portlet box light-grey">
					<div class="portlet-title">
						<div class="caption"><i class="fa fa-globe"></i>审批列表</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
						</div>
					</div>
					<div class="portlet-body">
						<div class="table-toolbar">
							<div class="btn-group" style="float:right">
								<form action="/manage/app/auditList.do" method="post" class="form-horizontal form-bordered form-row-stripped">
									<label class="control-label">
										审核状态:
									</label>
									<select name="status">
										<option value="0">
											待处理列表
										</option>
                                        <option value="2">
											审核已处理列表
                                        </option>
										<option value="1">
											通过列表
										</option>
										<option value="-1">
											驳回列表
										</option>
									</select>
									
									&nbsp;<button type="submit" class="btn blue btn-sm">查询</button>
								</form>
							</div>
						</div>
						<table class="table table-striped table-bordered table-hover" id="tableDataList">
							<thead>
								<tr>
									<th>appID</th>
									<th>应用名</th>
									<th>申请人</th>
									<th>审核状态</th>
									<th>申请类型</th>
									<th>申请描述</th>
									<th>申请时间</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<#list list as item>
									<tr class="odd gradeX">
										<td>
												<#if item.type == 3>
													无
												<#else>
													<a target="_blank" href="/admin/app/index.do?appId=${item.appIdS}>${item.appId}</a>
												</#if>
											
										</td>
										<td>
											
												<#if item.type == 3>
													无
												<#else>
													${item.appDesc.name}												
												</#if>
											
										</td>
										<td>${item.userName}</td>
										<td>
											
												<#if item.status == 0>待审</#if>
												<#if item.status == 1>通过</#if>
												<#if item.status == 2>审核已处理</#if>
												<#if item.status == -1>驳回</#if>
											
										</td>
										<td>
											
												<#if item.type == 0>
													应用申请
												</#if>
												<#if item.type == 1>
													应用扩容
												</#if>
												<#if item.type == 2>
													应用配置修改
												</#if>
												<#if item.type == 3>
													注册用户申请
												</#if>
												<#if item.type == 4>
													实例配置修改
												</#if>
												
										</td>
										<td>${item.info}</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm:ss" value="${item.createTime}"/></td>
										<td>
												<#if item.type == 3>
													<a onclick="if(window.confirm('确认要通过该申请请求吗?')){return true;}else{return false;}" href="/manage/user/addAuditStatus.do?status=1&appAuditId=${item.id}>[通过]</a>
												<#else>
													<#assign auditUrl="/manage/app/addAuditStatus.do?status=1&appAuditId=${item.id}" >
												</#if>

												<#if item.status == 2>
													<a onclick="if(window.confirm('确认要通过该申请请求吗?')){return true;}else{return false;}" href="${auditUrl}>[通过]</a>
												</#if>

												<#if item.status == 0>
													<a href="javascript:void(0);" data-target="#appRefuseModal${item.id}" data-toggle="modal">[驳回]</a>
												</#if>

												<#if item.type == 0>
													<#assign auditDealUrl="/manage/app/initAppDeploy.do?appAuditId=${item.id}">
												</#if>
												<#if item.type == 1>
													<#assign auditDealUrl="/manage/app/initAppScaleApply.do?appAuditId=${item.id}"/>
												</#if>
												<#if item.type == 2>
													<#assign auditDealUrl="/manage/app/initAppConfigChange.do?appAuditId=${item.id}"/>
												</#if>
												<#if item.type == 4>
													<#assign auditDealUrl="/manage/instance/initInstanceConfigChange.do?appAuditId=${item.id}"/>
												</#if>
												<#if item.status == 0 && item.type != 3>
													<a href="${auditDealUrl}>[审批处理]</a>
												</#if>
										</td>
									</tr>
								</#list>
							</tbody>
						</table>
					</div>
				</div>
				<!-- END EXAMPLE TABLE PORTLET-->
			</div>
		</div>
	</div>
</div>

<#list list as item>
	<#include "manage/appAudit/addAudit.ftl" >
</#list>







