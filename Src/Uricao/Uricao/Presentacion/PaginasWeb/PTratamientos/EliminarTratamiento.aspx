<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="EliminarTratamiento.aspx.cs" Inherits="Uricao.Presentacion.PaginasWeb.PTratamientos.EliminarTratamiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection="Horizontal" CellPadding="5" CellSpacing="5" Width="716px">
            <asp:ListItem>Id</asp:ListItem>
            <asp:ListItem>Estado</asp:ListItem>
            <asp:ListItem>Nombre</asp:ListItem>
        </asp:RadioButtonList>


    <br />

    <asp:TextBox ID="Busqueda" runat="server" Width="395px" Height="21px" 
        style="text-align: center"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Buscar" />
    <br />
    <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Style="text-align: center" CellPadding="4"  GridLines="None" Width="600px" HorizontalAlign="Center"
                        AllowPaging="True" PageSize="8"  >
            <HeaderStyle BackColor="#1d60ff"  ForeColor="White" />
            <FooterStyle BackColor="#1d60ff"  ForeColor="White" />
            <PagerStyle BackColor="#1d60ff" ForeColor="White" HorizontalAlign="Center" />

            <Columns>
                <asp:ButtonField ButtonType="Image" HeaderText="Buscar" 
                    ImageUrl="~/Presentacion/Imagenes/Buscar.png" Text="Botón" />
                <asp:BoundField DataField="Id" HeaderText="Codigo" />
                <asp:BoundField DataField="Nombre_Tratamiento" HeaderText="Nombre" />
                <asp:CheckBoxField DataField="Activo" HeaderText="Activo" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <asp:Button ID="Guardar" runat="server" Text="Guardar" />
</asp:Content>
