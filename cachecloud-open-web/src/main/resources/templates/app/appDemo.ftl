<div class="row">
    <br/>
    
    Maven Dependency：
    <div id="dependency" class="highlight">
        <pre class="prettyprint">
            <c:forEach var="line" items="${dependency}">
            ${line}<br/>
            </c:forEach>
        </pre>
    </div>

	Demo Code：
    <div id="code" class="highlight">
        <pre class="prettyprint">
        <c:forEach var="line" items="${code}">
            ${line}<br/>
        </c:forEach>
        </pre>
    </div>
    
    Rest API：
    <div id="code" class="highlight">
        <pre class="prettyprint">
            ${restApi}<br/>
        </pre>
    </div>
    
    <#if test="${springConfig != null}">
    	Spring Config Demo：
	    <div id="springConfig" class="highlight">
	        <pre class="prettyprint">
	        <c:forEach var="line" items="${springConfig}">
	            ${line}<br/>
	        </c:forEach>
	        </pre>
	    </div>
    </#if>
    
</div>
<script>
    prettyPrint();
</script>