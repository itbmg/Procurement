﻿<%@ page language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="VehicleDetails, App_Web_wtz31u11" title="Untitled Page" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="MCN.WebControls" Namespace="MCN.WebControls" TagPrefix="mcn" %>
<%@ Register Src="MessageBoxUsc/Message.ascx" TagName="uscMsgBox" TagPrefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link type="text/css" href="App_Themes/StyleSheet.css" rel="Stylesheet" />

    <style type="text/css">

    .style1
{
    width:500px;
    text-align:center;
    background-color:Gray;
    
    
}
        .style2
        {
            font-family: Andalus;
        }
        .style3
        {
            font-family: Andalus;
            text-align: right;
        }
        .style6
        {
            text-align: left;
        }
        .style8
        {
            width: 100%;
        }
    </style>

    <script type="text/javascript">
        function confirmation() {
            if (confirm('Are you sure you want to Save ?')) 
            {
                return true;
            } else {
                return false;
            }
        }
   </script>


         <link type="text/css" href="App_Themes/StyleSheet.css" rel="stylesheet" />
       <style type="text/css">
           .style23
           {
               width: 100%;
               height: 17px;
           }
        </style>

            <style type="text/css">
        .style1
        {
            color: #333300;
            font-family: Andalus;
            font-size: medium;
        }
        .style2
        {
            width: 100%;
                    text-align: right;
                }
    </style>

      <style type="text/css">
          .form-style-9{
    max-width: 550px;
    background: #FAFAFA;
    padding: 20px;
    margin:20px auto;
    box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
    border-radius: 10px;
 
         height:440px;
         width: 600PX;
     }
.form-style-9 ul{
    padding:0;
    margin:0;
    list-style:none;
}
.form-style-9 ul li{
    display: block;
    margin-bottom: 10px;
    min-height: 35px;
         height: 37px;
         width: 81px;
         margin-right: 0px;
            text-align: left;
        }
.form-style-9 ul li  .field-style{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    padding: 8px;
    outline: none;
    border: 1px solid #B0CFE0;
    -webkit-transition: all 0.30s ease-in-out;
    -moz-transition: all 0.30s ease-in-out;
    -ms-transition: all 0.30s ease-in-out;
    -o-transition: all 0.30s ease-in-out;

}.form-style-9 ul li  .field-style:focus{
    box-shadow: 0 0 5px #B0CFE0;
    border:1px solid #B0CFE0;
}
.form-style-9 ul li .field-split{
    width: 49%;
}
.form-style-9 ul li .field-full{
    width:70%;
}
.form-style-9 ul li input.align-left{
    float:left;
}
.form-style-9 ul li input.align-right{
    float:right;
}
.form-style-9 ul li textarea{
    width: 80%;
    height: 100px;
}
.form-style-9 ul li input[type="button"],
.form-style-9 ul li input[type="submit"] {
    -moz-box-shadow: inset 0px 1px 0px 0px #3985B1;
    -webkit-box-shadow: inset 0px 1px 0px 0px #3985B1;
    box-shadow: inset 0px 1px 0px 0px #3985B1;
    background-color: #216288;
    border: 1px solid #17445E;
    display: inline-block;
    cursor: pointer;
    color: #FFFFFF;
    padding: 8px 18px;
    text-decoration: none;
    font: 12px Arial, Helvetica, sans-serif;
            text-align: right;
        }
