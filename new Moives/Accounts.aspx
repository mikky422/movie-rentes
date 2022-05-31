﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Accounts.aspx.cs" Inherits="new_Moives.WebForm4" %>
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="MemberID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="MemberID" HeaderText="MemberID" ReadOnly="True" SortExpression="MemberID" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                        <asp:BoundField DataField="isadmin" HeaderText="isadmin" SortExpression="isadmin" />
                        <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [member] WHERE [MemberID] = @original_MemberID AND [email] = @original_email AND [gender] = @original_gender AND (([isadmin] = @original_isadmin) OR ([isadmin] IS NULL AND @original_isadmin IS NULL))" InsertCommand="INSERT INTO [member] ([MemberID], [email], [gender], [isadmin]) VALUES (@MemberID, @email, @gender, @isadmin)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [MemberID], [email], [gender], [isadmin] FROM [member] ORDER BY [MemberID]" UpdateCommand="UPDATE [member] SET [email] = @email, [gender] = @gender, [isadmin] = @isadmin WHERE [MemberID] = @original_MemberID AND [email] = @original_email AND [gender] = @original_gender AND (([isadmin] = @original_isadmin) OR ([isadmin] IS NULL AND @original_isadmin IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_MemberID" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_isadmin" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MemberID" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="isadmin" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="gender" Type="String" />
                        <asp:Parameter Name="isadmin" Type="String" />
                        <asp:Parameter Name="original_MemberID" Type="String" />
                        <asp:Parameter Name="original_email" Type="String" />
                        <asp:Parameter Name="original_gender" Type="String" />
                        <asp:Parameter Name="original_isadmin" Type="String" />
                    </UpdateParameters>
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
