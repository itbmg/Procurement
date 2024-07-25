<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Calc, App_Web_qusf5eba" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<p>
           
           <center>
       
               <asp:Button ID="Button5" runat="server" CssClass="form93" Font-Bold="true"   
                    Font-Size="X-Small"  xmlns:asp="#unknown"   
                    OnClientClick="return confirmationSave();" 
    onclick="Button5_Click" Text="Open  calculator" 
                  TabIndex="6" Visible="False" />
           
               </center>       
                
</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

