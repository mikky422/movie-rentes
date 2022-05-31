<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Rentals.aspx.cs" Inherits="new_Moives.Rentals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="rentalID" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="rentalID" HeaderText="rentalID" ReadOnly="True" SortExpression="rentalID" />
                        <asp:BoundField DataField="memberID" HeaderText="memberID" SortExpression="memberID" />
                        <asp:BoundField DataField="rental_date" HeaderText="rental_date" SortExpression="rental_date" />
                        <asp:BoundField DataField="rental_expiry" HeaderText="rental_expiry" SortExpression="rental_expiry" />
                        <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                        <asp:BoundField DataField="movieID" HeaderText="movieID" SortExpression="movieID" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [rental] WHERE ([memberID] = @memberID)">
                    <SelectParameters>
                        <asp:CookieParameter CookieName="coco" DefaultValue="" Name="memberID" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
