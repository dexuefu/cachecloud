<div class="page-container">
    <div class="page-content">
        <div class="row">
            <div class="col-md-12">
                <h3 class="page-title">
                    	全局统计
                </h3>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="portlet box light-grey">
                    <div class="portlet-title">
                        <div class="caption"><i class="fa fa-globe"></i>全局统计</div>
                        <div class="tools">
                            <a href="javascript:;" class="collapse"></a>
                        </div>
                    </div>
                    <div class="portlet-body">

                        <div class="table-toolbar">
                            <table class="table table-striped table-bordered table-hover">
                                <tr>
                                    <td>机器总内存</td>
                                    <td><fmt:formatNumber value="${totalMachineMem/1024/1024/1024}" pattern="0.00"/>G
                                    </td>
                                    <td>机器空闲内存</td>
                                    <td><fmt:formatNumber value="${totalFreeMachineMem/1024/1024/1024}" pattern="0.00"/>G</td>
                                    <td>实例总内存</td>
                                    <td><fmt:formatNumber value="${totalInstanceMem/1024/1024/1024}" pattern="0.00"/>G
                                    </td>
                                    <td>实例总使用内存</td>
                                    <td><fmt:formatNumber value="${totalUseInstanceMem/1024/1024/1024}" pattern="0.00"/>G</td>
                                </tr>
                                <tr>
                                    <td>应用总数</td>
                                    <td>${totalApps}</td>
                                    <td>运行中应用数</td>
                                    <td>${totalRunningApps}</td>
                                    <td>应用总申请内存</td>
                                    <td><fmt:formatNumber value="${totalApplyMem/1024}" pattern="0.00"/>G</td>
                                    <td>应用已使用内存</td>
                                    <td><fmt:formatNumber value="${totalUsedMem/1024}" pattern="0.00"/>G</td>
                                </tr>

                            </table>
                            <br/>
                            <h3>集群当前可对外提供空间：<fmt:formatNumber
                                value="${(totalFreeMachineMem-(totalInstanceMem-totalUseInstanceMem))/1024/1024/1024}"
                                pattern="0.00"/>G</h3>
                        </div>
                        <table class="table table-striped table-bordered table-hover" id="tableDataList">
                            <thead>
                            <tr>
                                <td>应用ID</td>
                                <td>应用名</td>
                                <td>应用类型</td>
                                <td>内存详情</td>
                                <td>命中率</td>
                                <td>已运行时间(天)</td>
                                <td>申请状态</td>
                                <td>操作</td>
                            </tr>
                            </thead>
                            <tbody>
                            <#list appDetailList as appDetail>
                                <tr class="odd gradeX">
                                    <td>
                                        ${appDetail.appDesc.appId}
                                    </td>
                                    <td>
                                        ${appDetail.appDesc.name}
                                    </td>
                                    <td>
                                        ${appDetail.appDesc.typeDesc}
                                    </td>
                                    <td>
                                    	<span style="display:none"><fmt:formatNumber value="${appDetail.memUsePercent / 100}" pattern="0.00"/></span>
                                        <div class="progress margin-custom-bottom0">
                                            <div class="progress-bar progress-bar-danger progress-bar-success"
                                                 role="progressbar" aria-valuenow="${appDetail.memUsePercent}"
                                                 aria-valuemax="100"
                                                 aria-valuemin="0" style="width: ${appDetail.memUsePercent}%">
                                                    <label style="color: #000000">
                                                        <fmt:formatNumber
                                                                value="${appDetail.mem  * appDetail.memUsePercent / 100 / 1024}"
                                                                pattern="0.00"/>G&nbsp;&nbsp;Used/<fmt:formatNumber value="${appDetail.mem / 1024 * 1.0}" pattern="0.00"/>G&nbsp;&nbsp;Total
                                                    </label>
                                            </div>
                                        </div>
                                    </td>
                                    <td>
                                    	<span style="display:none"><fmt:formatNumber value="${appDetail.hitPercent / 100}" pattern="0.00"/></span>
                                        <<label class="label label-success">${appDetail.hitPercent}%</label>
                                    </td>
                                    <td>${appDetail.appDesc.appRunDays}</td>
                                    <td>
                                        ${appDetail.appDesc.status}
                                    </td>
                                    <td>

                                            <#if appDetail.appDesc.status == 2>
                                                <button type="button" class="btn btn-small btn-primary" id="offline${appDetail.appDesc.appId}"
                                                        onclick="offLine(${appDetail.appDesc.appId})">应用下线
                                                </button>
                                                
                                                <a target="_blank" type="button" class="btn btn-small btn-primary" href="/manage/app/index.do?appId=${appDetail.appDesc.appId}">应用运维</a>

                                            </#if>

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
<script type="text/javascript">
    function offLine(appId) {
    	if(confirm("确认要下线该应用？应用id="+appId)){
            $.ajax({
                type: "get",
                url: "/manage/app/offLine.json",
                data: {appId: appId},
                success: function (result) {
                    alert(result.msg);
                    window.location.reload();
                }
            });
        }
    }
</script>