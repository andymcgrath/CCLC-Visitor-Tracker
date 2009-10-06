

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Address</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Address List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Address</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Address</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${address}">
            <div class="errors">
                <g:renderErrors bean="${address}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${address?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type">Type:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:address,field:'type','errors')}">
                                    <g:select id="type" name="type" from="${address.constraints.type.inList}" value="${address.type}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="addressLine1">Address Line1:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:address,field:'addressLine1','errors')}">
                                    <input type="text" id="addressLine1" name="addressLine1" value="${fieldValue(bean:address,field:'addressLine1')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="addressLine2">Address Line2:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:address,field:'addressLine2','errors')}">
                                    <input type="text" id="addressLine2" name="addressLine2" value="${fieldValue(bean:address,field:'addressLine2')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city">City:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:address,field:'city','errors')}">
                                    <input type="text" id="city" name="city" value="${fieldValue(bean:address,field:'city')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state">State:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:address,field:'state','errors')}">
                                    <input type="text" id="state" name="state" value="${fieldValue(bean:address,field:'state')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="zipcode">Zipcode:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:address,field:'zipcode','errors')}">
                                    <input type="text" id="zipcode" name="zipcode" value="${fieldValue(bean:address,field:'zipcode')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="individual">Individual:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:address,field:'individual','errors')}">
                                    <g:select optionKey="id" from="${Individual.list()}" name="individual.id" value="${address?.individual?.id}" ></g:select>
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
