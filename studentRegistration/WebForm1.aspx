<%@ Page Title="Student Registration" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="studentRegistration.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-4">
        <h2 class="text-center">Student Registration</h2>
        <div class="card shadow p-4">
            <asp:Panel ID="pnlRegistration" runat="server">
                <div class="mb-3">
                    <asp:Label ID="lblName" runat="server" Text="Full Name:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Name is required." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required." ForeColor="Red" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$" ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password is required." ForeColor="Red" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password must be at least 6 characters long." ValidationExpression="^.{6,}$" ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <asp:Label ID="lblPhone" runat="server" Text="Phone Number:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Phone number is required." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <asp:Label ID="lblAddress" runat="server" Text="Address:" CssClass="form-label"></asp:Label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <asp:Label ID="lblGender" runat="server" Text="Gender:" CssClass="form-label"></asp:Label>
                    <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" CssClass="form-check">
                        <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                        <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="rblGender" InitialValue="" ErrorMessage="Please select a gender." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="mb-3">
                    <asp:Label ID="lblCourse" runat="server" Text="Course:" CssClass="form-label"></asp:Label>
                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Select Course" Value=""></asp:ListItem>
                        <asp:ListItem Text="Computer Science" Value="CS"></asp:ListItem>
                        <asp:ListItem Text="Mathematics" Value="Math"></asp:ListItem>
                        <asp:ListItem Text="Physics" Value="Physics"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvCourse" runat="server" ControlToValidate="ddlCourse" InitialValue="" ErrorMessage="Please select a course." ForeColor="Red" Display="Dynamic" />
                </div>

                <div class="text-center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Register" CssClass="btn btn-primary" />
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
