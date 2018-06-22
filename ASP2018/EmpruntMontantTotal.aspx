<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmpruntMontantTotal.aspx.cs" Inherits="ASP2018.EmpruntMontantTotal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="idEmp" DataValueField="idEmp">
    </asp:DropDownList>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Montrer le montant" />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server"></asp:Label>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db2018ConnectionString %>" SelectCommand="SELECT [idEmp] FROM [Emprunter] WHERE ([idClt] = @idClt)">
        <SelectParameters>
            <asp:SessionParameter Name="idClt" SessionField="userID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
