﻿<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="RptDeduction_detailmaster, App_Web_bpwow2sz" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    body
    {
        font-family: Arial;
        font-size: 8pt;
    }
    .Pager span
    {
        text-align: center;
        color:  #3AC0F2;
        display: inline-block;
        width: 20px;
        background-color: #3AC0F2;
        margin-right: 3px;
        line-height: 150%;
        border: 1px solid #3AC0F2;
    }
    .Pager a
    {
        text-align: center;
        display: inline-block;
        width: 20px;
        background-color: #3AC0F2;
        color: #fff;
        border: 1px solid #3AC0F2;
        margin-right: 3px;
        line-height: 150%;
        text-decoration: none;
    }
 
        #table4
        {
            height: 320px;
        }
 
        .style5
        {
            height: 38px;
        }
        .style6
        {
            width: 350px;
        }
        .style7
        {
            font-size: medium;
        }
 
        .style9
        {
            font-size: medium;
            font-family: Andalus;
        }
 
        .style11
        {
            color: #000000;
        }
 
    </style>
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
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" EnablePageMethods="true" runat="server" />

  <asp:UpdateProgress ID="UpdateProgress" runat="server">
<ProgressTemplate>
 <div style="position: fixed; text-align: center; height:10%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color:Gray ; opacity: 0.7;">
            <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="waiting.gif" AlternateText="Loading ..." ToolTip="Loading ..." style="padding: 10px;position:fixed;top:45%;left:50%;" />
        </div>
</ProgressTemplate>
</asp:UpdateProgress>


