<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="Lab3__HCI__Xoan_Teira.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio de Sesion</title>
       <link rel="icon" href="Imagenes/Nibarra.png" />
    <link href="Estilo/EstiloLogin.css" rel="stylesheet" />
</head>
<body oncontextmenu="return false">
    <form id="form1" runat="server">
         <div class="login">
		<div class="login-screen">
			<div class="app-title">
				<h1>Login</h1>
                <img class="usuario-icono"src="Imagenes/usuario%20rojo.png" />
			</div>
			<!--Usuario-->
			<div class="login-form">
				<div class="control-group">
				    <asp:TextBox ID="txtUsuario" placeholder="Usuario" runat="server"></asp:TextBox>
&nbsp;<label class="login-field-icon fui-user" for="login-name"></label></div>
				<!--Contraseña-->
				<div class="control-group">
				    <asp:TextBox ID="txtContra" type="password" placeholder="Contraseña" runat="server"></asp:TextBox>
&nbsp;<label class="login-field-icon fui-lock" for="login-pass"></label></div>
					<!--Boton de ingresar-->
				<asp:Button ID="btnIngresar" class="btn btn-primary btn-large btn-block" runat="server" Text="Iniciar Sesion" />
				<!--Label con el mensaje-->
				<asp:Label ID="lblMensaje" runat="server" ForeColor="Red"></asp:Label>
			</div>
		</div>
	</div>
    </form>
</body>
</html>