.form-style-9 ul li input[type="button"]:hover,
.form-style-9 ul li input[type="submit"]:hover {
    background: linear-gradient(to bottom, #2D77A2 5%, #337DA8 100%);
    background-color: #28739E;
}
</style>
<style type="text/css">
.form-style-3{
    max-width: 450px;
    font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.form-style-3 label{
    display:block;
  <%--  margin-bottom: 10px;--%>;
        height: 34px;
        text-align: left;
    }
.form-style-3 label > span{
    float: left;
    width: 100px;
    color: DARK;
    font-weight: bold;
    font-size: 13px;
    text-shadow: 1px 1px 1px #fff;
        text-align: right;
    }
.form-style-3 fieldset{
    border-radius: 10px;
    -webkit-border-radius: 10px;
    -moz-border-radius: 10px;
    margin: 0px 0px 10px 0px;
    border: 1px solid #FFD2D2;
    padding: 20px;
    background: #FFF4F4;
    box-shadow: inset 0px 0px 15px #FFE5E5;
    -moz-box-shadow: inset 0px 0px 15px #FFE5E5;
    -webkit-box-shadow: inset 0px 0px 15px #FFE5E5;
}
.form-style-3 fieldset legend{
    color: DARK;
    border-top: 1px solid #FFD2D2;
    border-left: 1px solid #FFD2D2;
    border-right: 1px solid #FFD2D2;
    border-radius: 5px 5px 0px 0px;
    -webkit-border-radius: 5px 5px 0px 0px;
    -moz-border-radius: 5px 5px 0px 0px;
    background: #FFF4F4;
    padding: 0px 8px 3px 8px;
    box-shadow: -0px -1px 2px #F1F1F1;
    -moz-box-shadow:-0px -1px 2px #F1F1F1;
    -webkit-box-shadow:-0px -1px 2px #F1F1F1;
    font-weight: normal;
    font-size: 12px;
        width: 126px;
    }
.form-style-3 textarea{
    width:250px;
    height:100px;
}
.form-style-3 input[type=text],
.form-style-3 input[type=date],
.form-style-3 input[type=datetime],
.form-style-3 input[type=number],
.form-style-3 input[type=search],
.form-style-3 input[type=time],
.form-style-3 input[type=url],
.form-style-3 input[type=email],
.form-style-3 select, 
.form-style-3 textarea{
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;
    border: 1px solid #FFC2DC;
    outline: none;
    color: DARK;
    padding: 5px 8px 5px 8px;
    box-shadow: inset 1px 1px 4px #FFD5E7;
    -moz-box-shadow: inset 1px 1px 4px #FFD5E7;
    -webkit-box-shadow: inset 1px 1px 4px #FFD5E7;
    background: #FFEFF6;
    width:50%;
}
.form-style-3  input[type=submit],
.form-style-3  input[type=button]{
    background: #EB3B88;
    border: 1px solid #C94A81;
    padding: 5px 15px 5px 15px;
    color: #FFCBE2;
    box-shadow: inset -1px -1px 3px #FF62A7;
    -moz-box-shadow: inset -1px -1px 3px #FF62A7;
    -webkit-box-shadow: inset -1px -1px 3px #FF62A7;
    border-radius: 3px;
    border-radius: 3px;
    -webkit-border-radius: 3px;
    -moz-border-radius: 3px;    
    font-weight: bold;
}
.required{
    color:red;
    font-weight:normal;
}
</style>

    <style type="text/css">

    .button {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #4CAF50; /* Green */
        color: white;
        padding: 10px 26px;
        text-align: right;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        font-weight: 700;
    }

        .style3
        {
            width: 180px;
            font-family: Andalus;
            }
        
        </style>

        <style type="text/css">
.body
{
    margin: 0;
    padding: 0;
    font-family: Arial;
}
.modal
{
    position: fixed;
    z-index: 999;
    height: 100%;
    width: 100%;
    top: 0;
    background-color: Black;
    filter: alpha(opacity=60);
    opacity: 0.6;
    -moz-opacity: 0.8;
}
.center
{
    z-index: 1000;
    margin: 300px auto;
    padding: 10px;
    width: 130px;
    background-color: White;
    border-radius: 10px;
    filter: alpha(opacity=100);
    opacity: 1;
    -moz-opacity: 1;
}
.center img
{
    height: 128px;
    width: 128px;
}
</style>

    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" >
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" EnablePageMethods="true" runat="server">
    </asp:ToolkitScriptManager>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
<ProgressTemplate>
    <div class="modal">
        <div class="center">
       
            <asp:Image ID="Image1" ImageUrl="waiting.gif" AlternateText="Processing" runat="server" />
        </div>
    </div>
</ProgressTemplate>
</asp:UpdateProgress>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <div align="center">

    <table class="style8">
        <tr>
            <td>


<div class="form-style-9"  WIDTH=500PX>
<div class="form-style-3">
<table width=100% style="height: auto">

<tr  valign=top ALIGN=LEFT>
<td WIDTH="98%" height="20px">

<fieldset  height:"50" style="height: 352px"><legend>Vehicle&nbsp; Master</legend>


    <table class="style8">
        <tr>
            <td width=50% style="text-align: right">

        <asp:Label ID="lbl_TruckId0" runat="server" Text="Plant Code" CssClass="style2"></asp:Label>

            </td>
            <td>

                <asp:DropDownList ID="ddl_PlantName" runat="server" Height="25px" 
                    onselectedindexchanged="ddl_PlantName_SelectedIndexChanged" 
                    AutoPostBack="True" Width="205px">
                </asp:DropDownList>
                   </td>
        </tr>
        <tr>
            <td style="text-align: right">

        <asp:Label ID="lbl_TruckId" runat="server" Text="Truck Id " CssClass="style2"></asp:Label>

            </td>
            <td>

         <asp:TextBox ID="txt_TruckId" runat="server" TabIndex="1" Enabled="False" 
                    Width="190px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td style="text-align: right">

           <asp:Label ID="lbl_VehicleNo" runat="server" Text="Vehicle No " CssClass="style2"></asp:Label>
   
            
            </td>
            <td>

            <asp:TextBox ID="txt_VehicleNo" runat="server" TabIndex="2" AutoPostBack="True" 
                   ontextchanged="txt_VehicleNo_TextChanged" Width="190px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td style="text-align: right">
          <asp:Label ID="lbl_VehicleName" runat="server" Text="Driver/Vehicle Type" 
                    CssClass="style2"></asp:Label>
  
            
            </td>
            <td>

             <asp:TextBox ID="txt_VehicleName" runat="server" TabIndex="3" Width="190px"></asp:TextBox>
   

            </td>
        </tr>
        <tr>
            <td style="text-align: right">

         <asp:Label ID="Lbl_phoneNo" runat="server" Text="phone No " CssClass="style2"></asp:Label>
    
  
            
            </td>
            <td>

            <asp:TextBox ID="txt_phoneNo" runat="server" TabIndex="4" Width="190px"></asp:TextBox>
   

            </td>
        </tr>
        <tr>
            <td style="text-align: right">

        <asp:Label ID="Lbl_BankName" runat="server" Text="Bank Id " CssClass="style2"></asp:Label>
    
   
    
  
            
            </td>
            <td>

           <asp:DropDownList ID="ddl_BankName" AutoPostBack="true" runat="server" 
        Width="205px" onselectedindexchanged="ddl_BankName_SelectedIndexChanged" TabIndex="5" 
                   Height="25px"> </asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td style="text-align: right">

        <asp:Label ID="lblifsc" runat="server" Text="Ifsc Code" CssClass="style2"></asp:Label>
    
   
    
  
            
            </td>
            <td>

           <asp:DropDownList ID="ddl_ifsccode" AutoPostBack="true" runat="server" 
        Width="205px" TabIndex="6" Height="25px"> </asp:DropDownList>

            </td>
        </tr>
        <tr>
            <td style="text-align: right">

        <asp:Label ID="lblifsc0" runat="server" Text="Account Number" CssClass="style2"></asp:Label>
    
   
    
  
            
            </td>
            <td>

            <asp:TextBox ID="txt_accountnum" runat="server" TabIndex="7" Width="190px"></asp:TextBox>
   

            </td>
        </tr>
        <tr>
            <td align=right>

                       <span class="style3">Fixed/</span><asp:Label 
                           ID="Lbl_LitreCost" runat="server" 
                           Text="Milk Ltr/km Cost" CssClass="style3"></asp:Label>        
            </td>
            <td>

           <asp:TextBox ID="txt_LitreCost" runat="server" TabIndex="8" Width="190px"></asp:TextBox>          
            </td>
        </tr>
        <tr>
            <td style="text-align: right">
                       <asp:Label ID="lbl_Vehiclepaymentmode" runat="server" CssClass="style2" 
                           Text="Vehicle payment mode"></asp:Label>
                   </td>
            <td>
                        <asp:DropDownList ID="ddl_Vehiclepaymentmode" runat="server"  
                    TabIndex="9" CssClass="style6" 
                            Font-Size="Small" Height="25px" Width="70px">
                            <asp:ListItem Value="0">Fixed</asp:ListItem>
                            <asp:ListItem Value="1">Ltr</asp:ListItem>
                            <asp:ListItem Value="2">Km</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Label ID="Lbl_Vehiclepaymentmode1" runat="server" CssClass="style3" 
                            Text="Fixed/Ltr/km"></asp:Label>
                    </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">

          
                        <asp:DropDownList ID="ddl_Plantcode" runat="server" CssClass="style6" 
                            Font-Size="X-Small" Height="20px" Visible="False" Width="70px">
                        </asp:DropDownList>

       
        
    
  
            
   <asp:DropDownList ID="ddl_BankId" AutoPostBack="true" runat="server" 
        Width="75px" Visible="false" 
                   onselectedindexchanged="ddl_BankId_SelectedIndexChanged">  </asp:DropDownList>

          
      
           
                    <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
                </td>
        </tr>
    </table>


    <table class="style1">
        
    </table>
 </fieldset>


</td>
 
</tr>

</table>
</div>

    <table class="style23">
        <tr>
            <td style="text-align: center">


<asp:Button ID="Button1" runat="server" Text="Save"  Height="30px"    CssClass="form93"
                   ForeColor="White" xmlns:asp="#unknown" 
          OnClientClick="return confirmation();" onclick="Button1_Click" TabIndex="10"/>
            <asp:Button ID="Button2" runat="server" Text="Reset"  Height="30px"   CssClass="form93"
           onclick="Button2_Click" TabIndex="11" />
   
       
        
    
  
            
            </td>
        </tr>
    </table>

</div>

             </td>
        </tr>
        </table>
    

      <table width=100%>
      <tr align="center">
      <td>
      
      
                    <asp:GridView ID="GridView1" runat="server"  CausesValidation="false"
                        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" Font-Size="12px" 
                        onpageindexchanging="GridView1_PageIndexChanging" 
                        onrowcreated="GridView1_RowCreated" 
                        onrowdatabound="GridView1_RowDataBound" onrowediting="GridView1_RowEditing" 
                        AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="Truck_Id" 
                        onrowcancelingedit="GridView1_RowCancelingEdit" 
                        onrowupdating="GridView1_RowUpdating" PageSize="15">
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
                            <asp:TemplateField HeaderText="SNo">
                                <ItemTemplate>
                                    <%#Container.DataItemIndex + 1 %>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="Truck_Id" HeaderText="TruckID" 
                                SortExpression="Truck_Id" ReadOnly="True" />
                            <asp:BoundField DataField="Truck_Name" HeaderText="TruckName" 
                                SortExpression="Truck_Name" >
                            <ControlStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Vehicle_No" HeaderText="VehicleNo" 
                                SortExpression="Vehicle_No" ReadOnly="True" />
                            <asp:BoundField DataField="Phone_No" HeaderText="PhoneNo" 
                                SortExpression="Phone_No" >
                            <ControlStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Bank_Id" HeaderText="BankID" 
                                SortExpression="Bank_Id" ReadOnly="True" />


                            <asp:BoundField DataField="Ifsc_code" HeaderText="Ifsccode" 
                                SortExpression="Ifsc_code" >
                            <ControlStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="AccountNo" HeaderText="AccountNo" 
                                SortExpression="AccountNo" >
                            <ControlStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Ltr_Cost" HeaderText="LtrCost" 
                                SortExpression="Ltr_Cost" >
                            <ControlStyle Width="50px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="fixed" HeaderText="Fixed" SortExpression="fixed" />
                           <asp:BoundField DataField="paymenttype" HeaderText="PayMode" 
                                SortExpression="paymenttype" >
                               <ControlStyle Width="50px" />
                            </asp:BoundField>
                                                       
                               <asp:BoundField DataField="status" HeaderText="status" 
                                SortExpression="status" >
                            <ControlStyle Width="50px" />
                            </asp:BoundField>                          
                                                       
                            <asp:CommandField ShowEditButton="True"  />
                        </Columns>
                    </asp:GridView>
      </td>
      
      </tr>
      </table>
 <%-- <asp:UpdateProgress ID="UpdateProgress" runat="server">
<ProgressTemplate>
 <div style="position: fixed; text-align: center; height:10%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color:Gray ; opacity: 0.7;">
        </div>
</ProgressTemplate>
</asp:UpdateProgress>
       --%>
    
    <br />
    

 
<uc1:uscMsgBox ID="uscMsgBox1" runat="server" />




        </div>
</ContentTemplate>


<%--<Triggers>
    <asp:PostBackTrigger ControlID="Button7" />
</Triggers>--%>
</asp:UpdatePanel>
  
    </form>
</asp:Content>


