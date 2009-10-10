

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Telephone</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Telephone List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Telephone</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Telephone</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${telephone}">
            <div class="errors">
                <g:renderErrors bean="${telephone}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${telephone?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type">Type:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:telephone,field:'type','errors')}">
                                    <input type="text" id="type" name="type" value="${fieldValue(bean:telephone,field:'type')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="telephoneNumber">Telephone Number:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:telephone,field:'telephoneNumber','errors')}">
                                    <g:select id="telephoneNumber" name="telephoneNumber" from="${telephone.constraints.telephoneNumber.inList}" value="${telephone.telephoneNumber}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="individual">Individual:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:telephone,field:'individual','errors')}">
                                    <g:select optionKey="id" from="${Individual.list()}" name="individual.id" value="${telephone?.individual?.id}" ></g:select>
                                </td>
                            </tr> 
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" value="Update" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
