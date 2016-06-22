<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="IngresoElemento.aspx.cs" Inherits="WebAppInventario.IngresoElemento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <section class="content-header">
        <h1 style="text-align:center">REGISTRO ELEMENTO</h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="box box-tools">
                    <div class="box-body">
                        <div class="form-group">
                            <label>Id de Control</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtId" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="form-group">
                            <label>Número Placa</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtPlaca" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="form-group">
                            <label>Número Serial</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtSerial" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="form-group">
                            <label>Marca</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtMarca" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Categoria</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-control" OnSelectedIndexChanged="ddlCategoria_SelectedIndexChanged">
                                <asp:ListItem>Multimedia</asp:ListItem>
                                <asp:ListItem>Computo</asp:ListItem>
                                <asp:ListItem>Redes</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                </div>
            </div>
        </div>
            <div class="col-md-6">
                <div class="box box-tools">
                    <div class="box-body">
                        <div class="form-group">
                            <label>Modelo</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtModelo" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="form-group">
                            <label>Fecha Ingreso</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtFecha" runat="server" CssClass="form-control"></asp:TextBox>
                                             </div>
                    <div class="form-group">
                            <label>Nombre Elemento</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="form-group">
                            <label>Estado</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-control">
                                <asp:ListItem>Ingresado</asp:ListItem>
                                <asp:ListItem>Reservado</asp:ListItem>
                                <asp:ListItem>Prestado</asp:ListItem>
                                <asp:ListItem>Disponible</asp:ListItem>
                                <asp:ListItem>Entregado</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                </div>
            </div>
        </div>
        </div>
        <div class="row">
            <div style="align-content:center">
                <table>
                    <tr>
                        <td>
                            <asp:Button ID="BtnGuardar" runat="server" Text="GUARDAR" Width="200px" CssClass="btn btn-primary" OnClick="BtnGuardar_Click" />
                        </td>
                        <td>
                            &nbsp; &nbsp;&nbsp; &nbsp;
                        </td>
                         <td>
                            <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" Width="200px" CssClass="btn btn-danger" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </section>
</asp:Content>
