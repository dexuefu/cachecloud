<div class="page-container">
	<div class="page-content">
		<div class="row">
			<div class="col-md-12">
				<h3 class="page-title">
					用户管理
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="portlet box light-grey">
					<div class="portlet-title">
						<div class="caption"><i class="fa fa-globe"></i>用户列表</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
						</div>
					</div>
					<div class="portlet-body">
						<div class="table-toolbar">
							<div class="btn-group">
								<button id="sample_editable_1_new" class="btn green" data-target="#addUserModal" data-toggle="modal">
								添加新用户 <i class="fa fa-plus"></i>
								</button>
							</div>
							<div class="btn-group" style="float:right">
								<form action="/manage/user/list.do" method="post" class="form-horizontal form-bordered form-row-stripped">
									<label class="control-label">
										用户名:
									</label>
									&nbsp;<input type="text" name="searchChName" id="searchChName" value="" placeholder="中文名"/>
									&nbsp;<button type="submit" class="btn blue btn-sm">查询</button>
								</form>
							</div>
						</div>
						<table class="table table-striped table-bordered table-hover" id="tableDataList">
							<thead>
								<tr>
									<th>id</th>
									<th>域账户</th>
									<th>中文名</th>
									<th>邮箱</th>
									<th>手机</th>
									<th>类型</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<#list users as user>
									<tr class="odd gradeX">
										<td>${user.id}</td>
										<td>${user.name}</td>
										<td>${user.chName}</td>
										<td>${user.email}</td>
										<td>${user.mobile}</td>
										<td>
												<#if user.type == 0 >管理员</#if>
												<#if user.type == 2 >普通用户</#if>
										</td>
										<td>
										<a href="javascript;" data-target="#addUserModal${user.id}" data-toggle="modal">[修改]</a>
										&nbsp;
										<a onclick="if(window.confirm('确认要删除该用户吗?!')){return true;}else{return false;}" href="/manage/user/delete.do?userId=${user.id}">[删除]</a>
										</td>
									</tr>
								</#list>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<#list users as userInfo>
	<#include "/manage/user/addUser.ftl" >
</#list>