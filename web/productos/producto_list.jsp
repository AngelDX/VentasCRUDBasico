<%-- 
    Document   : producto_list
    Created on : 19/06/2019, 08:39:27 AM
    Author     : Software Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="common.ConectarDB" %>
<% 
 ConectarDB cnn=new ConectarDB();
 String sql="SELECT * FROM productos";
 cnn.conectar();
 ResultSet rs=cnn.ejecutarConsulta(sql);
 %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista Productos</h1>
        <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col">Producto</th>
                <th scope="col">Precio U.</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Total</th>
                <th scope="col">Acciones</th>
              </tr>
            </thead>
            <tbody>
              <% while(rs.next()){%> 
              <tr class="table-active">
                <th scope="row"><%=rs.getString("id")%></th>
                <td><%=rs.getString("nombre")%></td>
                <td><%=rs.getString("preciou")%></td>
                <td><%=rs.getString("cantidad")%></td>
                <td><%=rs.getString("total")%></td>
                <td><a href="producto_man.jsp?opt=delete&id=<%=rs.getString("id")%>">X</a></td>
              </tr>
              <% }%>
            </tbody>
          </table> 
          <a href="producto_add.jsp">Agregar Productos</a>
    </body>
</html>
