<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="new_Moives.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            height: 26px;
        }
        .auto-style9 {
            width: 567px;
        }
        .auto-style10 {
            height: 26px;
            width: 567px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">
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
            <td class="auto-style10">
                <asp:Label ID="Label1" runat="server" Text="Table of Movies :"></asp:Label>
                <br />
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
            <td class="auto-style8">
                <asp:Label ID="Label2" runat="server" Text="Table of Rentals :"></asp:Label>
                <br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="rentalID" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:BoundField DataField="rentalID" HeaderText="rentalID" ReadOnly="True" SortExpression="rentalID" />
                        <asp:BoundField DataField="memberID" HeaderText="memberID" SortExpression="memberID" />
                        <asp:BoundField DataField="rental_date" HeaderText="rental_date" SortExpression="rental_date" />
                        <asp:BoundField DataField="rental_expiry" HeaderText="rental_expiry" SortExpression="rental_expiry" />
                        <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                        <asp:BoundField DataField="movieID" HeaderText="movieID" SortExpression="movieID" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [rental] WHERE [rentalID] = @original_rentalID AND [memberID] = @original_memberID AND [rental_date] = @original_rental_date AND [rental_expiry] = @original_rental_expiry AND (([cost] = @original_cost) OR ([cost] IS NULL AND @original_cost IS NULL)) AND [movieID] = @original_movieID" InsertCommand="INSERT INTO [rental] ([rentalID], [memberID], [rental_date], [rental_expiry], [cost], [movieID]) VALUES (@rentalID, @memberID, @rental_date, @rental_expiry, @cost, @movieID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [rental] ORDER BY [rental_expiry]" UpdateCommand="UPDATE [rental] SET [memberID] = @memberID, [rental_date] = @rental_date, [rental_expiry] = @rental_expiry, [cost] = @cost, [movieID] = @movieID WHERE [rentalID] = @original_rentalID AND [memberID] = @original_memberID AND [rental_date] = @original_rental_date AND [rental_expiry] = @original_rental_expiry AND (([cost] = @original_cost) OR ([cost] IS NULL AND @original_cost IS NULL)) AND [movieID] = @original_movieID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_rentalID" Type="Int32" />
                        <asp:Parameter Name="original_memberID" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_rental_date" />
                        <asp:Parameter DbType="Date" Name="original_rental_expiry" />
                        <asp:Parameter Name="original_cost" Type="Decimal" />
                        <asp:Parameter Name="original_movieID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="rentalID" Type="Int32" />
                        <asp:Parameter Name="memberID" Type="String" />
                        <asp:Parameter DbType="Date" Name="rental_date" />
                        <asp:Parameter DbType="Date" Name="rental_expiry" />
                        <asp:Parameter Name="cost" Type="Decimal" />
                        <asp:Parameter Name="movieID" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="memberID" Type="String" />
                        <asp:Parameter DbType="Date" Name="rental_date" />
                        <asp:Parameter DbType="Date" Name="rental_expiry" />
                        <asp:Parameter Name="cost" Type="Decimal" />
                        <asp:Parameter Name="movieID" Type="Int32" />
                        <asp:Parameter Name="original_rentalID" Type="Int32" />
                        <asp:Parameter Name="original_memberID" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_rental_date" />
                        <asp:Parameter DbType="Date" Name="original_rental_expiry" />
                        <asp:Parameter Name="original_cost" Type="Decimal" />
                        <asp:Parameter Name="original_movieID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
