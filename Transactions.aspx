<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="Hash.Product.GDP.Transactions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 148px;
        }
        .auto-style3 {
            width: 251px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Account Number</td>
                    <td class="auto-style3">
                        <asp:Label ID="Account1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Account2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Customer Name</td>
                    <td class="auto-style3">
                        <asp:Label ID="customer1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="customer2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Balance</td>
                    <td class="auto-style3">
                        <asp:Label ID="Balance1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Balance2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnTransfer" runat="server" Text="Transfer" OnClick="btnTransfer_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="msg" runat="server" Text="lblmsg"></asp:Label>
                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
