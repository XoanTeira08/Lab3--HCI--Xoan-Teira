Imports System.Data.SqlClient
Public Class Login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnIngresar_Click(sender As Object, e As EventArgs) Handles btnIngresar.Click
        Dim dataR As SqlDataReader
        Dim consulta As String
        Dim con As New SqlConnection("Data Source=LAPTOP-JTB4JJF4;Initial Catalog=Login-Lab3-HCI;Integrated Security=True")
        con.Open()
        If txtUsuario.Text = "" Or txtContra.Text = "" Then
            lblMensaje.Text = "Por favor ingrese datos validos en los espacios correspondietes"
        Else
            consulta = "SELECT * FROM Login where Usuario='" & txtUsuario.Text & "' AND Pass='" & txtContra.Text & "'"
            Dim comando As New SqlCommand(consulta, con)
            dataR = comando.ExecuteReader
            If dataR.Read() Then
                SesionIniciada = True
                Response.Redirect("PagPrincipal.aspx")

            Else
                lblMensaje.Text = "Usuario o contraseña no validos"
            End If

        End If
    End Sub
End Class