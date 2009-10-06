<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Individual List</title>
</head>
<body>
<div class="nav">
    <span class="menuButton"><g:link class="create" action="create">New Individual</g:link></span>
</div>

<div class="body">
    <h1>Individual List</h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <div class="list">
        <div class="shell">
            <g:form action="search" method="post">
                <input type="text" id="query" name="query" size="50" height="10px">&nbsp;<input value="Search" type="submit" align="right" class="buttons">
            </g:form>
        </div>
        <table>
            <thead>
                <tr>

                    <g:sortableColumn property="lastName" title="Name"/>

                    <g:sortableColumn property="addresses" title="Address"/>

                    <g:sortableColumn property="discoverySource" title="Discovery Source"/>

                    <g:sortableColumn property="notes" title="Notes"/>

                    <g:sortableColumn property="membership" title="Membership"/>

                </tr>
            </thead>
            <tbody>
                <g:each in="${individualList}" status="i" var="individual">
                    <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                        <td><g:link action="edit" id="${individual.id}">${fieldValue(bean: individual, field: 'firstName')} ${fieldValue(bean: individual, field: 'lastName')}</g:link></td>

                        <td>
                            <g:each in="${individual.addresses}" status="j" var="address">
                                ${address.addressLine1?.encodeAsHTML()} ${address.addressLine2?.encodeAsHTML()} ${address.city?.encodeAsHTML()}, ${address.state?.encodeAsHTML()}<br/>
                            </g:each>
                        </td>

                        <td>${individual.discoverySource?.encodeAsHTML()}</td>

                        <td>${fieldValue(bean: individual, field: 'notes')}</td>

                        <td>${fieldValue(bean: individual, field: 'membership')}</td>

                    </tr>
                </g:each>
            </tbody>
        </table>
    </div>
    <div class="paginateButtons">
        <g:paginate total="${Individual.count()}"/>
    </div>
</div>
</body>
</html>
