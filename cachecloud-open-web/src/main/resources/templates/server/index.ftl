<!DOCTYPE html>
<html lang="en">
<head>
    <title>CacheCloud服务器状态</title>
    <#include "include/head.ftl"/>
    <script type="text/javascript" src="${base}/js/chart.js"></script>

</head>
<body role="document">
	<div class="container">
    	<#include "include/headMenu.ftl"/>
	    <div class="tabbable-custom">
	        <ul class="nav nav-tabs" id="app_tabs">
	            <li class="active"><a href="#overview" data-url="/server/overview.do?ip=${ip}&date=${date}" data-toggle="tab">概览</a></li>
	            <li><a href="#cpu" data-url="/server/cpu.do?ip=${ip}&date=${date}" data-toggle="tab">cpu</a></li>
	            <li><a href="#net" data-url="/server/net.do?ip=${ip}&date=${date}" data-toggle="tab">net</a></li>
	        	<li><a href="#disk" data-url="/server/disk.do?ip=${ip}&date=${date}" data-toggle="tab">disk</a></li>
	        </ul>
	        <div class="tab-content">
	            <div class="tab-pane active" id="overview">
	            </div>
	            <div class="tab-pane" id="cpu">
	            </div>
	            <div class="tab-pane" id="net">
	            </div>
	            <div class="tab-pane" id="disk">
	            </div>
	        </div>
	    </div>
	</div>
	<#include "include/foot.ftl"/>
	<script type="text/javascript">
	    $('#app_tabs a').click(function (e) {
	        e.preventDefault();
	
	        var url = $(this).attr("data-url");
	        var href = this.hash;
	        var pane = $(this);
	        var id = $(href).attr("id");
	        // ajax load from data-url
	        $(href).load(url, function (result) {
	            pane.tab('show');
	        });
	    });
	
	    var tabTag = "${tabTag}";
	    if (tabTag.length > 0 && $('#' + tabTag).length > 0) {
	        var tabId = '#' + tabTag;
	        $("a[href=" + tabId + "]").click();
	    } else {
	        $("a[href=#overview]").click();
	    }
	</script>
	<script type="text/javascript" src="${base}/js/docs.min.js"></script>
</body>
</html>
