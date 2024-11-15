<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ValidationForm.aspx.cs" Inherits="ValidationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration Form</title>
    <style type="text/css">
        *{
            color:white;
        }
        .auto-style1 {
            width: 74%;
            height: 129px;
        }
        .auto-style2 {
            width: 269px;
        }
        .auto-style3 {
            width: 901px;
        }
        #Button1{
            margin-top:10px;
            background-color:dodgerblue;
            color:white;
            border:0px solid dodgerblue;
            border-radius:12px;
            padding:10px 12px 10px 12px;
            margin-top:20px;
        }
        #Button1:hover{
            background-color:#80BFFF;
           
        }
        .container{
            background:linear-gradient(to right, #1fa2ff, #12d8fa, #a6ffcb);
            width:480px;
            padding:30px;
            padding-top:10px;
            padding-bottom:10px;
            border-radius:10px;
            box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px, rgba(0, 0, 0, 0.23) 0px 6px 6px;   
        }
        .commontextbox{
            padding:20px;
            border:1px solid white;
            border-radius:15px;
        }
        form{
            margin:auto;
        }
        #top-container{
            display:flex;
            justify-content:center;
            align-items:center;
            height:100vh;
            width:100%;
            display:flex;
            justify-content:center;
            align-items:center;
        }
       .tableContainer{
           display:flex;
           justify-content:center;
           align-items:center;
       }
       #stuRegiHead{
           text-decoration:underline;
       }
        .auto-style1 {
            height: 29px;
        }
        .auto-style2 {
            height: 33px;
        }
       .fields{
           color:#000000;
       }
        .auto-style1 {
            height: 29px;
        }
    
    </style>
</head>
<body>
    <div id="top-container">
    <form id="form1" runat="server">
    <div class="container">
    <h2 id="stuRegiHead">STUDENT REGISTRATION FORM</h2>
        <div class="tableContainer">
        <table class="auto-style1">
            <tr>
                <td class="auto-style1" colspan="3" >
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="Red" Font-Size="Small" ForeColor="White" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Student Name</td>
                <td class="auto-style1">
                    <asp:TextBox ID="NameTextBox" runat="server" placeholder="Name" Class="commontextbox fields"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name" ForeColor="#CC3300" ControlToValidate="NameTextBox" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Student Email</td>
                <td class="auto-style3">
                    <asp:TextBox ID="EmailTextBox" runat="server" placeholder="Email" Class="commontextbox fields"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please enter email" ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Email is invalid" ForeColor="#CC3300" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Re-enter Email</td>
                <td class="auto-style1">
                    <asp:TextBox ID="reEnterEmailTextBox" runat="server" placeholder="re-enter email" Class="commontextbox fields"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="reEnterEmailTextBox" Display="Dynamic" ErrorMessage="Please re-enter email" ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="reEnterEmailTextBox" Display="Dynamic" ErrorMessage="Email is invalid" ForeColor="#CC3300" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailTextBox" ControlToValidate="reEnterEmailTextBox" Display="Dynamic" ErrorMessage="Email is not identical" ForeColor="#CC3300" SetFocusOnError="True">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Class</td>
                <td class="auto-style1">
                    <asp:TextBox Class="commontextbox fields" ID="classTextBox" runat="server" placeholder="1 - 12"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="classTextBox" Display="Dynamic" ErrorMessage="Please enter class" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="classTextBox" Display="Dynamic" ErrorMessage="class should be from 1 to 12" ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True" Type="Integer">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Fees</td>
                <td class="auto-style1">
                    <asp:TextBox Class="commontextbox fields" ID="FeesTextBox" runat="server" placeholder="fees"></asp:TextBox>
                </td>
                <td class="auto-style1">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="FeesTextBox" Display="Dynamic" ErrorMessage="please enter fees" ForeColor="#CC3300" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="FeesTextBox" Display="Dynamic" ErrorMessage="Please enter fees between 20000.00 to 50000.00" MaximumValue="50000.00" MinimumValue="20000.00" SetFocusOnError="True" Type="Double">*</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2" >
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
           
            </div>

    </div>
    </form>
        </div>
</body>
</html>
