<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="GenerarFactura_Especifico.aspx.cs" Inherits="Uricao.Presentacion.PaginasWeb.PPresupuestoFacturas.GenerarFactura_Especifico" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <table align = "center">
            <tr>
                <td> 
                    <!--  en esta columna estara unta tabla el cual se van a poner el label que dira seleccionar tratamiento
                    un dropdownlist donde estara los tratamiento que el podra a agregar al datagrid que se encontrara en la columna 
                    de la derecha de la tabla mas general, y un boton que sirvira que el usuario una vez ya seleccionado en el 
                    dropdownlist le de a este boton y aparezca ese tratamiento de una en el datagrid-->

                    <table>
                        <tr>
                            <td>
                                <asp:Label class = "label.inline" id = "aLSeleccionar" runat = "server" Text = "Seleccione el Tratamiento a Agregar : ">
                                </asp:Label>
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:DropDownList ID = "aDTratamient" runat = "server" Width = "120px">
                                    <asp:ListItem>
                                    </asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:Button Width = "120px" class = "button" id = "aBAgregar_Tratamiento" runat = "server" Text = "Agregar">
                                </asp:Button>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align = "center">
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
                </td>
                
            </tr>
                <table align = "right">
                    <tr>
                        <td>
                            <asp:Label class = "label.inline" id = "aLTotal" runat = "server" Text = "Total">
                            </asp:Label>
                        </td>
                        <td>
                        </td>
                        <td>
                            <asp:TextBox ID = "aTTotal" runat = "server">
                            </asp:TextBox>
                        </td>
                    </tr>
                </table>
            </tr>
                
                          
        </table>
    </div>
    
</asp:Content>
