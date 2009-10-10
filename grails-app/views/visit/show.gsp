

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Show Visit</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Visit List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Visit</g:link></span>
        </div>
        <div class="body">
            <h1>Show Visit</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>

                    
                        <tr class="prop">
                            <td valign="top" class="name">Id:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:visit, field:'id')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Visitation Date:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:visit, field:'visitationDate')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Service:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:visit, field:'service')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Crossbeam:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:visit, field:'crossbeam')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Cookies:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:visit, field:'cookies')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Letter:</td>
                            
                            <td valign="top" class="value">${fieldValue(bean:visit, field:'letter')}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name">Individual:</td>
                            
                            <td valign="top" class="value"><g:link controller="individual" action="show" id="${visit?.individual?.id}">${visit?.individual?.encodeAsHTML()}</g:link></td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <input type="hidden" name="id" value="${visit?.id}" />
                    <span class="button"><g:actionSubmit class="edit" value="Edit" /></span>
                    <span class="button"><g:actionSubmit class="delete" onclick="return confirm('Are you sure?');" value="Delete" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
