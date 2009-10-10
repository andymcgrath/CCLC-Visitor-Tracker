<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Email Address List</title>
</head>
<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}">Home</a></span>
    <span class="menuButton"><g:link class="create" action="create">New EmailAddress</g:link></span>
</div>
<div class="body">
    <h1>Email Address List</h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <div class="list">
        <table>
            <thead>
                <tr>

                    <g:sortableColumn property="id" title="Id"/>

                    <g:sortableColumn property="type" title="Type"/>

                    <g:sortableColumn property="emailAddress" title="Email Address"/>

                    <th>Individual</th>

                </tr>
            </thead>
            <tbody>
                <g:each in="${emailAddressList}" status="i" var="emailAddress">
                    <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        <td>${fieldValue(bean: emailAddress, field: 'individual')}</td>

                        <td>${fieldValue(bean: emailAddress, field: 'type')}</td>

                        <td>${fieldValue(bean: emailAddress, field: 'emailAddress')}</td>

                    </tr>
                </g:each>
            </tbody>
        </table>
    </div>
    <div class="paginateButtons">
        <g:paginate total="${EmailAddress.count()}"/>
    </div>
</div>
</body>
</html>
