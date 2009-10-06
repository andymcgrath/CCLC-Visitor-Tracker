

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Visit List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Visit</g:link></span>
        </div>
        <div class="body">
            <h1>Visit List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="visitationDate" title="Visitation Date" />
                        
                   	        <g:sortableColumn property="service" title="Service" />
                        
                   	        <g:sortableColumn property="crossbeam" title="Crossbeam" />
                        
                   	        <g:sortableColumn property="cookies" title="Cookies" />
                        
                   	        <g:sortableColumn property="letter" title="Letter" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${visitList}" status="i" var="visit">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${visit.id}">${fieldValue(bean:visit, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:visit, field:'visitationDate')}</td>
                        
                            <td>${fieldValue(bean:visit, field:'service')}</td>
                        
                            <td>${fieldValue(bean:visit, field:'crossbeam')}</td>
                        
                            <td>${fieldValue(bean:visit, field:'cookies')}</td>
                        
                            <td>${fieldValue(bean:visit, field:'letter')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Visit.count()}" />
            </div>
        </div>
    </body>
</html>
