<div class="page-container">
	<div class="page-content">
		<div class="row">
			<div class="col-md-12">
				<h3 class="page-title">
					配置修改 

						<#if success == 1>
							<font color="red">更新成功</font>
						<#elseif success == 0>
							<font color="red">更新失败</font>
						</#if>

				</h3>
			</div>
		</div>
		
		<div class="row">
				<div class="col-md-12">
					<div class="portlet box light-grey">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-globe"></i>
									填写配置:
									&nbsp;
								</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
								</div>
							</div>
							
							<div class="form">
									<!-- BEGIN FORM-->
									<form action="/manage/config/update.do" method="post" class="form-horizontal form-bordered form-row-stripped">
										<div class="form-body">
											
											<#list configList as config>
												<div class="form-group">
													<label class="control-label col-md-3">
														${config.info}<font color='red'>(*)</font>:
													</label>
													<div class="col-md-5">
															<#if config.configKey == 'cachecloud.whether.schedule.clean.data'>
																<select name="${config.configKey}" class="form-control">
																	<option value="false" <#if config.configValue == 'false'>selected</#if>>
																		否
																	</option>
																	<option value="true" <#if config.configValue == 'true'>selected</#if>>
																		是
																	</option>
																</select>
															<#elseif config.configKey == 'cachecloud.user.login.type'>
																<select name="${config.configKey}" class="form-control">
																	<option value="1" <#if config.configValue == '1'>selected</#if>>
																		session
																	</option>
																	<option value="2" <#if config.configValue == '2'>selected</#if>>
																		cookie
																	</option>
																</select>

															<#else>
																<input type="text" name="${config.configKey}" class="form-control" value="${config.configValue}" />
															</#if>
													</div>
												</div>
											</#list>
											
											<div class="form-actions fluid">
												<div class="row">
													<div class="col-md-12">
														<div class="col-md-offset-3 col-md-9">
															<button type="submit" class="btn green">
																<i class="fa fa-check"></i>
																确认修改
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
					<!-- END TABLE PORTLET-->
				</div>
			</div>
		
	</div>
</div>
