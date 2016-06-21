<%@ Page Title="" Language="C#" MasterPageFile="~/Inventory.Master" AutoEventWireup="true" CodeBehind="IngresoElementos.aspx.cs" Inherits="WebAppInventario.IngresoElementos" %>
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
                            <asp:TextBox ID="TxtId" runat="server" Text="Identificacion de Control" CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="form-group">
                            <label>Número Placa</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtPlaca" runat="server" Text="N. Placa" CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="form-group">
                            <label>Número Serial</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtSerial" runat="server" Text="N.Serial" CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="form-group">
                            <label>Marca</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtMarca" runat="server" Text="Marca" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Categoria</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-control"></asp:DropDownList>

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
                            <asp:TextBox ID="TxtModelo" runat="server" Text="Modelo" CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="form-group">
                            <label>Fecha Ingreso</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtFecha" runat="server" Text="Fecha" CssClass="form-control"></asp:TextBox>
                                             </div>
                    <div class="form-group">
                            <label>Nombre Elemento</label>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="TxtNombre" runat="server" Text="Nombre" CssClass="form-control"></asp:TextBox>
                        </div>
                    <div class="form-group">
                            <label>Estado</label>
                        </div>
                        <div class="form-group">
                            <asp:DropDownList ID="ddlEstado" runat="server" CssClass="form-control"></asp:DropDownList>
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
                            <asp:Button ID="BtnGuardar" runat="server" Text="GUARDAR" Width="200px" CssClass="btn btn-primary" />
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
