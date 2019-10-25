<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EmployeeByDept.aspx.cs" Inherits="EMS.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    Select department:&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="119px">
    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Height="59px" Text="Button" Width="66px" />
&nbsp;<br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
&nbsp; 
</asp:Content>
