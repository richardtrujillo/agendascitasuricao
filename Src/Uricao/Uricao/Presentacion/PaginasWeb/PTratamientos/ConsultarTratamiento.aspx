<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="ConsultarTratamiento.aspx.cs" Inherits="Uricao.Presentacion.PaginasWeb.PTratamientos.ConsultarTratamiento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center class="style1">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            RepeatDirection="Horizontal" CellPadding="5" CellSpacing="5" Width="480px">
            <asp:ListItem>Id</asp:ListItem>
            <asp:ListItem>Estado</asp:ListItem>
            <asp:ListItem>Nombre</asp:ListItem>
        </asp:RadioButtonList>


        <div class="style1">


    <br />

    <asp:TextBox ID="Busqueda" runat="server" Width="395px" Height="21px" 
        style="text-align: center"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="Buscar" />
    <br />
    <br />
        </div>
    </center>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Style="text-align: center" CellPadding="4"  GridLines="None" Width="600px" HorizontalAlign="Center"
                        AllowPaging="True" PageSize="8" OnSelectedIndexChanged="gridView1_SelectedIndexChanged" >
            <HeaderStyle BackColor="#1d60ff"  ForeColor="White" />
            <FooterStyle BackColor="#1d60ff"  ForeColor="White" />
            <PagerStyle BackColor="#1d60ff" ForeColor="White" HorizontalAlign="Center" />

            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Codigo" />
                <asp:BoundField DataField="Nombre_Tratamiento" HeaderText="Nombre" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" />
                <asp:ButtonField ButtonType="Image" HeaderText="Buscar" 
                    ImageUrl="~/Presentacion/Imagenes/Buscar.png" Text="Botón" />
            </Columns>
        </asp:GridView>
</asp:Content>
