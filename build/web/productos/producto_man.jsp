<%-- 
    Document   : producto_man
    Created on : 19/06/2019, 08:40:52 AM
    Author     : Software Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="common.ConectarDB" %>
<% 
ConectarDB cnn=new ConectarDB();
cnn.conectar();
String opt=request.getParameter("opt");

if(opt.equals("Registrar")){
    String prod=request.getParameter("producto");
    String pre=request.getParameter("precio");
    String can=request.getParameter("cantidad");
    String tot=request.getParameter("total");
    
    String sql="INSERT INTO productos(nombre,preciou,cantidad,total) "
            + "VALUES('"+prod+"','"+pre+"','"+can+"','"+tot+"')";
    //out.println(sql);
    if(cnn.ejecutarActualizacion(sql)){
        out.println("Producto registrado<br>");
    }else{
        out.println("Error al procesar datos");
    }
}

if(opt.equals("delete")){
    String id=request.getParameter("id");
           
    String sql="DELETE FROM productos WHERE id="+id;
    cnn.ejecutarActualizacion(sql);
    out.println("Producto Eliminado<br>");
}

%>

<a href="producto_list.jsp">Listar Productos</a>