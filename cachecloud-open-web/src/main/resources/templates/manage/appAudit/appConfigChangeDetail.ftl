<div class="page-container">
	<div class="page-content">
		
		<%@include file="instanceConfig.jsp" %>
		
		<div class="row">
			<div class="col-md-12">
				<h3 class="page-title">
					配置修改(<font color="red">${appAudit.info}</font>)
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="portlet box light-grey">
					<div class="portlet-title">
						<div class="caption">
							<i class="fa fa-globe"></i>
							配置
							&nbsp;
						</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
							<a href="javascript:;" class="remove"></a>
						</div>
					</div>
					<div class="portlet-body">
						<div class="form">
								<!-- BEGIN FORM-->
								<form action="/manage/app/addAppConfigChange.do" method="post"
									class="form-horizontal form-bordered form-row-stripped" onsubmit="return checkAppConfig();">
										<div class="form-body">
											<div class="form-group">
												<label class="control-label col-md-3">配置项:</label>
												<div class="col-md-5">
													<input type="text" name="appConfigKey" id="appConfigKey" value="${appConfigKey}" class="form-control" />
												</div>
											</div>
										
											<div class="form-group">
												<label class="control-label col-md-3">配置值:</label>
												<div class="col-md-5">
													<input type="text" name="appConfigValue" id="appConfigValue" value="${appConfigValue}" class="form-control">
												</div>
											</div>
											<input type="hidden" name="appId" value="${appId}">
											<input type="hidden" name="appAuditId" value="${appAuditId}">
										
											<div class="form-actions fluid">
												<div class="row">
													<div class="col-md-12">
														<div class="col-md-offset-3 col-md-9">
															<button type="submit" class="btn green">
																<i class="fa fa-check"></i>
																确认
															</button>
														</div>
													</div>
												</div>
											</div>
									</div>
								</form>
								<!-- END FORM-->
							</div>
					</div>
				</div>
				<!-- END EXAMPLE TABLE PORTLET-->
			</div>
		</div>
	</div>
</div>

