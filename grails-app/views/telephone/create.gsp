

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Telephone</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Telephone List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Telephone</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${telephone}">
            <div class="errors">
                <g:renderErrors bean="${telephone}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type">Type:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:telephone,field:'type','errors')}">
                                    <g:select id="type" name="type" from="${telephone.constraints.type.inList}" value="${telephone.type}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="telephoneNumber">Telephone Number:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:telephone,field:'telephoneNumber','errors')}">
                                    <input type="text" id="telephoneNumber" name="telephoneNumber" value="${fieldValue(bean:telephone,field:'telephoneNumber')}"/>
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
                    <span class="button"><input class="save" type="submit" value="Create" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
