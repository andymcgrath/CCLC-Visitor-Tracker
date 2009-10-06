

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Telephone List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Telephone</g:link></span>
        </div>
        <div class="body">
            <h1>Telephone List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="type" title="Type" />
                        
                   	        <g:sortableColumn property="telephoneNumber" title="Telephone Number" />
                        
                   	        <th>Individual</th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${telephoneList}" status="i" var="telephone">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${telephone.id}">${fieldValue(bean:telephone, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:telephone, field:'type')}</td>
                        
                            <td>${fieldValue(bean:telephone, field:'telephoneNumber')}</td>
                        
                            <td>${fieldValue(bean:telephone, field:'individual')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Telephone.count()}" />
            </div>
        </div>
    </body>
</html>
