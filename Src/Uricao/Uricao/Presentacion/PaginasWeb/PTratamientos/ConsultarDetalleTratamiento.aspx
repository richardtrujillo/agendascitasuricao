<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ConsultarDetalleTratamiento.aspx.cs" Inherits="Uricao.Presentacion.PaginasWeb.PTratamientos.ConsultarDetalleTratamiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
  

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    Detalle de tratamiento<br />
    <br />
    Nombre:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" 
        runat="server" Width="408px"></asp:TextBox>
    <br />
    <br />
    Duración:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" Width="102px"></asp:TextBox>
    &nbsp;&nbsp; &nbsp;&nbsp; Costo:&nbsp;
    <asp:TextBox ID="TextBox3" runat="server" Width="61px"></asp:TextBox>
    <br />
    <br />
    Descripción:&nbsp;&nbsp;&nbsp;&nbsp;<br />
    <asp:TextBox ID="TextBox4" runat="server" Height="90px" Width="500px"></asp:TextBox>
    <br />
<br />
    Explicación de como es realizado:<br />
    <asp:TextBox ID="TextBox5" runat="server" Height="90px" Width="500px"></asp:TextBox>
    <br />
    <br />
<br />
<br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input id="Button1" type="button" value="Atras" />&nbsp;
    <input id="Button2" type="button" value="Siguiente" 
        onclick="return Button2_onclick()" /><br />
<br />
<br />
</asp:Content>
