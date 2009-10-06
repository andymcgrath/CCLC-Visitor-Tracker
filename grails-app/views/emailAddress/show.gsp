<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Show Email Address</title>
</head>
<body>
<div class="nav">
    <span class="menuButton"><g:link class="list" controller="individual" action="list">Individual List</g:link></span>
    <span class="menuButton"><g:link class="create" action="create">New Email Address</g:link></span>
</div>
<div class="body">
    <h1>Show EmailAddress</h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <div class="dialog">
        <table>
            <tbody>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="individual">Individual:</label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: emailAddress, field: 'individual', 'errors')}">
                        <g:link controller="individual" action="show" id="${emailAddress?.individual?.id}">${emailAddress?.individual?.encodeAsHTML()}</g:link>
                        <g:hiddenField name="individual.id" value="${emailAddress?.individual?.id}"/>
                    </td>
                </tr>

                <tr class="prop">
                    <td valign="top" class="name">Type:</td>

                    <td valign="top" class="value">${fieldValue(bean: emailAddress, field: 'type')}</td>

                </tr>

                <tr class="prop">
                    <td valign="top" class="name">Email Address:</td>

                    <td valign="top" class="value">${fieldValue(bean: emailAddress, field: 'emailAddress')}</td>

                </tr>

            </tbody>
        </table>
    </div>
    <div class="buttons">
        <g:form>
            <input type="hidden" name="id" value="${emailAddress?.id}"/>
            <span class="button"><g:actionSubmit class="edit" value="Edit"/></span>
            <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete"/></span>
        </g:form>
    </div>
</div>
</body>
</html>
