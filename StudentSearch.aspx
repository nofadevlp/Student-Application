<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentSearch.aspx.cs" Inherits="Hash.Product.GDP.StudentSearch" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Search</title>
    <style type="text/css">
        .auto-style1 {
            width: 515px;
            height: 215px;
        }
    </style>
    <link href="Styles/jquery-ui-1.10.4.custom.min.css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/jquery-ui.js"></script>
    <script src="Scripts/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui.min.js"></script>
    <script type="text/javascript" lang="ja">
        $(function () {
            $('#<%= txtSearchName.ClientID %>').autocomplete(
                {
                    source: function (request, response)
                    {
                        $.ajax(
                            {
                                url: "StudentWebService.asmx/GetStudentName",
                                data: "{ 'studentNames': '" + request.term + "' }",
                                type: "POST",
                                dataType: "json",
                                contentType: "application/json;charset=utf-8",
                                success: function (result) {
                                    response( result.d);
                                },
                                error: function (result) {
                                    alert('There is problem processing your request');
                                }

                            });
                    }

                });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
            Name : 
            <asp:TextBox ID="txtSearchName" runat="server"></asp:TextBox>
            <asp:Button ID="btnSearch" Text="Search" runat="server" OnClick="btnSearch_Click" />
        </div>
        <!----------------------------------------------------------------------------------------------------------------------------->
        <table class="auto-style1">
            <tr>

                <td style="background-color: aqua;">
                    <h1>GridView With DataTable</h1>
                    <div>
                        <asp:GridView ID="studentGridView" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:FileUpload ID="imgUpload" runat="server" />
                    
                        <br />
                        <br />
                        <asp:Button ID="btnimg" runat="server" Text="Upload" OnClick="btnimg_Click" />
                        <asp:Button ID="btnPath" runat="server" OnClick="btnPath_Click" Text="path" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                            <br />
                        <br />
                        <asp:Label ID="imgLabel" ForeColor="Red" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:HyperLink ID="imgLink" Text="View Uploaded Image" runat="server">HyperLink</asp:HyperLink>
                   </td>

                
            </tr>
            <!--??????????????????????????????????????????????????????????????????????????????????????????????-->
         <tr>
             <td>
                 <asp:GridView ID="pathGrid" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="pathSource" ForeColor="#333333" GridLines="None" Width="135px">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <Columns>
                         <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                         <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                         
                         <asp:TemplateField HeaderText="Image" ConvertEmptyStringToNull="False">
                    <ItemTemplate>
                        <asp:Image ID="img" runat="server" Height="100px" Width="100px" ImageUrl='<%# Eval("imagepath") %>'
                             />
                    </ItemTemplate>
                </asp:TemplateField>
                     </Columns>
                     <EditRowStyle BackColor="#999999" />
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                     <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                     <SortedAscendingCellStyle BackColor="#E9E7E2" />
                     <SortedAscendingHeaderStyle BackColor="#506C8C" />
                     <SortedDescendingCellStyle BackColor="#FFFDF8" />
                     <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                 </asp:GridView>
                 <asp:SqlDataSource ID="pathSource" runat="server" ConnectionString="<%$ ConnectionStrings:Local %>" SelectCommand="SELECT [Id], [Name], [imagepath] FROM [ImgPath]"></asp:SqlDataSource>
             </td>
         </tr>
            
        </table>
        <!--??????????????????????????????????????????????????????????????????????????????????????????????-->
        <asp:GridView ID="imgGridView" AutoGenerateColumns="False" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
         <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Size" HeaderText="size(bytes)" />
                <asp:TemplateField HeaderText="Image" ConvertEmptyStringToNull="False">
                    <ItemTemplate>
                        <asp:Image ID="imgformDB" runat="server" Height="100px" Width="100px"
                            ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((Byte[])Eval("ImageData")) %>'  />
                    </ItemTemplate>
                </asp:TemplateField>
                
            </Columns>   
            <FooterStyle BackColor="Tan" />
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <SortedAscendingCellStyle BackColor="#FAFAE7" />
            <SortedAscendingHeaderStyle BackColor="#DAC09E" />
            <SortedDescendingCellStyle BackColor="#E1DB9C" />
            <SortedDescendingHeaderStyle BackColor="#C2A47B" />
        </asp:GridView>
        
    </form>
</body>
</html>
