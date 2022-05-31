<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="new_Moives.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:HyperLink ID="addmovie" runat="server" NavigateUrl="~/AddMovie.aspx">Add Movies</asp:HyperLink>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style8">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="MovieID" DataSourceID="SqlDataSource2">
                    <Columns>
                        <asp:BoundField DataField="MovieID" HeaderText="MovieID" ReadOnly="True" SortExpression="MovieID" InsertVisible="False" />
                        <asp:BoundField DataField="Movie_Name" HeaderText="Movie_Name" SortExpression="Movie_Name" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="Genre" HeaderText="Genre" SortExpression="Genre" />
                        <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" ShowSelectButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <SortedAscendingCellStyle BackColor="#EDF6F6" />
                    <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                    <SortedDescendingCellStyle BackColor="#D6DFDF" />
                    <SortedDescendingHeaderStyle BackColor="#002876" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [MovieID], [Movie_Name], [price], [Genre] FROM [movie] ORDER BY [Movie_Name]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [movie] WHERE [MovieID] = @original_MovieID AND [Movie_Name] = @original_Movie_Name AND [price] = @original_price AND (([Genre] = @original_Genre) OR ([Genre] IS NULL AND @original_Genre IS NULL))" InsertCommand="INSERT INTO [movie] ([Movie_Name], [price], [Genre]) VALUES (@Movie_Name, @price, @Genre)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [movie] SET [Movie_Name] = @Movie_Name, [price] = @price, [Genre] = @Genre WHERE [MovieID] = @original_MovieID AND [Movie_Name] = @original_Movie_Name AND [price] = @original_price AND (([Genre] = @original_Genre) OR ([Genre] IS NULL AND @original_Genre IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_MovieID" Type="Int32" />
                        <asp:Parameter Name="original_Movie_Name" Type="String" />
                        <asp:Parameter Name="original_price" Type="Double" />
                        <asp:Parameter Name="original_Genre" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Movie_Name" Type="String" />
                        <asp:Parameter Name="price" Type="Double" />
                        <asp:Parameter Name="Genre" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Movie_Name" Type="String" />
                        <asp:Parameter Name="price" Type="Double" />
                        <asp:Parameter Name="Genre" Type="String" />
                        <asp:Parameter Name="original_MovieID" Type="Int32" />
                        <asp:Parameter Name="original_Movie_Name" Type="String" />
                        <asp:Parameter Name="original_price" Type="Double" />
                        <asp:Parameter Name="original_Genre" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            </td>
            <td class="auto-style8"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
