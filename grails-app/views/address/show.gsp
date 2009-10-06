

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Address</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><g:link class="list" controller="individual" action="list">Individual List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create" >New Address</g:link></span>
        </div>
        <div class="body">
            <h1>Show Address</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Individual:</td>

                            <td valign="top" class="value"><g:link controller="individual" action="show" id="${address?.individual?.id}">${address?.individual?.encodeAsHTML()}</g:link></td>

                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Type:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:address, field:'type')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Address Line1:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:address, field:'addressLine1')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Address Line2:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:address, field:'addressLine2')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">City:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:address, field:'city')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">State:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:address, field:'state')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Zipcode:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:address, field:'zipcode')}</td>
                            
                        </tr>
                    

                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${address?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
