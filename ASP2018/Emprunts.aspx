<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Emprunts.aspx.cs" Inherits="ASP2018.Emprunts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    Date Debut
<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp; Date Fin
<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button1" runat="server" Text="Filtrer" />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="idEmp" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:BoundField DataField="idEmp" HeaderText="idEmp" ReadOnly="True" SortExpression="idEmp" />
        <asp:BoundField DataField="idmat" HeaderText="idmat" SortExpression="idmat" />
        <asp:BoundField DataField="dateEmprunt" HeaderText="dateEmprunt" SortExpression="dateEmprunt" />
        <asp:BoundField DataField="idClt" HeaderText="idClt" SortExpression="idClt" />
        <asp:HyperLinkField DataNavigateUrlFields="idEmp" DataNavigateUrlFormatString="~/DetailsEmprunt.aspx?idEmp={0}" DataTextField="idEmp" NavigateUrl="~/DetailsEmprunt.aspx" Text="Details" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db2018ConnectionString %>" SelectCommand="SELECT [idEmp], [idClt], [idmat], [dateEmprunt] FROM [Emprunter] WHERE ([idClt] = @idClt) ORDER BY [dateEmprunt] DESC" FilterExpression="dateEmprunt&gt;='{0}' and dateEmprunt&lt;='{1}'">
    <FilterParameters>
        <asp:ControlParameter ControlID="TextBox1" Name="dateDebut" PropertyName="Text" />
        <asp:ControlParameter ControlID="TextBox2" Name="dateFin" PropertyName="Text" />
    </FilterParameters>
    <SelectParameters>
        <asp:SessionParameter Name="idClt" SessionField="userID" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
