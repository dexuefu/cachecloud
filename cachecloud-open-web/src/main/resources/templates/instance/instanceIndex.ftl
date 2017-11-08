<!DOCTYPE html>
<html lang="en">
<head>
    <title>实例统计信息</title>
    <#include "include/head.jsp"/>
    <script type="text/javascript" src="/resources/js/jquery-console.js"></script>
</head>
<body role="document">
<div class="container">
    <#include "include/headMenu.jsp"/>
    <div id="systemAlert">
    </div>
    <div class="tabbable-custom">
        <ul class="nav nav-tabs" id="instance_tabs">
            <li class="active"><a href="#instance_stat"
                                  data-url="/admin/instance/stat.html?instanceId=${instanceId}&startDate=${startDate}&endDate=${endDate}"
                                  data-toggle="tab">实例统计信息</a></li>
            <li><a href="#app_topology" data-url="/admin/app/topology.html?appId=${appId}"
                   data-toggle="tab">拓扑结构</a>
            </li>
            <#if test="${type == 2 or type == 6}">
            <li><a href="#instance_slowSelect" data-url="/admin/instance/slowSelect.html?instanceId=${instanceId}"
                   data-toggle="tab">慢查询分析</a>
            </li>
            <li><a href="#instance_configSelect" data-url="/admin/instance/configSelect.html?instanceId=${instanceId}&appId=${appId}"
                   data-toggle="tab">配置查询</a>
            </li>
            <li><a href="#instance_clientList" data-url="/admin/instance/clientList.html?instanceId=${instanceId}"
                   data-toggle="tab">连接信息</a>
            </li>
            </#if>
            <li><a href="#instance_fault"
                   data-url="/admin/instance/fault.html?instanceId=${instanceId}&startDate=${startDate}&endDate=${endDate}"
                   data-toggle="tab">故障报警</a>
            </li>
            <li><a href="#instance_advancedAnalysis" data-url="/admin/instance/advancedAnalysis.html?instanceId=${instanceId}&startDate=${startDate}&endDate=${endDate}"
                   data-toggle="tab">命令曲线</a>
            </li>
            <li><a href="#instance_command" data-url="/admin/instance/command.html?instanceId=${instanceId}"
                   data-toggle="tab">命令执行</a>
            </li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="instance_stat">
            </div>
            <div class="tab-pane" id="app_topology">
            </div>

            <div class="tab-pane" id="instance_slowSelect">
            </div>
            <div class="tab-pane" id="instance_configSelect">
            </div>
            <div class="tab-pane" id="instance_clientList">

            </div>
            <div class="tab-pane" id="instance_fault">
            </div>
            <div class="tab-pane" id="instance_advancedAnalysis">
            </div>
            <div class="tab-pane" id="instance_command">
            </div>
        </div>
    </div>
</div>
<#include "include/foot.jsp"/>
<script src="/resources/js/chart.js"></script>
<script type="text/javascript" src="/resources/js/mem-cloud.js"></script>
<script type="text/javascript">
    $('#instance_tabs a').click(function (e) {
        e.preventDefault();
        var url = $(this).attr("data-url");
        var href = this.hash;
        var pane = $(this);
        var id = $(href).attr("id");
        // ajax load from data-url
        $(href).load(url, function (result) {
            pane.tab('show');
            initChart(id);
        });
    });

    // load first tab content
    var tabTag = "${tabTag}";
    if (tabTag.length > 0 && $('#' + tabTag).length > 0) {
        var tabId = '#' + tabTag;
        $("a[href=" + tabId + "]").click();
    } else {
        $("a[href=#instance_stat]").click();
    }


</script>
</body>
</html>