<asp:ModalPopupExtender ID="modalPopup" runat="server" TargetControlID="UpdateProgress"
PopupControlID="UpdateProgress" BackgroundCssClass="modalPopup" />
 <asp:UpdatePanel ID="UpdatePanel1" runat="server"    >
            <ContentTemplate>

   
       <center style="background-color: #FFFFFF">
        <br />
        <div align="right"> <asp:HyperLink ID="HyperLink1" runat="server" CssClass="fontt" 
                                            NavigateUrl="~/Rpt_StockDetail.aspx">GodownEntry</asp:HyperLink></div>
    <fieldset style="background-color: #CCFFFF"class="style6">
   
   <table align="center" width="400px"  bgcolor="White">
    <tr>
   
   <td align="right" >
     <asp:Label ID="Label6" runat="server" Text="Plant Name" Font-Size="Small" 
           CssClass="style7" style="font-family: Andalus; font-size: medium" ></asp:Label>   
   </td>
   <td align="LEFT">

  <asp:DropDownList ID="ddl_PlantName" runat="server" Width="140px" Font-Size="12px"
                     Height="24px" Font-Bold="true">
    </asp:DropDownList>

   </td>
   
   </tr>






   <tr>
   
   <td align="right" class="style5">
       <asp:Label ID="Label10" runat="server" Text="From Date" Font-Size="Small" 
           CssClass="style7" style="font-family: Andalus; font-size: medium"></asp:Label>
   </td>
   <td align="left" class="style5">
     
                          <asp:TextBox ID="txt_FromDate" runat="server" TabIndex="4" Width="150px" 
                              CssClass="tb10" Font-Size="X-Small"></asp:TextBox>
                            <asp:CalendarExtender ID="txt_FromDate_CalendarExtender" runat="server" 
                                Format="dd/MM/yyyy" PopupButtonID="txt_dob" PopupPosition="BottomRight" 
                                TargetControlID="txt_FromDate">
                            </asp:CalendarExtender>
                          </em></strong>
   </td>
   
   </tr>



   <tr>
   
   <td align="right">
       <asp:Label ID="Label11" runat="server" Text="To Date" Font-Size="Small" 
           CssClass="style7" style="font-family: Andalus; font-size: medium"></asp:Label>
   </td>
   <td align="left">
     
                          <asp:TextBox ID="txt_ToDate" runat="server" TabIndex="4" Width="150px" 
                              CssClass="tb10" Font-Size="X-Small"></asp:TextBox>
                            <asp:CalendarExtender ID="txt_ToDate_CalendarExtender" runat="server" 
                                Format="dd/MM/yyyy" PopupButtonID="txt_dob" PopupPosition="BottomRight" 
                                TargetControlID="txt_ToDate">
                            </asp:CalendarExtender>
                          </em></strong>

                                     <asp:Label ID="Lbl_selectedReportItem" runat="server" visible="false"></asp:Label>    
   </td>
   
   </tr>




   <tr>
   
   <td >
                             
       </td>
       <td>
       <table  align="left">
       <tr>
       <td align="left">
       <asp:RadioButtonList ID="rbtLstReportItems"   RepeatDirection="Horizontal" 
                 RepeatLayout="Table"  runat="server" AutoPostBack="True" 
               onselectedindexchanged="rbtLstReportItems_SelectedIndexChanged">
                 <asp:ListItem Text="Plant" Value="1"></asp:ListItem>
                  <asp:ListItem Text="Agent" Value="2"></asp:ListItem>                                      
                </asp:RadioButtonList>
       </td>
       <td>
          <asp:DropDownList ID="ddl_AgentName" runat="server"  CssClass="ddl2"     
    Font-Bold="True" Font-Size="12px" Width="160px" Height="24px"> </asp:DropDownList></td>
       </tr>
       </table>      
                                                  
       </td>   
   </tr>
  




   <tr>
   
   <td align="left">

             &nbsp;</td>
   <td ALIGN="left">   
        
         <left> 
          <asp:Button ID="btn_Generate" runat="server" BackColor="#006699" 
             ForeColor="White"  Height="26px"   BorderStyle="Double" 
                 Font-Bold="True"    Text="Generate" onclick="btn_Generate_Click" />
             <asp:Button ID="btn_print" runat="server" BackColor="#006699" ForeColor="White" 
                            Text="Print" Height="26px" BorderStyle="Double" 
                 Font-Bold="True"   OnClientClick = "return PrintPanel();" />
         </left>

   </td>
   
   </tr>




   </table>
  
   
   
    </fieldset> 
       <br />
       <br />
    </center>
     <div  ><asp:Label ID="Lbl_Errormsg" runat="server" ForeColor="Red"  ></asp:Label></div>
    <asp:Panel id="pnlContents" runat = "server" bgcolor="White">
   
    <fieldset width="100%">
    
    
        <table align="right" bgcolor="White" width="100%">
            <tr valign="top">
                <td  align="center" width="34%" style="width: 68%">

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="style9">

           <center>         
               <asp:Panel ID="Panel1" HorizontalAlign="Center" runat="server"  >
                   <span class="style9">
           <center>        <asp:Image ID="Image1" runat="server" Height="50px" 
                       ImageUrl="~/Image/VLogo.png" Width="100px" /> 
                   <br />
                   <asp:Label ID="Label12" runat="server" 
                       style="font-weight: 700; font-size: medium; " 
                       Text="DeductionEntry MasterDetails Report" CssClass="style11"></asp:Label>
                   <br />
                   <asp:Label ID="Label13" runat="server" CssClass="style11" 
                       style="font-weight: 700; font-size: small" Text="Plant Name"></asp:Label>
                   <asp:Label ID="lblpname" runat="server" 
                       style="font-weight: 700; text-align: left;" Text="Label" 
                       Width="142px" CssClass="style11"></asp:Label> <span class="style9">
               <br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="Label14" runat="server" CssClass="style11" 
                   style="font-weight: 700; font-size: small" Text="Agent Name"></asp:Label>
               <asp:Label ID="lblpagname" runat="server" CssClass="style11" 
                   style="font-weight: 700; text-align: left;" Text="Label" Width="247px"></asp:Label>
               <br />
               <center>
               <asp:Label ID="lbldate" runat="server" 
                   style="font-weight: 700; text-align: center;" Width="500px" CssClass="style11"></asp:Label></center>
               </span></center> 
                   </span>
               </asp:Panel>
                    </center>
        
                    </span><tr valign="top">
                        <td style="width: 68%" width="34%" align="center">
                                               
                            
                                <asp:GridView ID="DeductionmasterDetails" runat="server" AutoGenerateColumns="False" 
                                    CaptionAlign="Top"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                Font-Size="12px"  ShowFooter="true" onrowdatabound="DeductionmasterDetails_RowDataBound"> 
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
                                        <asp:BoundField DataField="Sno" HeaderText="Sno" ItemStyle-Width="10px" />
                                        <asp:BoundField DataField="Dm_agent_Id" HeaderText="AgentId" ItemStyle-Width="60px" />
                                        <asp:BoundField DataField="StockGroup" HeaderText="Type" ItemStyle-Width="40px" />
                                        <asp:BoundField DataField="StockSubGroup" HeaderText="Category" ItemStyle-Width="80px" />
                                        <asp:BoundField DataField="Dm_Quantity" HeaderText="Quant" ItemStyle-Width="60px" />
                                        <asp:BoundField DataField="Dm_Rate" HeaderText="Rate" ItemStyle-Width="60px" />
                                        <asp:BoundField DataField="Dm_Amount" HeaderText="Amount" ItemStyle-Width="60px" />
                                        <asp:BoundField DataField="Dm_EntryDate" HeaderText="EntryDate" 
                                            />
                                        
                                    </Columns>                                  
                                </asp:GridView>
                                
                                    <br />
                                
                                    <asp:GridView ID="plantDeductionmasterDetails" runat="server" BackColor="White" 
                                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                                Font-Size="12px" ShowFooter="true" 
                                     onrowdatabound="plantDeductionmasterDetails_RowDataBound">
                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="right" />
                                <RowStyle ForeColor="#000066" />
                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                <SortedDescendingHeaderStyle BackColor="#00547E" />
                            </asp:GridView>
                            
                            
                          
                                <br />
                            
                            
                          
                        </td>
                    </tr>
               
                </td>
            </tr>
            <tr valign="top">
                <td align="center" width=100%>
                    <asp:GridView ID="DeductionmasterDetails3" runat="server" 
                        AutoGenerateColumns="true" BackColor="White" BorderColor="#CCCCCC" 
                        BorderStyle="None" BorderWidth="1px" CaptionAlign="Top" CellPadding="3" 
                        Font-Size="12px" onrowdatabound="DeductionmasterDetails3_RowDataBound" 
                        ShowFooter="True" onrowcreated="DeductionmasterDetails3_RowCreated">
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
                           <%-- <asp:TemplateField HeaderText="SNo.">
                                <ItemTemplate>
                                    <%# Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                      --%>
                       <%-- <asp:TemplateField HeaderText="Earning">
                            <FooterTemplate>
                                 <asp:Label ID="lblGrandtotal" runat="server" Text='' Font-Bold="true"></asp:Label>
                            </FooterTemplate>
                            <ItemTemplate>
                                  <asp:Label ID="lbltotal" runat="server" Text='<%# Eval("sAmount") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>--%>

                       
									 <%--  <asp:TemplateField HeaderText="SNo.">
										   <ItemTemplate>
											   <%# Container.DataItemIndex + 1 %>
										   </ItemTemplate>
									   </asp:TemplateField>--%>
								   
                          </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>
        
    </fieldset>
   
    </asp:Panel>
    </ContentTemplate>


        </asp:UpdatePanel>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

