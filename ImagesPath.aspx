<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImagesPath.aspx.cs" Inherits="Hash.Product.GDP.ImagesPath" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:FileUpload ID="imageupload" runat="server" />
            <asp:Button ID="btnupload" runat="server" Text="upload" OnClick="btnupload_Click" />

        </div>
    </form>
</body>
</html>
