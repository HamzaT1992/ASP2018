<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="ASP2018.Connexion" %>
<%@ MasterType VirtualPath="~/Site1.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 606px;
    }
        .auto-style10 {
            margin-left: 1px;
        }
    .auto-style11 {
        margin-left: 42px;
    }
    .auto-style12 {
        width: 363px;
    }
    .auto-style13 {
        width: 122px;
    }
    .auto-style14 {
        width: 513px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style14">
    <tr>
        <td class="auto-style13">Identifiant </td>
        <td class="auto-style12">
            <asp:TextBox ID="tboxID" runat="server" CssClass="auto-style10" Width="142px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tboxID" ErrorMessage="Veillez remplir tous les champs" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">Mot de passe</td>
        <td class="auto-style12">
            <asp:TextBox ID="tboxPass" runat="server" CssClass="auto-style10" Width="141px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tboxPass" ErrorMessage="Veillez remplir tous les champs" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style12">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Connecter" CssClass="auto-style11" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
