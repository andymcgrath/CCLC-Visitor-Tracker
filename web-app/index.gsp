<html>
<head>
    <title>CCLC Visitor Tracking</title>
    <meta name="layout" content="main"/>
</head>

<body>

<g:if test="${flash.message}">
    <div class="message">${flash.message}</div>
</g:if>

<br/>
<div class="dialog" style="margin-left:20px;width:60%;">
    <g:link controller="individual" action="list">View Visitor List</g:link><br/>
    <g:link controller="individual" action="create">Add Visitor</g:link><br/>
</div>
<br/>
</body>
</html>