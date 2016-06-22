<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ingreso.aspx.cs" Inherits="WebAppInventario.Ingreso" %>

<!DOCTYPE html>

<html class="bg-black" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Acceso al sistema Inventario</title>
    <link href="css/AdminLTE.css" rel="stylesheet" type="text/css"/>
</head>
<body class="bg-black">
    <div class ="form-box" id="login-box">
        <div class="header">Ingreso Inventario </div>
        <form id="form1" runat="server">
          <div class="body bg-gray ">
              <div class="form-group">
                   <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Ingrese Usuario"></asp:TextBox>
              </div>
              <div class ="form-group">
                   <asp:TextBox ID="txtContraseña" runat="server" CssClass="form-control" placeholder="Contraseña"></asp:TextBox>
              </div>
          </div>
          <div class="footer">
              <asp:Button ID="btnIngreso" CssClass="btn bg-olive btn-block" runat="server" Text="Iniciar Sesión" OnClick="btnIngreso_Click" />
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebFormsIdentityConnectionString %>" SelectCommand="ValidarUsuario" SelectCommandType="StoredProcedure">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="txtUsuario" Name="usuario" PropertyName="Text" Type="String" />
                      <asp:ControlParameter ControlID="txtContraseña" Name="Contraseña" PropertyName="Text" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
          </div>
      </div>  
    <p>
            <asp:Label ID="error" runat="server"></asp:Label>
        </p>
   </form>
      </div>
</body>
</html>
