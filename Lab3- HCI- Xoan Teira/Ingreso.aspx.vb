Imports System.Data.SqlClient
Public Class Ingreso
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If SesionIniciada = False Then
            Response.Redirect("Login.aspx")
        End If

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim control As Integer
        Dim consulta As String
        Dim con As New SqlConnection("Data Source=LAPTOP-JTB4JJF4;Initial Catalog=Ingreso-Lab3-HCI;Integrated Security=True")
        con.Open()
        If TextBox1.Text = "" Or DropDownList1.SelectedIndex = 0 Or TextBox2.Text = "" Or
            TextBox3.Text = "" Or TextBox5.Text = "" Or TextBox4.Text = "" Or
            TextBox5.Text = "" Or TextBox6.Text = "" Or TextBox7.Text = "" Then
            Label9.Text = "Por favor ingrese datos validos en los campos"
        Else
            consulta = "Insert into Ingreso(datIngre ,recibe ,cliente ,direccion , telefono ,correo ,tipoServicio ,costo ,cantidad ,observacion) Values('" & TextBox1.Text & "', '" & TextBox2.Text & "', '" & TextBox3.Text & "', '" & TextBox4.Text & "', '" & TextBox5.Text & "', '" & TextBox9.Text & "', '" & DropDownList1.Text & "','" & TextBox6.Text & "', '" & TextBox7.Text & "', '" & TextBox8.Text & "')"
            Dim comando As New SqlCommand(consulta, con)
            control = comando.ExecuteNonQuery()
            If control > 0 Then
                Label9.Text = "Insercion de datos exitosa"
                con.Close()
            Else
                Label9.Text = "error"
            End If

        End If
    End Sub
End Class