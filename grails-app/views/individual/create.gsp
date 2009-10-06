

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Create Individual</title>         
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="list" action="list">Individual List</g:link></span>
        </div>
        <div class="body">
            <h1>Create Individual</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${individual}">
            <div class="errors">
                <g:renderErrors bean="${individual}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="firstName">First Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:individual,field:'firstName','errors')}">
                                    <input type="text" id="firstName" name="firstName" value="${fieldValue(bean:individual,field:'firstName')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lastName">Last Name:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:individual,field:'lastName','errors')}">
                                    <input type="text" id="lastName" name="lastName" value="${fieldValue(bean:individual,field:'lastName')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="discoverySource">Discovery Source:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:individual,field:'discoverySource','errors')}">
                                    <input type="text" id="discoverySource" name="discoverySource" value="${fieldValue(bean:individual,field:'discoverySource')}"/>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="notes">Notes:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:individual,field:'notes','errors')}">
                                    <textarea rows="5" cols="40" name="notes">${fieldValue(bean:individual, field:'notes')}</textarea>
                                </td>
                            </tr> 
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="membership">Membership:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean:individual,field:'membership','errors')}">
                                    <g:checkBox name="membership" value="${individual?.membership}" ></g:checkBox>
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
