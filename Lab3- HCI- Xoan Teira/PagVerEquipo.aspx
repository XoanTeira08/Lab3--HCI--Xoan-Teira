<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PagVerEquipo.aspx.vb" Inherits="Lab3__HCI__Xoan_Teira.PagVerEquipo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ver Equipo</title>
    <link rel="icon" href="Imagenes/Nibarra.png" />
    <link href="Estilo/EstiloVerEquipo.css" rel="stylesheet" />
</head>
<body oncontextmenu="return false">
    <form id="form1" runat="server">
        <div class="encabezado">
        <a class="contacto" href="PagPrincipal.aspx"><img class="logo" src="Imagenes/nibarra.png"/></a>
        <h1 class="titulo">Nibarra</h1>
           <h1 class="titulo2">Tecnología y Servicios</h1>
          </div>
        <h1 class="titulo3">Ver Equipos Ingresados </h1>
        <div class="tabla">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cod" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Cod" HeaderText="Cod" InsertVisible="False" ReadOnly="True" SortExpression="Cod" />
                    <asp:BoundField DataField="datIngre" HeaderText="datIngre" SortExpression="datIngre" />
                    <asp:BoundField DataField="recibe" HeaderText="recibe" SortExpression="recibe" />
                    <asp:BoundField DataField="cliente" HeaderText="cliente" SortExpression="cliente" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" SortExpression="direccion" />
                    <asp:BoundField DataField="telefono" HeaderText="telefono" SortExpression="telefono" />
                    <asp:BoundField DataField="correo" HeaderText="correo" SortExpression="correo" />
                    <asp:BoundField DataField="tipoServicio" HeaderText="tipoServicio" SortExpression="tipoServicio" />
                    <asp:BoundField DataField="costo" HeaderText="costo" SortExpression="costo" />
                    <asp:BoundField DataField="cantidad" HeaderText="cantidad" SortExpression="cantidad" />
                    <asp:BoundField DataField="observacion" HeaderText="observacion" SortExpression="observacion" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Ingreso-Lab3-HCIConnectionString %>" DeleteCommand="DELETE FROM [Ingreso] WHERE [Cod] = @Cod" InsertCommand="INSERT INTO [Ingreso] ([datIngre], [recibe], [cliente], [direccion], [telefono], [correo], [tipoServicio], [costo], [cantidad], [observacion]) VALUES (@datIngre, @recibe, @cliente, @direccion, @telefono, @correo, @tipoServicio, @costo, @cantidad, @observacion)" SelectCommand="SELECT * FROM [Ingreso]" UpdateCommand="UPDATE [Ingreso] SET [datIngre] = @datIngre, [recibe] = @recibe, [cliente] = @cliente, [direccion] = @direccion, [telefono] = @telefono, [correo] = @correo, [tipoServicio] = @tipoServicio, [costo] = @costo, [cantidad] = @cantidad, [observacion] = @observacion WHERE [Cod] = @Cod">
                <DeleteParameters>
                    <asp:Parameter Name="Cod" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter DbType="Date" Name="datIngre" />
                    <asp:Parameter Name="recibe" Type="String" />
                    <asp:Parameter Name="cliente" Type="String" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="correo" Type="String" />
                    <asp:Parameter Name="tipoServicio" Type="String" />
                    <asp:Parameter Name="costo" Type="Decimal" />
                    <asp:Parameter Name="cantidad" Type="Int32" />
                    <asp:Parameter Name="observacion" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="datIngre" />
                    <asp:Parameter Name="recibe" Type="String" />
                    <asp:Parameter Name="cliente" Type="String" />
                    <asp:Parameter Name="direccion" Type="String" />
                    <asp:Parameter Name="telefono" Type="String" />
                    <asp:Parameter Name="correo" Type="String" />
                    <asp:Parameter Name="tipoServicio" Type="String" />
                    <asp:Parameter Name="costo" Type="Decimal" />
                    <asp:Parameter Name="cantidad" Type="Int32" />
                    <asp:Parameter Name="observacion" Type="String" />
                    <asp:Parameter Name="Cod" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
