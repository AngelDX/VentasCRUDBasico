<%-- 
    Document   : producto_add
    Created on : 19/06/2019, 08:40:37 AM
    Author     : Software Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String opt="Registrar";
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="navbar navbar-fixed-center">
            <div class="navbar-inner">
               <form method="POST" action="producto_man.jsp" id="formulario"> 
                <input type="hidden" name="opt" value="<%=opt%>"/>
                <div class="control-group">
                    <label class="control-label" for="">Producto* :</label>
                    <div class="controls">
                        <input type="text" name="producto" placeholder="Descripcion producto"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Precio* : </label>
                    <div class="controls">
                        <input type="text" name="precio"  placeholder="Precio producto"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Cantidad* : </label>
                    <div class="controls">
                        <input type="text" name="cantidad"  placeholder="cantidad"/>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label">Total* : </label>
                    <div class="controls">
                        <input type="text" name="total"  placeholder="total"/>
                    </div>
                </div>
              <div class="control-group">
                <div class="controls">
                  <button type="submit" class="btn btn-primary">AGREGAR</button>
                </div>
              </div>
             </form>            
        </div>
             <div id="msg"></div>
        </div>
    </body>
</html>
