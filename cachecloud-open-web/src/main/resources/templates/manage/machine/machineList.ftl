<div class="page-container">
	<div class="page-content">
		<div class="row">
			<div class="col-md-12">
				<h3 class="page-title">
					机器管理
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="portlet box light-grey">
					<div class="portlet-title">
						<div class="caption"><i class="fa fa-globe"></i>机器列表</div>
						<div class="tools">
							<a href="javascript:;" class="collapse"></a>
						</div>
					</div>
					<div class="portlet-body">
                        <div class="table-toolbar">
                            <div class="btn-group">
                                <button id="sample_editable_1_new" class="btn green" data-target="#addMachineModal" data-toggle="modal">
                                    	添加新机器 <i class="fa fa-plus"></i>
                                </button>
                            </div>
                            <div class="btn-group" style="float:right">
                                <form action="/manage/machine/list.do" method="post" class="form-horizontal form-bordered form-row-stripped">
                                    <label class="control-label">
                                        	机器ip:
                                    </label>
                                    &nbsp;<input type="text" name="ipLike" id="ipLike" value="" placeholder="机器ip"/>
                                    &nbsp;<button type="submit" class="btn blue btn-sm">查询</button>
                                </form>
                            </div>
                        </div>
						<table class="table table-striped table-bordered table-hover" id="tableDataList">
							<thead>
								<tr>
									<th>ip</th>
									<th>内存使用率</th>
									<th>已分配内存</th>
									<th>CPU使用率</th>
									<th>网络流量</th>
									<th>机器负载</th>
									<th>核数/实例数</th>
									<th>最后统计时间</th>
									<th>是否虚机</th>
									<th>机房</th>
									<th>额外说明</th>
									<th>状态收集</th>
                                    <th>操作</th>
								</tr>
							</thead>
							<tbody>
								<#list list as machine>
									<tr class="odd gradeX">
										<td>
											<a target="_blank" href="/manage/machine/machineInstances.do?ip=${machine.info.ip}">${machine.info.ip}</a>
										</td>
										<td>

												<#if machine.memoryUsageRatio?? || machine.memoryUsageRatio??>
													收集中..${collectAlert}
												<#else>
													哈哈哈
												</#if>
										</td>
                                        <td>

											<#if machine.memoryUsageRatio?? || machine.memoryUsageRatio??>
                                                收集中..${collectAlert}
											<#else>
                                                哈哈哈
											</#if>
                                            
                                        </td>
										<td>
											<#if machine.memoryUsageRatio?? || machine.memoryUsageRatio??>
                                                收集中..${collectAlert}
											<#else>
												${machine.cpuUsage}
											</#if>
										</td>
										<td>
											${machine.traffic / 1024 / 1024}
										</td>
										<td>
											<#if machine.load??>
                                                收集中..${collectAlert}
											<#else>
												${machine.load}
											</#if>
                                        </td>
                                        <td></td>

										<td>${machine.modifyTime}</td>
                                        <td>
                                        		${machine.info.virtual}
                                        </td>
										<td>${machine.info.room}</td>
										<td>
										${machine.info.extraDesc}
										<#if machine.info.type == 2>
											<font color='red'>(迁移工具机器)</font>
										</#if>
										</td>
										<td>
											<#if machine.info.collect == 1>
                                       			<td>开启</td>
											<#else>
                                       			<th>关闭</th>
											</#if>
                                        </td>
                                        <td>
                                        	<a href="/server/index.do?ip=${machine.info.ip}" class="btn btn-info" target="_blank">监控</a>
                                        	&nbsp;
                                            <a href="javascript;" data-target="#addMachineModal${machine.info.id}" class="btn btn-info" data-toggle="modal">修改</a>
                                            &nbsp;
                                            
                                            <button id="removeMachineBtn${machine.info.id}" onclick="removeMachine(this.id,'${machine.info.ip}')" type="button" class="btn btn-info">删除</button>
                                            
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
	<#list list as machine>
		<#include "/manage/machine/addMachine.ftl" >
	</#list>
	<#include "/manage/machine/addMachine.ftl" >
</div>
