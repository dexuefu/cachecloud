<div id="addUserModal${userInfo.id}" class="modal fade" tabindex="-1" data-width="400">
	<div class="modal-dialog">
		<div class="modal-content">
		
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
				<h4 class="modal-title">管理用户</h4>
			</div>
			
			<form class="form-horizontal form-bordered form-row-stripped">
				<div class="modal-body">
					<div class="row">
						<!-- 控件开始 -->
						<div class="col-md-12">
							<!-- form-body开始 -->
							<div class="form-body">
								<div class="form-group">
									<label class="control-label col-md-3">
										域账户名:
									</label>
									<div class="col-md-5">
										<input type="text" name="name" id="name${userInfo.id}"
											value="${userInfo.name}" placeholder="域账户名(邮箱前缀)"
											class="form-control" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-md-3">
										中文名:
									</label>
									<div class="col-md-5">
										<input type="text" name="chName" id="chName${userInfo.id}"
											value="${userInfo.chName}" placeholder="中文名"
											class="form-control" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-md-3">
										邮箱:
									</label>
									<div class="col-md-5">
										<input type="text" name="email" id="email${userInfo.id}"
											value="${userInfo.email}" placeholder="邮箱"
											class="form-control" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-md-3">
										手机:
									</label>
									<div class="col-md-5">
										<input type="text" name="mobile" id="mobile${userInfo.id}"
											value="${userInfo.mobile}" placeholder="手机"
											class="form-control" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="control-label col-md-3">
										类型:
									</label>
									<div class="col-md-5">
										<select name="type" id="type${userInfo.id}" class="form-control select2_category">
											<option value="0" <#if test="${userInfo.type == 0}">selected="selected"</#if>>
												管理员
											</option>
											<option value="2" <#if test="${userInfo.type == 2}">selected="selected"</#if>>
												普通用户
											</option>
										</select>
									</div>
								</div>
								<input type="hidden" id="userId${userInfo.id}" name="userId" value="${userInfo.id}"/>
							</div>
							<!-- form-body 结束 -->
						</div>
						<div id="info${userInfo.id}"></div>
						<!-- 控件结束 -->
					</div>
				</div>
				
				<div class="modal-footer">
					<button type="button" data-dismiss="modal" class="btn" >Close</button>
					<button type="button" id="userBtn${userInfo.id}" class="btn red" onclick="saveOrUpdateUser('${userInfo.id}')">Ok</button>
				</div>
			
			</form>
		</div>
	</div>
</div>
