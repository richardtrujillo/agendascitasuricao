<%@ Page Title="" Language="C#" MasterPageFile="~/Presentacion/MasterPage/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="DetalleCita.aspx.cs" Inherits="Uricao.Presentacion.PaginasWeb.PAgendaCitas.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
<script type="text/javascript">
    $(function () {
        $("#datepicker").datepicker();
    });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="superior">
    <h2>
       Detalle de su cita
    </h2>
    </div>
    <div style="height:30px; text-align:center; font-family:Verdana;font-size: 1.5em;">
    </div>
    <div  style="float:left;">
        <fieldset style="width:700px; height:380px; margin-left:4%;">
        <legend>Agregar Cita</legend>        
            <table style="margin:5% auto auto 26%;" border="0" cellspacing="0" cellpadding="0" align="center">
            <tr>
                <td>
                    <asp:Label ID="LabelMedico" runat="server" Text="Label">Medico:</asp:Label>
                </td>
                <td>
                    <asp:Label ID="LabelNombreMedico" runat="server" Text="Label">Carlo Magurno</asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelFecha" runat="server" Text="Label">Fecha:</asp:Label>
                </td>
                <td>
                    <asp:Label ID="LabelFechaCita" runat="server" Text="Label">01-12-12</asp:Label>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="LabelHora" runat="server" Text="Label">Hora:</asp:Label>
                </td>
                <td>
                  <asp:Label ID="LabelHoraCita" runat="server" Text="Label">11:00 a.m</asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="LabelTratamiento" runat="server" Text="Label">Tratamiento:</asp:Label>
                </td>
                <td>
                    <asp:Label ID="LabelNombreTratamiento" runat="server" Text="Label">Primera Cita</asp:Label>
                </td>
            </tr>
            <tr >
                <td colspan="2"  style="text-align:center">
                <asp:Button ID="defaultButton" runat="server" Text="Aceptar" CssClass="button"/>
                </td>
            </tr>
            </table>          
        </fieldset>
    </div>

</asp:Content>
