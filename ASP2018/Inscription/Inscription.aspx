<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="ASP2018.Inscription" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 706px;
    }
    .auto-style11 {
        margin-left: 0px;
    }
    .auto-style14 {
        width: 95px;
    }
    .auto-style15 {
        width: 180px;
    }
    .auto-style16 {
        width: 148px;
    }
    .auto-style17 {
        width: 632px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
    <tr>
        <td class="auto-style16">Id</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style11"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Veuillez remplir tout les champs " ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style16">Nom</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Veuillez remplir tout les champs " ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style16">Prenom</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Veuillez remplir tout les champs " ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style16">Email</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Veuillez remplir tout les champs " ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Email incorrect" ForeColor="Red" ValidationExpression="[a-zA-Z1-9]+@[a-z]+.[a-z]+"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style16">Mot de passe</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Veuillez remplir tout les champs " ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style16">Confirmer mot de passe</td>
        <td class="auto-style14">
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td class="auto-style15">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Veuillez remplir tout les champs " ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Ce mot de passe est différent" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style16">&nbsp;</td>
        <td class="auto-style14">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Inscrir" />
        </td>
        <td class="auto-style15">&nbsp;</td>
    </tr>
</table>
</asp:Content>
