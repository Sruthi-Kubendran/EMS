<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="EMS.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Add New Employee</h2>
    <table>
        <tr>
            <td>Name</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxName" runat="server" MaxLength="255"></asp:TextBox>
            </td>
            <td style="width: 46px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxName" ErrorMessage="RequiredFieldValidator">Name is required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxEmail" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td style="width: 46px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="RequiredFieldValidator">Email required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td style="width: 205px">
                <asp:RadioButtonList ID="RadioButtonListGender" runat="server">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>TransGender</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td style="width: 46px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonListGender" ErrorMessage="RequiredFieldValidator">Gender is required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Department</td>
            <td style="width: 205px">
                <asp:DropDownList ID="DropDownListDept" runat="server" DataTextField="Name" DataValueField="DepartmentID">
                </asp:DropDownList>
            </td>
            <td style="width: 46px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownListDept" ErrorMessage="RequiredFieldValidator">Department required</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td>Date Of Birth</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxDateOfBirth" runat="server" MaxLength="255" TextMode="Date"></asp:TextBox>
            </td>
            <td style="width: 46px">
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxDateOfBirth" ErrorMessage="RangeValidator">Date of birth should be in past</asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Date Of Joining</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxDateOfJoining" runat="server" MaxLength="255" TextMode="Date"></asp:TextBox>
            </td>
            <td style="width: 46px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxDateOfJoining" ErrorMessage="RequiredFieldValidator">Date of joining required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Manager</td>
            <td style="width: 205px">
                <asp:DropDownList ID="DropDownListManager" runat="server" DataTextField="Name" DataValueField="Number">
                </asp:DropDownList>
            </td>
            <td style="width: 46px">&nbsp;</td>
        </tr>
        <tr>
            <td>Phone</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxPhone" runat="server" TextMode="Phone" MaxLength="10"></asp:TextBox>
            </td>
            <td style="width: 46px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="RequiredFieldValidator">Phone number required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Salary</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxSalary" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td style="width: 46px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxSalary" ErrorMessage="RequiredFieldValidator">Salary required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Commission</td>
            <td style="width: 205px">
                <asp:TextBox ID="TextBoxCommission" runat="server" TextMode="Number"></asp:TextBox>
            </td>
            <td style="width: 46px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxCommission" ErrorMessage="RequiredFieldValidator">Commision required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>JobTitle</td>
            <td>
                <asp:DropDownList ID="DropDownListJobTitle" runat="server">
                    <asp:ListItem>Developer</asp:ListItem>
                    <asp:ListItem>Analyst</asp:ListItem>
                    <asp:ListItem>SalesMan</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Tester</asp:ListItem>
                    <asp:ListItem>Accountant</asp:ListItem>
                    <asp:ListItem>Cashier</asp:ListItem>
                    <asp:ListItem>President</asp:ListItem>
                    <asp:ListItem>Senior Developer</asp:ListItem>
                    <asp:ListItem>CEO</asp:ListItem>
                    <asp:ListItem>COO</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownListJobTitle" ErrorMessage="RequiredFieldValidator">Jobtitle required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td style="width: 205px">
                <asp:Button ID="ButtonCreate" runat="server" Text="Create" CssClass="bg-primary" OnClick="ButtonCreate_Click" />
            </td>
            <td style="width: 46px">
                <asp:Button ID="ButtonCancel" runat="server" Text="Cancel" CssClass="bg-warning" CausesValidation="False" />
            </td>
        </tr>

    </table>
</asp:Content>
