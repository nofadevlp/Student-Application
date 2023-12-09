<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="Hash.Product.GDP.SendEmail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table border="0">
            <tr>
                <td style="width: 250px;" colspan="2"></td>

                <td>
                    <div>
                        <asp:GridView ID="EmailGridView" runat="server" RowStyle-BackColor="#ccffcc" AllowPaging="true">
                        </asp:GridView>
                    </div>
                    <asp:Label ID="EmailsErrorLable" ForeColor="Red" runat="server">
                    </asp:Label>
                </td>
            </tr>
                <span style="background-color:azure; height:20px;"></span>
            <tr>
                <td style="width: 250px;" colspan="2"></td>

                <td>
                    <div>
                        <asp:FileUpload ID="FileUpload" runat="server" />
                        
                        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
                    </div>
                    <asp:Label ID="UploadLable" ForeColor="Red" runat="server">
                    </asp:Label>
                </td>
            </tr>

        </table>
    </form>
</body>
</html>
