

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="layout" content="main" />
        <title>Address List</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir:'')}">Home</a></span>
            <span class="menuButton"><g:link class="create" action="create">New Address</g:link></span>
        </div>
        <div class="body">
            <h1>Address List</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	        <g:sortableColumn property="id" title="Id" />
                        
                   	        <g:sortableColumn property="type" title="Type" />
                        
                   	        <g:sortableColumn property="addressLine1" title="Address Line1" />
                        
                   	        <g:sortableColumn property="addressLine2" title="Address Line2" />
                        
                   	        <g:sortableColumn property="city" title="City" />
                        
                   	        <g:sortableColumn property="state" title="State" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${addressList}" status="i" var="address">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${address.id}">${fieldValue(bean:address, field:'id')}</g:link></td>
                        
                            <td>${fieldValue(bean:address, field:'type')}</td>
                        
                            <td>${fieldValue(bean:address, field:'addressLine1')}</td>
                        
                            <td>${fieldValue(bean:address, field:'addressLine2')}</td>
                        
                            <td>${fieldValue(bean:address, field:'city')}</td>
                        
                            <td>${fieldValue(bean:address, field:'state')}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${Address.count()}" />
            </div>
        </div>
    </body>
</html>
