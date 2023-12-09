<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Hash.Product.GDP.Student" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 515px;
            height: 215px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>

                <td style="background-color:aqua;">
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
                 <td style="background-color:mediumpurple;">
                    <h1>GridView fill DataTable from DataBase</h1>
                    <div>
                    <asp:GridView ID="stdGridView" runat="server"></asp:GridView>

                    </div>
                </td>

                  <td style="background-color:brown;">
                      <h1>ListControl With DataBase</h1>
                      <div>
                    <asp:ListBox ID="MarksListBox" runat="server" DataSourceID="ListSource" DataTextField="TotalMarks" DataValueField="TotalMarks" ></asp:ListBox>
                          <asp:SqlDataSource ID="ListSource" runat="server" ConnectionString="<%$ ConnectionStrings:dataErrorConnectionString %>" SelectCommand="SELECT [TotalMarks], [Name] FROM [students]"></asp:SqlDataSource>
                      </div>
                </td>
            </tr>

            <tr>
                <td style="background-color:crimson;">
                    <h1>BulletedList1 With DataBase</h1>
                    <div>           
                        <asp:BulletedList ID="stdBulletedList" runat="server" DataSourceID="BullitedSource" DataTextField="Name" DataValueField="Name">
                    </asp:BulletedList>
                    <asp:SqlDataSource ID="BullitedSource" runat="server" ConnectionString="<%$ ConnectionStrings:dataErrorConnectionString %>" SelectCommand="SELECT [Name] FROM [students]"></asp:SqlDataSource>
                    </div>

                </td>
                <td style="background-color:coral;">
                    <h1>CheckBoxList Classes With DataBase</h1>
                    <div>
                     <asp:CheckBoxList ID="GenderCheckBoxList" runat="server" DataSourceID="CheckSource" DataTextField="Gender" DataValueField="Gender">
                    </asp:CheckBoxList>
                     <asp:SqlDataSource ID="CheckSource" runat="server" ConnectionString="<%$ ConnectionStrings:dataErrorConnectionString %>" SelectCommand="SELECT [Id] FROM [Class]"></asp:SqlDataSource>
                </div>
                </td>
                 <td style="background-color:darkgoldenrod;">
                    <h1>RadioButtonList1 With DataBase</h1>
                    <div>
                    <asp:RadioButtonList ID="GenderRadioButtonList" runat="server" DataSourceID="RadioButtonSource" DataTextField="Gender" DataValueField="Gender">
                    </asp:RadioButtonList>

                        <asp:SqlDataSource ID="RadioButtonSource" runat="server" ConnectionString="<%$ ConnectionStrings:dataErrorConnectionString %>" SelectCommand="SELECT DISTINCT [Gender] FROM [students] ORDER BY [Gender]"></asp:SqlDataSource>

                    </div>
                </td>
            </tr>

            <tr>

                <td style="background-color:darkgreen;">
                    <h1>DropDownList Classes With DataBase</h1>
                    <div>
                    <asp:DropDownList ID="MarksDropDownList" runat="server" DataSourceID="DropDownSource" DataTextField="Id" DataValueField="Id"></asp:DropDownList>
                        <asp:SqlDataSource ID="DropDownSource" runat="server" ConnectionString="<%$ ConnectionStrings:dataErrorConnectionString %>" SelectCommand="SELECT [Id] FROM [Class]"></asp:SqlDataSource>
                </div>
            </td>
                <td style="background-color:darksalmon;">
                    <div> 
                        <h1>Repeater1 With DataBase</h1>
                    <asp:Repeater ID="StudentsRepeater" runat="server">
                        <HeaderTemplate>
                             <table class="tblcolor">  
                    <tr>  
                         
                            <td>  
                                Student No  
                            </td>  
                            <td>  
                                Student Name  
                            </td>  
                            <td>  
                                 Gender  
                            </td>          
                            
                            <td>  
                                Total Mark  
                            </td>  
                       
                    </tr>  
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr class="tblrowcolor">  
                    <td>  
                        <%#Eval("Id")%>  
                    </td>  
                    <td>  
                        <%#Eval("Name")%>  
                    </td>  
                    <td>  
                        <%#Eval("Gender")%>  
                    </td>  
                    <td>
                        <%#Eval("TotalMarks")%>
                    </td>
                </tr>  
                        </ItemTemplate>
                        <FooterTemplate>
                             <tr>  
                    <td>  
                        School Records displayed  
                    </td>  
                </tr> 
                        </FooterTemplate>

                    </asp:Repeater>
                       
                         
               
                    
                
                   <tr>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                    <td>  
                        <hr />  
                    </td>  
                </tr>   
                <tr>  
                    <td>  
                        <%#Eval("Id")%>  
                    </td>  
                    <td>  
                        <%#Eval("Name")%>  
                    </td>  
                    <td>  
                        <%#Eval("Gender")%>  
                    </td>  
                    <td>
                        <%#Eval("TotalMarks")%>
                    </td>
                </tr>   
                <tr>  
                    
                    <td>  
                        <hr />  
                    </td>
                    
                    <td>  
                        <hr />  
                    </td>  
                    
                    <td>  
                        <hr />  
                    </td>
                    
                    <td>  
                        <hr />  
                    </td>  
                </tr>  
            
                
          </div>      
            </tr>
         <tr>
             <td>
             </td>
         </tr>
        </table>
        
       
    </form>
</body>
</html>
