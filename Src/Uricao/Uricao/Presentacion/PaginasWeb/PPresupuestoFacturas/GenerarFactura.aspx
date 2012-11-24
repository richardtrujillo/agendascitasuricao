<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="HomePresupuesto.aspx.cs" Inherits="Uricao.Presentacion.PaginasWeb.PPresupuestoFacturas.HomePresupuesto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div >
        <table align ="center">
            <tr>
                <td>
                    <asp:Label class = "label.inline" id = "Label1" runat = "server" Text = "Informacion Importante para la factura">
                    </asp:Label>
                </td>
            </tr>

        
        </table>
        &nbsp;
        &nbsp;
    </div>
    <div>
        <table align= "center">
            <tr>
                <td> 
                    <asp:Label class = "label.inline" id = "aLNombre_Persona" runat = "server" Text = "Nombre del Responsable">
                    </asp:Label>
                </td>
                <td>
                </td>
                <td>
                    <asp:TextBox id = "aTNombre_Persona" runat = "server" Text ="">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td> 
                    <asp:Label class = "label.inline" id = "aLIdentificion" runat = "server" Text = "RIF/CI">
                    </asp:Label>
                </td>
                <td>
                </td>
                <td>
                    <asp:TextBox id = "aTIdentificacion" runat = "server" Text ="">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label class = "label.inline" id ="aLDireccion" runat ="server" Text = "Direccion">
                    </asp:Label>
                </td>
                <td>          
                </td>
                <td>
                    

                    <table>
                        <tr>
                            <td> 
                                <asp:Label class = "label.inline" id = "aLEstado" runat = "server" Text = "Estado">
                                </asp:Label>
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:DropDownList id = "aDEstado" runat = "server" Width = "120px">
                                    <asp:ListItem>hola</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td> 
                                <asp:Label class = "label.inline" id = "aLCiudad" runat = "server" Text = "Ciudad">
                                </asp:Label>
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:DropDownList id = "aDCiudad" runat = "server" Width = "120px">
                                    <asp:ListItem> hola </asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label class = "label.inline" ID = "aLMunicipio" runat = "server" Text = "Municipio">
                                </asp:Label>
                            </td>
                            <td> 
                            </td>
                            <td>
                                <asp:DropDownList ID = "aDMunicipio" runat = "server" Width = "120px">
                                    <asp:ListItem>hola</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label class = "label.inline" ID = "aLEdificio" runat = "server" Text = "Edificio">
                                </asp:Label>
                            </td>
                            <td>
                            </td>
                            <td>
                                <asp:TextBox ID = "aTEdificion" runat = "server" >
                                </asp:TextBox>
                            </td>
                        </tr>
                        
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label class = "label.inline" ID = "aLPaciente" runat = "server" Text = "Nombre del Paciente">
                    </asp:Label>
                </td>
                <td>
                </td>
                <td>
                    <asp:TextBox ID = "aTPaciente" runat = "server" >
                    </asp:TextBox>
                </td>
            </tr>
                
        </table>
            
        &nbsp;
        &nbsp;

    </div>
    <div>
        <table align = "center">
            <tr>
                <td>
                    <asp:Button class = "button" ID = "aBBotonContinuar" runat = "server" Text = "Continuar">
                    </asp:Button>
                </td>
            </tr>
        <table>
        


    </div>   
</asp:Content>
