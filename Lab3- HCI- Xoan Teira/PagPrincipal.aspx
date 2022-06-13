<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PagPrincipal.aspx.vb" Inherits="Lab3__HCI__Xoan_Teira.PagPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Nibarra: Sistema de ingreso</title>
    <link rel="icon" href="Imagenes/Nibarra.png" />
    <link href="Estilo/EstiloPrincipal.css" rel="stylesheet" />
</head>
<body oncontextmenu="return false">
    <form id="form1" runat="server">
       <div class="encabezado">
        <a class="contacto" href="PagPrincipal.aspx"><img class="logo" src="Imagenes/nibarra.png"/></a>
        <h1 class="titulo">Nibarra</h1>
           <h1 class="titulo2">Tecnología y Servicios</h1>
          </div>
        <h1 class="titulo3">Escoga una opcion: </h1>
            <div class="enlaces">
                <div class="agregar">
                     <h2 class="subtitulo"> Agregar un equipo</h2>
                <a href="Ingreso.aspx"><img class="icono" src="Imagenes/Agregar%20Inventario%20rojo.png" />
                   
                    </a>
                </div>
                <div class="ver">
                     <h2 class="subtitulo"> Ver equipos ingresados</h2>
                <a href="PagVerEquipo.aspx"><img class="icono2" src="Imagenes/Buscar%20rojo.png"/>
                    
                </a>
                </div>
            </div>
    </form>
</body>
</html>
