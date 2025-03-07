﻿<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Rpt_PlantpermonthBilldateOverAllData, App_Web_f3et3jtw" %>

<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="DropDownCheckBoxes" Namespace="Saplin.Controls" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
 <style type="text/css">
       
        .panels
        {
            width: 100px;
        }
        .modalPopup
        {
            background-color: #FFFFFF;
            filter: alpha(opacity=40);
            opacity: 0.7;
            xindex: -1;
        }
        .fontfam
        {
            font-family:Arial;
        }
              

    </style>
    <script type="text/javascript">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" EnablePageMethods="true" runat="server">
    </asp:ToolkitScriptManager>
    <asp:UpdateProgress ID="UpdateProgress" runat="server">
        <ProgressTemplate>
            <div style="position: fixed; text-align: center; height: 10%; width: 100%; top: 0;
                right: 0; left: 0; z-index: 9999999; background-color: Gray; opacity: 0.7;">
                <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="waiting.gif" AlternateText="Loading ..."
                    ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 38%; left: 50%;" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:ModalPopupExtender ID="modalPopup" runat="server" TargetControlID="UpdateProgress"
        PopupControlID="UpdateProgress" BackgroundCssClass="modalPopup" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="legagentsms">
                <fieldset class="fontt">
                    <legend style="color: #3399FF">Plant Monthly Procurement Report  </legend>
                    <table border="0" width="100%" id="table4" cellspacing="1" align="center">
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                            <td align="right">
                                <asp:Label ID="Label5" runat="server" Text="Plant Name"></asp:Label>
                            </td>
                            <td>
                            </td>
                            <td align="left">
                                <asp:DropDownList ID="ddl_PlantName" runat="server" Width="170px" 
                                    AutoPostBack="True" onselectedindexchanged="ddl_PlantName_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:Button ID="btn_Load" runat="server" BackColor="#00CCFF" 
                                    BorderStyle="Double" Font-Bold="True"
                                    ForeColor="White"  Text="Load" onclick="btn_Load_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td align="right">
                                <asp:CalendarExtender ID="CalendarExtender3" runat="server" TargetControlID="txt_ToDate"
                                    PopupButtonID="txt_ToDate" Format="dd/MM/yyyy" PopupPosition="BottomRight">
                                </asp:CalendarExtender>
                                <asp:Label ID="Label2" runat="server" Text="From"></asp:Label>
                            </td>
                            <td align="right">
                            </td>
                            <td align="left">
                                <asp:TextBox ID="txt_FromDate" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td align="right">
                                <asp:Label ID="Label3" runat="server" Text="To"></asp:Label>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td align="left">
                                <asp:CalendarExtender ID="CalendarExtender5" runat="server" TargetControlID="txt_FromDate"
                                    PopupButtonID="txt_FromDate" Format="dd/MM/yyyy" PopupPosition="BottomRight">
                                </asp:CalendarExtender>
                                <asp:TextBox ID="txt_ToDate" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                &nbsp;
                                <asp:Label ID="lbl_ReportDisplayItems" runat="server" Text="ReportDisplayItems"></asp:Label>
                            </td>
                            <td align="right">
                            </td>
                            <td align="left">
                             
                               
                             
                                <asp:DropDownCheckBoxes ID="ddchkCountry" runat="server" 
                                    AddJQueryReference="True" style="top: -30px; left: 0px" UseButtons="True" 
                                    UseSelectAllNode="True">
                                    <Style DropDownBoxBoxHeight="1000" 
                                        DropDownBoxBoxWidth="200" SelectBoxWidth="250" />
                                    <Texts SelectBoxCaption="Select Report DisplayItems" />
                                </asp:DropDownCheckBoxes>
                                <br />
                                <asp:DropDownCheckBoxes ID="BuffDisplayItems" runat="server" 
                                    AddJQueryReference="True" style="top: -30px; left: 0px" UseButtons="True" 
                                    UseSelectAllNode="True">
                                    <Style DropDownBoxBoxHeight="1000" 
                                        DropDownBoxBoxWidth="200" SelectBoxWidth="250" />
                                    <Texts SelectBoxCaption="Select Report DisplayItems" />
                                </asp:DropDownCheckBoxes>
                             
                               
                             
                            </td>
                        </tr>
                         <tr>
                            <td>
                            </td>
                            <td>
                                &nbsp;
                            </td>
                            <td align="right">
                            </td>
                            <td align="left">
                                
                                    <asp:Button ID="btn_Get" runat="server" BackColor="#00CCFF" 
                                        BorderStyle="Double" Font-Bold="True" ForeColor="White" OnClick="btn_Get_Click" 
                                        Text="Get" />
                                    <asp:Button ID="btn_print" runat="server" BackColor="#00CCFF" 
                                        BorderStyle="Double" Font-Bold="True" ForeColor="White" Height="26px" 
                                         OnClientClick="return PrintPanel();" Text="Print" />
                             </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td align="right">
                                &nbsp;
                            </td>
                            <td>
                            </td>
                            <td align="left">
                            <div align="center">
                                <asp:Panel ID="Panel3" runat="server">
                                    <asp:Table ID="Table2" runat="Server" BorderColor="White" BorderWidth="1" CaptionAlign="Top"
                                        CellPadding="1" CellSpacing="1" Height="40px" Width="200px">
                                        <asp:TableRow ID="TableRow1" runat="Server" BorderWidth="1" Width="200px">
                                            <asp:TableCell ID="TableCell22" runat="Server" BorderWidth="1">
                                                <asp:Table ID="Table1" runat="Server" BorderColor="White" BorderWidth="1" CaptionAlign="Top"
                                                    CellPadding="1" CellSpacing="1" Height="40px" Width="200px">
                                                    <asp:TableRow ID="Title_TableRow" runat="Server" BackColor="#3399CC" BorderColor="Silver"
                                                        BorderWidth="1" ForeColor="white">
                                                        <asp:TableCell ID="TableCell2" runat="Server" BorderWidth="0">
                                                            <asp:CheckBox ID="MChk_Date1" runat="server" AutoPostBack="True" Checked="true" OnCheckedChanged="MChk_Date1_CheckedChanged"
                                                                Text="Date1" />
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                    <asp:TableRow ID="TableRow2" runat="Server" BackColor="#ffffec" BorderColor="Silver"
                                                        BorderWidth="0">
                                                        <asp:TableCell ID="TableCell1" runat="Server" BorderWidth="0">
                                                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" BorderWidth="0">
                                                            </asp:CheckBoxList>
                                                        </asp:TableCell>
                                                    </asp:TableRow>
                                                </asp:Table>
                                            </asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>
                                </asp:Panel>
                                 </div>
                            </td>
                            <td width="12%">
                            </td>
                        </tr>
                    </table>
                    <br />
                </fieldset>
                <asp:Label ID="Lbl_Errormsg" runat="server" Font-Size="Large" ForeColor="Red"></asp:Label>
            </div>                
            <asp:Panel ID="pnlContents" runat="server">
              <div align="left">
       <asp:Image ID="Image1"  runat="server" ImageUrl="~/Image/VLogo.png" Width="50px" Height="35px" /><asp:Label ID="Lbl_CompanyTitle" runat="server" Text="SRI VYSHNAVI DAIRY SPECIALITIES (P) LIMITED" Font-Bold="true" Font-Size="12px"></asp:Label>  <br />
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="PLANT MONTHLY PROCUREMENT BILL REPORT" Font-Bold="true" Font-Size="11px"></asp:Label>        
                    <asp:GridView CssClass="fontem" ID="gvCustomers" runat="server" AutoGenerateColumns="True"  
                      AllowPaging="True" HeaderStyle-BackColor="Silver"
                         PageSize="50" Font-Size="12px" Font-Bold="true" >
                    </asp:GridView>
                    <br />
                </div>
            </asp:Panel>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
