<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Hash.Product.GDP.Report" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Reports</title>
</head>
<body>
    <form id="form1" runat="server">
      <div>
          Cass No <asp:TextBox ID="txtClass" runat="server"></asp:TextBox>
      </div>
        <div>
            <asp:Button ID="btnReport" runat="server" Text="Report" OnClick="btnReport_Click" />
          
             <CR:CrystalReportViewer ID="CrystalReport" runat="server" AutoDataBind="True" Height="1202px" ToolPanelWidth="200px" Width="1104px" />
           <%-- <CR:CrystalReportSource ID="CrystalSource" runat="server">
                <Report FileName="FirstReport.rpt">
                </Report>
            </CR:CrystalReportSource>--%>
        </div>
    </form>
</body>
</html>
