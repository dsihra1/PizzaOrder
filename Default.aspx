<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
           <h2><asp:Label ID="lblTitle" runat="server" Text="Pizza Order"></asp:Label></h2>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="The following errors occured:" />
        <p>Username:
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="You did not enter a username" CssClass="Validator">*</asp:RequiredFieldValidator>
        </p>
        <p>Password:
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="You did not enter a password." CssClass="Validator">*</asp:RequiredFieldValidator>
        </p>
        <p>Confirm Password:
            <asp:TextBox ID="txtPasswordConfirm" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPasswordConfirm" Display="Dynamic" ErrorMessage="You did not confirm your password." CssClass="Validator">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtPasswordConfirm" ErrorMessage="Your passwords do not match." CssClass="Validator">*</asp:CompareValidator>
        </p>
        <p>Pizza Size:<asp:DropDownList ID="ddlPizzaSize" runat="server">
            <asp:ListItem Value="0">Choose Your Size</asp:ListItem>
            <asp:ListItem Value="8">Small</asp:ListItem>
            <asp:ListItem Value="10">Medium</asp:ListItem>
            <asp:ListItem Value="12">Large</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlPizzaSize" ErrorMessage="You did not choose a size." InitialValue="0" CssClass="Validator">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="ddlPizzaSize" ErrorMessage="You did not select a size." Operator="NotEqual" ValueToCompare="0" CssClass="Validator">*</asp:CompareValidator>
        </p>
        <p>Crust Type:
            <asp:RadioButtonList ID="rblCrust" runat="server" TextAlign="Left">
                <asp:ListItem Selected="True" Value="0">Regular</asp:ListItem>
                <asp:ListItem Value="3">Stuffed</asp:ListItem>
                <asp:ListItem Value="2">Flat</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>Toppings:</p>
        <p>
            <asp:CheckBoxList ID="cblToppings" runat="server">
                <asp:ListItem Value="0.50">Pepperoni</asp:ListItem>
                <asp:ListItem Value="0.50">Bacon</asp:ListItem>
                <asp:ListItem Value="1.00">Caviar</asp:ListItem>
                <asp:ListItem Value="0.50">Pineapple</asp:ListItem>
            </asp:CheckBoxList>
        </p>
        <p>Order Date:
            <asp:TextBox ID="txtOrderDate" runat="server" TextMode="Date"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtOrderDate" Display="Dynamic" ErrorMessage="You did not choose a date." CssClass="Validator">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtOrderDate" ErrorMessage="You did not enter a valid date." Operator="DataTypeCheck" Type="Date" CssClass="Validator">*</asp:CompareValidator>
        </p>
        <p>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Form" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnClear" runat="server" CausesValidation="False" OnClick="btnClear_Click" Text="Clear Form" />
        </p>
        <p>
            <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
        </p>
        </ContentTemplate>
        </asp:UpdatePanel>
    </form>
</body>
</html>
