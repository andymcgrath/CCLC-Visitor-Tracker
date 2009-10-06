<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Create EmailAddress</title>
</head>
<body>
<div class="nav">
    <span class="menuButton"><g:link class="list" controller="individual" action="list">Individual List</g:link></span>
</div>
<div class="body">
    <h1>Create Email Address</h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${emailAddress}">
        <div class="errors">
            <g:renderErrors bean="${emailAddress}" as="list"/>
        </div>
    </g:hasErrors>
    <g:form action="save" method="post">
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
                        <td valign="top" class="name">
                            <label for="type">Type:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: emailAddress, field: 'type', 'errors')}">
                            <g:select id="type" name="type" from="${emailAddress.constraints.type.inList}" value="${emailAddress.type}"></g:select>
                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="emailAddress">Email Address:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: emailAddress, field: 'emailAddress', 'errors')}">
                            <input type="text" id="emailAddress" name="emailAddress" value="${fieldValue(bean: emailAddress, field: 'emailAddress')}"/>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="buttons">
            <span class="button"><input class="save" type="submit" value="Create"/></span>
        </div>
    </g:form>
</div>
</body>
</html>
