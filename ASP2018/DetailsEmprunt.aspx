<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetailsEmprunt.aspx.cs" Inherits="ASP2018.DetailsEmprunt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="idEmp" DataSourceID="SqlDataSource1" Height="50px" Width="294px">
    <Fields>
        <asp:BoundField DataField="idEmp" HeaderText="idEmp" ReadOnly="True" SortExpression="idEmp" />
        <asp:BoundField DataField="idClt" HeaderText="idClt" SortExpression="idClt" />
        <asp:BoundField DataField="idmat" HeaderText="idmat" SortExpression="idmat" />
        <asp:BoundField DataField="dateEmprunt" HeaderText="dateEmprunt" SortExpression="dateEmprunt" />
        <asp:BoundField DataField="dateRetour" HeaderText="dateRetour" SortExpression="dateRetour" />
        <asp:BoundField DataField="dureeEmprunt" HeaderText="dureeEmprunt" SortExpression="dureeEmprunt" />
        <asp:BoundField DataField="montantTotal" HeaderText="montantTotal" SortExpression="montantTotal" />
    </Fields>
</asp:DetailsView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db2018ConnectionString %>" SelectCommand="SELECT * FROM [Emprunter] WHERE ([idEmp] = @idEmp)">
    <SelectParameters>
        <asp:QueryStringParameter Name="idEmp" QueryStringField="idEmp" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
