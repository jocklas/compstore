<%-- 
    Document   : show
    Created on : 2013-maj-15, 09:23:32
    Author     : Joakim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>NoBloat computer store</h1>
        <jsp:useBean id="computerList" type="beans.ComputerListBean" scope="application">
            Error, the bean should have been created in the servlet!
        </jsp:useBean>
        
        <p>Welcome to the NoBloat computer store!<br> The one and only place for reasonable computer purchases.</p>
        
        <table>
            <tr>
                <th>Namn</th>
                <th>Beskrivning</th>
                <th>Pris</th>
            </tr>
            <jsp:getProperty name="computerList" property="xml"/>
        </table>
        
        <br>  
        
        <a href="shop">checkout</a>
        <a href="shop?action=login">login</a>
    </body>
</html>
