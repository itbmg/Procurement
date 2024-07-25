<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="linechart, App_Web_qbg2tvje" %>

<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI" TagPrefix="asp" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <head>
        <script type="text/javascript" language="JavaScript" src="FusionCharts/FusionCharts.js"></script>
        <script type="text/javascript" language="JavaScript">

            function myJS(myVar) {
                window.alert(myVar);
            }
      
        </script>
        <link id="Link1" rel="Stylesheet" type="text/css" href="SampleStyleSheet1.css" runat="server"
            media="screen" />
        <style type="text/css">
            .style1
            {
                height: 9px;
            }
        </style>
        <script type="text/javascript">

            function printpage(printpage) {
                window.print();
            }
        </script>
        <script type="text/javascript">
           
        </script>
    </head>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" EnablePageMethods="true" runat="server" />
    <asp:UpdateProgress ID="UpdateProgress" runat="server">
        <ProgressTemplate>
            <div style="position: fixed; text-align: center; height: 10%; width: 100%; top: 0;
                right: 0; left: 0; z-index: 9999999; background-color: Gray; opacity: 0.7;">
                <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="waiting.gif" AlternateText="Loading ..."
                    ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
            </div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:ModalPopupExtender ID="modalPopup" runat="server" TargetControlID="UpdateProgress"
        PopupControlID="UpdateProgress" BackgroundCssClass="modalPopup" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div>
                <br />
                <center>
<%--   <fieldset class="fieldset" width="55%" style="padding: inherit; border-style: inset">  --%>
     <fieldset  class="style15" style="background-color: #CCFFFF" style="padding: inherit; border-style: inset">   
            <legend style="color: #3399FF; width: 252px; font-family: Andalus;">Plant Data Details</legend>


            <table id="table4" width=100% cellspacing="1" align="center">    
                     
                
                    <tr>
                        <td  align="center" width="30%" colspan="2" style="width: 60%">
                        <asp:Label ID="Label7" runat="server" CssClass="style2" Text="From"></asp:Label>
                        <asp:TextBox ID="txt_FromDate" runat="server" Font-Size="Small" Height="20px" 
                            Width="125px"></asp:TextBox>
                        <asp:CalendarExtender ID="txt_FromDate_CalendarExtender" runat="server" 
                            Format="dd/MM/yyyy" PopupButtonID="txt_FromDate" PopupPosition="BottomRight"
                            TargetControlID="txt_FromDate">
                        </asp:CalendarExtender>
                        <asp:CalendarExtender ID="txt_FromDate_CalendarExtender2" runat="server" 
                            Format="dd/MM/yyyy" PopupButtonID="txt_FromDate" PopupPosition="BottomRight" 
                            TargetControlID="txt_FromDate">
                        </asp:CalendarExtender>
                        <asp:Label ID="Label8" runat="server"  Text="To" 
                            style="font-size: medium; font-family: Andalus"></asp:Label>
                        <asp:TextBox ID="txt_ToDate" runat="server" Font-Size="Small" Height="20px" 
                            Width="125px"></asp:TextBox>
                        <asp:CalendarExtender ID="txt_ToDate_CalendarExtender" runat="server" 
                            Format="dd/MM/yyyy" PopupButtonID="txt_ToDate"  PopupPosition="BottomRight" 
                            TargetControlID="txt_ToDate">
                        </asp:CalendarExtender>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="25%">
                            <right>
                                <asp:Label ID="Label5" runat="server" 
                                    style="font-size: medium; font-family: Andalus" Text="Plant Name"></asp:Label>
                            </right>
                        </td>
                        <td align="left" width="25%">
                            <asp:DropDownList ID="ddl_Plantname" runat="server" 
                                Font-Size="Small" Height="30px" 
                                onselectedindexchanged="ddl_PlantName_SelectedIndexChanged" Width="175px">
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" width="30%">
                            &nbsp;</td>
                        <td align="left" width="30%">
                            <asp:Button ID="Button2" runat="server" BackColor="#00CCFF" 
                                BorderStyle="Double" CssClass="button2222" Font-Bold="True" ForeColor="White" 
                                Height="30px" OnClientClick="return PrintPanel();" Text="Print" 
                                Visible="False" />
                            <asp:Button ID="Button1" runat="server" BackColor="#00CCFF" 
                                BorderStyle="Double" CssClass="button2222" Font-Bold="True" ForeColor="White" 
                                Height="30px" OnClientClick="return PrintPanel();" Text="Print" 
                                Visible="False" />
                        </td>
                    </tr>
                    <tr align="center" width="50%">
                        <td colspan="2">
                            <asp:DropDownList ID="ddl_plantcode" runat="server" Height="23px" 
                                Visible="False" Width="47px">
                            </asp:DropDownList>
                            <asp:Button ID="btn_ok" runat="server" CssClass="buttonclass" 
                                onclick="btn_ok_Click" Text="OK" />
                            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Export" 
                                CssClass="buttonclass" />
                           <%-- <asp:Button ID="btn_print" runat="server" CssClass="buttonclass" 
                                onclick="btn_print_Click1" OnClientClick="return PrintPanel();" Text="Print" />--%>
                           <input name="b_print" id="btnprint" type="button" class="ipt" onclick="printpage('chartContainer')" value=" Print ">
                        </td>
                    </tr>
                </caption>
                     
                
            </table>
            
            <br />
          
   </fieldset>
     </center>
            </div>
            <div>
             <table width="100%">
                    <tr style="display:none;">
                        <td style="text-align: center; vertical-align: top">
                            <br />
                            <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/Image/VLogo.png"
                                Width="100px" />
                            <br />
                            <asp:Label ID="Lbl_msg" runat="server" CssClass="style17" Text="Label"></asp:Label>
                            <asp:Label ID="Lbl_msg11" runat="server" CssClass="style17" Text="Label" Visible="False"></asp:Label>
                            <br />
                            <asp:Label ID="Lbl_ReportTitle" runat="server" CssClass="style17" Text="Label"></asp:Label>
                            <br />
                            <asp:Label ID="Lbl_RepeortDate" runat="server" CssClass="style17" Text="Label"></asp:Label>
                            <br />
                        </td>
                    </tr>
                   
                </table>
                <br />
                <br />
                <br />
                <br />
            </div>
            <div id="chartContainer" runat="server">
               
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="Button3" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
