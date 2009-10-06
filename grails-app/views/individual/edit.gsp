<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <title>Edit Individual</title>
</head>
<body>
<div class="nav">
    <span class="menuButton"><g:link class="list" action="list">Individual List</g:link></span>
    <span class="menuButton"><g:link class="create" action="create">New Individual</g:link></span>
</div>
<div class="body">
    <h1>Edit Individual</h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${individual}">
        <div class="errors">
            <g:renderErrors bean="${individual}" as="list"/>
        </div>
    </g:hasErrors>
    <g:form method="post">
        <input type="hidden" name="id" value="${individual?.id}"/>
        <div class="dialog">
            <table>
                <tbody>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="firstName">First Name:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: individual, field: 'firstName', 'errors')}">
                            <input type="text" id="firstName" name="firstName" value="${fieldValue(bean: individual, field: 'firstName')}"/>
                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="lastName">Last Name:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: individual, field: 'lastName', 'errors')}">
                            <input type="text" id="lastName" name="lastName" value="${fieldValue(bean: individual, field: 'lastName')}"/>
                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="addresses">Addresses:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: individual, field: 'addresses', 'errors')}">
                            <div class="shell">
                                <g:each var="a" in="${individual?.addresses?}">
                                    ${a?.type}: <g:link controller="address" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link><p/>
                                </g:each>
                            </div>
                            <g:link controller="address" params="['individual.id':individual?.id]" action="create">Add Address</g:link>

                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="telephones">Telephones:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: individual, field: 'telephones', 'errors')}">
                            <div class="shell">
                                <g:each var="t" in="${individual?.telephones?}">
                                    ${t?.type}: <g:link controller="telephone" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link><p/>
                                </g:each>
                            </div>
                            <g:link controller="telephone" params="['individual.id':individual?.id]" action="create">Add Telephone</g:link>

                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="emailAddresses">Email Addresses:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: individual, field: 'emailAddresses', 'errors')}">
                            <div class="shell">
                                <g:each var="e" in="${individual?.emailAddresses?}" sort>
                                    ${e?.type}: <g:link controller="emailAddress" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link><p/>
                                </g:each>
                            </div>
                            <g:link controller="emailAddress" params="['individual.id':individual?.id]" action="create">Add Email Address</g:link>

                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="visits">Visits:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: individual, field: 'visits', 'errors')}">
                            <div class="shell">
                                <g:each var="v" in="${individual?.visits?}">
                                    <g:link controller="visit" action="show" id="${v.id}"><g:formatDate format="MMM dd, yyyy" date="${v?.visitationDate}"/></g:link> -- ${v?.service} Service<p/>
                                </g:each>
                            </div>
                            <g:link controller="visit" params="['individual.id':individual?.id]" action="create">Add Visit</g:link>

                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="discoverySource">Discovery Source:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: individual, field: 'discoverySource', 'errors')}">
                            <input type="text" id="discoverySource" name="discoverySource" value="${fieldValue(bean: individual, field: 'discoverySource')}"/>
                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="notes">Notes:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: individual, field: 'notes', 'errors')}">
                            <textarea rows="5" cols="100" name="notes">${fieldValue(bean: individual, field: 'notes')}</textarea>
                        </td>
                    </tr>

                    <tr class="prop">
                        <td valign="top" class="name">
                            <label for="membership">Is Interested in Membership:</label>
                        </td>
                        <td valign="top" class="value ${hasErrors(bean: individual, field: 'membership', 'errors')}">
                            <g:checkBox name="membership" value="${individual?.membership}"></g:checkBox>
                        </td>
                    </tr>

                </tbody>
            </table>
        </div>
        <div class="buttons">
            <span class="button"><g:actionSubmit class="save" value="Update"/></span>
            <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete"/></span>
        </div>
    </g:form>
</div>
</body>
</html>
