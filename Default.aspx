<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Practice21_11_19.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="gvPhoneBook" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="false" 
            ShowFooter="true" OnRowEditing="gvPhoneBook_RowEditing" OnRowCancelingEdit="gvPhoneBook_RowCancelingEdit" OnRowUpdating="gvPhoneBook_RowUpdating" OnRowDeleting="gvPhoneBook_RowDeleting"
            DataKeyNames="PhoneBookID" ShowHeaderWhenEmpty="true" OnRowCommand="gvPhoneBook_RowCommand">
            <%-- Theme Properties --%>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
            
            <Columns>
                <asp:TemplateField HeaderText="First Name">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("FirstName") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtFirstName" Text='<%# Eval("FirstName") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtFirstNameFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("LastName") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtLastName" Text='<%# Eval("LastName") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtLastNameFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Contact") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtContact" Text='<%# Eval("Contact") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtContactFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label Text='<%# Eval("Email") %>' runat="server" />
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="txtEmail" Text='<%# Eval("Email") %>' runat="server" />
                    </EditItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="txtEmailFooter" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <ItemTemplate>
                     <asp:ImageButton ImageUrl="~/images/icons8-edit-64.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                   <asp:ImageButton ImageUrl="~/images/icons8-delete-bin-64 (1).png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px" />
                    </ItemTemplate>
                    <EditItemTemplate>
                <asp:ImageButton ImageUrl="~/images/icons8-save-26.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
               <asp:ImageButton ImageUrl="~/images/icons8-delete-26.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" />
                    </EditItemTemplate>
                    <FooterTemplate>
                <asp:ImageButton ImageUrl="~/images/icons8-add-100.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px" />
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
        <br />
                <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
    </div>
    </form>
</body>
</html>
