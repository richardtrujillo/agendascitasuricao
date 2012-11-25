<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="AgregarCita.aspx.cs" Inherits="Uricao.Presentacion.PaginasWeb.PAgendaCitas.AgregarCita" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    $(function () {
        $("#datepicker").datepicker();

    });
    </script>

    <script type="text/javascript">
        $(function () {
            $("#datepicker2").datepicker();

        });
    </script>
     <script type="text/javascript">
         $(function () {
             $("#datepicker3").datepicker();

         });
    </script>

    <style type="text/css">
        .style1
        {
            width: 168px;
        }
        .style2
        {
            width: 103px;
        }
        .style3
        {
            width: 141px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

 
        <fieldset style="width:700px; height:450px; margin-left:4%;">
        <legend>Consultar Cita</legend>        
            <table style="margin:5% auto auto 26%;" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Label">Nombre medico:</asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="130px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Label">Apellido medico:</asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="130px"></asp:TextBox>
                </td>
            </tr>

             <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Label">Tratamiento:</asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="130px">
                        <asp:ListItem Value="0">Primera cita</asp:ListItem>
                        <asp:ListItem Value="1">Tratamiento de conducto</asp:ListItem>
                        <asp:ListItem Value="3">Limpieza bucal</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>

            <tr>
                 <td class="style3">
                     <asp:RadioButton ID="RadioButton1" runat="server" Text=" Por dia:" />
                </td>
               
                <td class="style2">
                    
                    <input type="text" id="datepicker" size="17px" />
                </td>
            </tr>

            <tr>
                 <td class="style3">
                     <asp:RadioButton ID="RadioButton2" runat="server" Text=" Por rango:" />
                </td>
               
                
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Desde: "></asp:Label><input type="text" id="datepicker2" size="17px"  />
                </td>
               
                 <td>
                    <asp:Label ID="Label4" runat="server" Text="Hasta: "></asp:Label><input type="text" id="datepicker3" size="17px"  />
                </td>
            </tr> 
             
            <tr >
                <td colspan="2"  style="text-align:center">
                <asp:Button ID="defaultButton" runat="server" Text="Aceptar" CssClass="button" />
                </td>
            </tr>
            </table>          
        </fieldset>
  
        <table style="width: 100%; margin-left:50px;">
            
           
            <tr>
                <td>
                </td>
                <td class="style1" align="center" style="width: 591px">
                </td>
                <td style="width: 215px">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style19" align="center">
                    &nbsp;
                </td>
                <td class="style1" align="center" style="width: 591px">
                    <br />
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" AutoGenerateColumns="False" GridLines="None" Width="600px" HorizontalAlign="Center" Style="text-align: center"
                        AllowPaging="True" PageSize="8"  
                        OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                        OnRowCommand="GridView1_RowCommand">

                        <HeaderStyle CssClass="accordionHeader"  ForeColor="White" />
                        <FooterStyle BackColor="#00008B"  ForeColor="White" />
                        <PagerStyle BackColor="#00008B" ForeColor="White" HorizontalAlign="Center" />
                        
                        <Columns>
                         <asp:ButtonField HeaderText ="Ver Detalle" ButtonType="image" ImageUrl="~/Presentacion/Imagenes/Buscar.png"  />
                            <asp:BoundField DataField="numeroGridView" HeaderText="Fecha"/> 
                            <asp:BoundField DataField="mensaje" HeaderText="Hora"/> 
                            <asp:BoundField DataField="mensaje" HeaderText="Medico"/>
                            <asp:BoundField DataField="mensaje" HeaderText="Tratamiento"/>  

                           
                           
                        </Columns>
                        <EditRowStyle HorizontalAlign="Center" 
                VerticalAlign="Middle" BackColor="#2461BF" />
            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"/>
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerSettings PageButtonCount="4" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" 
                BackColor="#4870BE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
</asp:Content>
