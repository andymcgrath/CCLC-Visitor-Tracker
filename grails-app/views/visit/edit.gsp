

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Edit Visit</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Visit List</g:link></span>
            <span class="menuButton"><g:link class="create" action="create">New Visit</g:link></span>
        </div>
        <div class="body">
            <h1>Edit Visit</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${visit}">
            <div class="errors">
                <g:renderErrors bean="${visit}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <input type="hidden" name="id" value="${visit?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="visitationDate">Visitation Date:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:visit,field:'visitationDate','errors')}">
                                    <g:datePicker name="visitationDate" value="${visit?.visitationDate}" ></g:datePicker>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="service">Service:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:visit,field:'service','errors')}">
                                    <g:select id="service" name="service" from="${visit.constraints.service.inList}" value="${visit.service}" ></g:select>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="crossbeam">Crossbeam:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:visit,field:'crossbeam','errors')}">
                                    <g:checkBox name="crossbeam" value="${visit?.crossbeam}" ></g:checkBox>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="cookies">Cookies:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:visit,field:'cookies','errors')}">
                                    <g:checkBox name="cookies" value="${visit?.cookies}" ></g:checkBox>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="letter">Letter:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:visit,field:'letter','errors')}">
                                    <g:checkBox name="letter" value="${visit?.letter}" ></g:checkBox>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="individual">Individual:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:visit,field:'individual','errors')}">
                                    <g:select optionKey="id" from="${Individual.list()}" name="individual.id" value="${visit?.individual?.id}" ></g:select>
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
