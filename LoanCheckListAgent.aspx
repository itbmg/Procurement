﻿<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="LoanCheckListAgent, App_Web_nwaeolon" %>
<%@ register Assembly="Ajaxcontroltoolkit" namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style3
        {
            width: 100%;
        }
        
   
        
        
      
        
        
        
        
    .buttonclass
{
padding-left: 10px;
font-weight: bold;
            height: 26px;
        }
        
        
        
        
        
        .style4
        {
            color: #990033;
        }
        
        
        
        
        
               .style2
               {
                   font-family: Andalus;
                   font-size: medium;
                   color: #000000;
               }
        
                       
        
        
        
        .style12
        {
            font-family: Andalus;
            color: #000000;
        }
        .style13
        {
            height: 31px;
        }
        #table4
        {
            height: 176px;
        }
    </style>
    <script type="text/javascript">
        function Showalert() {
            alert('Call JavaScript function from codebehind');
        }
</script>
         <script type = "text/javascript">
             function PrintPanel() {
                 var panel = document.getElementById("<%=pnlContents.ClientID %>");
                 var printWindow = window.open('', '', 'height=400,width=800');
                 //       printWindow.document.write('<html><head><title>DIV Contents</title>');
                 printWindow.document.write('</head><body >');
                 printWindow.document.write(panel.innerHTML);
                 printWindow.document.write('</body></html>');
                 printWindow.document.close();
                 setTimeout(function () {
                     printWindow.print();
                 }, 100);
                 return false;
             }
    </script>
        




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>




                      <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                          PostBackUrl="~/BillCheckReports.aspx" 
        style="font-family: serif; font-size: medium; font-weight: 700">Back</asp:LinkButton>
                    



    <br />
     <div class="legagentsms">
   <fieldset class="fontt">   
            <legend style="color: #3399FF">lOAN CHECK LIST</legend>
            <table border="0" width="100%" id="table4" cellspacing="1" align="center">            
             <tr>
            <td>
                &nbsp;</td>
            </tr>
             <tr>
                    <td>
                        &nbsp;</td>
                     <td align="right">
                                      <asp:Label ID="Label43" runat="server" CssClass="style12" EnableTheming="False" 
                                          Font-Size="Small" style="font-family: Andalus; font-size: medium;" 
                                          Text="Plant Name"></asp:Label>
                                  </td>
                    <td >
                  
                                      <asp:DropDownList ID="ddl_PlantName" runat="server" CssClass="tb10" 
                                          Font-Size="Small" Height="25px" Width="130px">
                                      </asp:DropDownList>
                  
                    </td>
                    <td  align="left">
                              
                            </td>
                </tr>  
                  <tr>
                    <td class="style13">                                    
                    </td>
                     <td align="right" class="style13">                   
                                      <asp:Label ID="Label55" runat="server" CssClass="style2" 
                             Text="From Date"></asp:Label>
                                  </td>
                    <td  align="left" class="style13">
                  
                                      <asp:TextBox ID="txt_FromDate" runat="server" CssClass="tb10" Font-Size="Small" 
                                          Height="20px" Width="125px"></asp:TextBox>
                                      <asp:CalendarExtender ID="txt_FromDate_CalendarExtender" runat="server" 
                                          Format="dd/MM/yyyy" PopupButtonID="txt_FromDate" PopupPosition="BottomRight" 
                                          TargetControlID="txt_FromDate">
                                      </asp:CalendarExtender>
                  
                    </td>
                    <td  align="left" class="style13">                    	
                                          	
                    </td>
                </tr> 
                 <tr>
                    <td>                                    
                    </td>
                     <td align="right"> 
                                      <asp:Label ID="Label56" runat="server" CssClass="style2" 
                             Text="To Date"></asp:Label>
                                  </td>
                    <td  >                  
                                      <asp:TextBox ID="txt_ToDate" runat="server" CssClass="tb10" Font-Size="Small" 
                                          Height="20px" Width="125px"></asp:TextBox>
                                      <asp:CalendarExtender ID="txt_ToDate_CalendarExtender" runat="server" 
                                          Format="dd/MM/yyyy" PopupButtonID="txt_ToDate" PopupPosition="BottomRight" 
                                          TargetControlID="txt_ToDate">
                                      </asp:CalendarExtender>
                                  </td>
                    <td  align="left"> 
                                            	
                    	&nbsp;</td>
                </tr> 
                  <tr>
                    <td>                                    
                    </td>
                     <td>                   
                         &nbsp;</td>
                    <td  align="right">
                  
                    </td>
                    <td  align="left">                    	
                        &nbsp;</td>
                </tr> 
            <tr>
                    <td>
                    	
                    </td>
                     <td  align="left">
         
                         &nbsp;</td>
                    <td >                         
                                      <asp:Button ID="Button1" runat="server" CssClass="btn" 
                                          onclick="Button1_Click" OnClientClick="return validate();" 
                            Text="Submit" />
                                      &nbsp;<asp:Button ID="Button4" runat="server" CssClass="btn" Font-Bold="True" 
                                           OnClientClick="return PrintPanel();" 
                            Text="Print" onclick="Button4_Click" />
                                      &nbsp;<asp:Button ID="Button3" runat="server" CssClass="btn" 
                                          onclick="Button3_Click" Text="Export" />
                    </td>
                    <td  align="left">
                        &nbsp;</td>
                               <td width="12%">
                                 
                                      &nbsp;</td>
                </tr>   
               
            </table>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
            <br />
          
   </fieldset>
   </div> 

          




    <asp:UpdateProgress ID="UpdateProgress" runat="server">
<ProgressTemplate>
 <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color:Gray ; opacity: 0.7;">
            <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="waiting.gif" AlternateText="Loading ..." ToolTip="Loading ..." style="padding: 10px;position:fixed;top:45%;left:50%;" />
        </div>
</ProgressTemplate>
</asp:UpdateProgress>


 <asp:ModalPopupExtender ID="modalPopup" runat="server" TargetControlID="UpdateProgress"
PopupControlID="UpdateProgress" BackgroundCssClass="modalPopup" />
 <asp:UpdatePanel ID="UpdatePanel2" runat="server"  >
            <ContentTemplate>

    
     <asp:Panel id="pnlContents" runat = "server">
    <table class="style3">
        <tr align="center">
            <td>
                <asp:Image ID="Image1" runat="server" Height="75px" 
                    ImageUrl="~/Image/VLogo.png" Width="75px" />
                &nbsp;<br /> <span class="style4"><strong>LOAN CKECK LIST&nbsp;&nbsp; REPORT</strong></span>

            </td>
        </tr>
        <tr align="center">
            <td>
                <asp:GridView ID="GridView1" runat="server"  ShowFooter="true"
                    BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CausesValidation="false" CellPadding="3" 
                    Font-Size="15px" onrowcreated="GridView1_RowCreated" 
                    onrowdatabound="GridView1_RowDataBound" PageSize="15">
                    <FooterStyle  BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle ForeColor="#000066" />
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                    <Columns>
                              <asp:TemplateField HeaderText="SNO">
     <ItemTemplate>
       <%#Container.DataItemIndex + 1 %>
     </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    </asp:Panel> 
            </ContentTemplate>
           <Triggers>
<asp:PostBackTrigger ControlID="Button3" />
</Triggers>
        </asp:UpdatePanel>


</asp:Content>
