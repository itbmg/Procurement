﻿<%@ page title="" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="PlantAvgMilkCounting, App_Web_f3et3jtw" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<%@ Register Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
    .button {
    border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #4CAF50; /* Green */
        color: white;
        padding: 10px 26px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin: 4px 2px;
        cursor: pointer;
        font-weight: 700;
    }

.button2 {background-color: #008CBA;} /* Blue */
.button3 {background-color: #f44336;} /* Red */
.button4 {background-color: #e7e7e7; color: black;} /* Gray */
.button5 {background-color: #555555;} /* Black */
.text1 {
    border: 2px solid rgb(173, 204, 204);
    height: 31px;
    width: 223px;
    box-shadow: 0 0 27px rgb(204, 204, 204) inset;
    transition: 500ms all ease;
    padding: 3px 3px 3px 3px;
        text-align: center;
    }


    </style>





    <style>
        /* Style The Dropdown Button */
.dropbtn {
        border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #4CAF50;
            color: white;
            padding: 16px;
    font-size: xx-small;
            cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
    position: relative;
    display: inline-block;
            top: 0px;
            left: 0px;
        }

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

/* Links inside the dropdown */
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
    display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>

  <style>
.text1 {
    border: 2px solid rgb(173, 204, 204);
    height: 31px;
    width: 400px;
    box-shadow: 0 0 27px rgb(204, 204, 204) inset;
    transition: 500ms all ease;
    padding: 3px 3px 3px 3px;
    text-align: left;
    }



.text2 {
    border: 2px solid rgb(173, 204, 204);
    height: 31px;
    width: 100%;
    box-shadow: 0 0 27px rgb(204, 204, 204) inset;
    transition: 500ms all ease;
    padding: 3px 3px 3px 3px;
        text-align: left;
    }


      .table-hover
      {
          text-align: left;
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
}
.form-style-3 label{
    display:block;
  <%--  margin-bottom: 10px;--%>;
        height: 34px;
        text-align: left;
    }
      </style>


          <style type="text/css">
              .form-style-9{
    max-width: 450px;
    background: #FAFAFA;
    padding: 20px;
    margin:20px auto;
    box-shadow: 1px 1px 25px rgba(0, 0, 0, 0.35);
    border-radius: 10px;
 
         height:197px;
         width: 541px;
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
        text-align: center;
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




 
      <script language="javascript" type="text/javascript">


          //       function isNumber(evt)
          //       
          //        {
          //           var iKeyCode = (evt.which) ? evt.which : evt.keyCode
          //           if (iKeyCode != 46 && iKeyCode > 31 && (iKeyCode < 48 || iKeyCode > 57))
          //               return false;

          //           return true;

          //       }


          function isNumber(evt, element) {

              var charCode = (evt.which) ? evt.which : event.keyCode

              if (
            (charCode != 45 || $(element).val().indexOf('-') != -1) &&      // “-” CHECK MINUS, AND ONLY ONE.
            (charCode != 46 || $(element).val().indexOf('.') != -1) &&      // “.” CHECK DOT, AND ONLY ONE.
            (charCode < 48 || charCode > 57))
                  return false;

              return true;
          }    

</script>
  <script type="text/javascript">
      $("[id*=chkHeader]").live("click", function () {
          var chkHeader = $(this);
          var grid = $(this).closest("table");
          $("input[type=checkbox]", grid).each(function () {
              if (chkHeader.is(":checked")) {
                  $(this).attr("checked", "checked");
                  $("td", $(this).closest("tr")).addClass("selected");
              } else {
                  $(this).removeAttr("checked");
                  $("td", $(this).closest("tr")).removeClass("selected");
              }
          });
      });
      $("[id*=chkRow]").live("click", function () {
          var grid = $(this).closest("table");
          var chkHeader = $("[id*=chkHeader]", grid);
          if (!$(this).is(":checked")) {
              $("td", $(this).closest("tr")).removeClass("selected");
              chkHeader.removeAttr("checked");
          } else {
              $("td", $(this).closest("tr")).addClass("selected");
              if ($("[id*=chkRow]", grid).length == $("[id*=chkRow]:checked", grid).length) {
                  chkHeader.attr("checked", "checked");
              }
          }
      });
    </script>

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
<form id="form1" >
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" EnablePageMethods="true" runat="server">
     </asp:ToolkitScriptManager>
<asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
<ProgressTemplate>
    <div class="modal">
        <div class="center">
         <%--   <img src="loading.gif" alt="loading" />--%>
         <asp:Image ID="Image1" ImageUrl="waiting.gif" AlternateText="Processing" runat="server" /> 
        </div>
    </div>
</ProgressTemplate>
</asp:UpdateProgress>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
    <div align="center">



    <table  align="center" width="100%" style="border: thin ridge #008080">
        <tr align="center">
            <td align="CENTER" style="text-align: right">

    
                From<asp:TextBox ID="txt_FromDate" runat="server" class="text1"
                                    Width="75px" ></asp:TextBox>
                         <asp:CalendarExtender ID="txt_FromDate_CalendarExtender" 
                    runat="server" TargetControlID="txt_FromDate"
                                PopupButtonID="txt_FromDate" Format="dd/MM/yyyy" 
                    PopupPosition="TopRight">
                        </asp:CalendarExtender>                   	
                
    
            </td>
            <td align="left" WIDTH="15%">

    
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">AM</asp:ListItem>
                    <asp:ListItem Value="2">PM</asp:ListItem>
                </asp:RadioButtonList>
                
    
            </td>
            <td align="left" WIDTH="40%">

    
                                <asp:Button ID="Button5" runat="server" CssClass="button" onclick="Button5_Click" 
                                    Text="Show" Font-Size="10px" Font-Bold="True" />
                            
                                <asp:Button ID="Button6" runat="server" CssClass="button" Font-Bold="True" 
                                           OnClientClick="return PrintPanel();" 
                          Font-Size="10px"  Text="Print" onclick="Button6_Click" />
                            
    
            </td>
        </tr>
        </table>

      <table width=100%  class="style2">
        
        
        </table>

           <center>
                      <asp:Panel id="pnlContents" align="center" runat = "server">
          <table class="style2" width=100%>
                                    <tr width=100%>
                                           <td align=center>
                                               <br />
                                               <asp:GridView ID="GridView1" runat="server" CssClass="gridcls" Font-Bold="True" 
                                                   ForeColor="White" onrowcreated="GridView1_RowCreated" 
                                                   onrowdatabound="GridView1_RowDataBound" Width="100%" Font-Size="Medium" 
                                                   AutoGenerateColumns="False" 
                                                   onselectedindexchanged="GridView1_SelectedIndexChanged">
                                                   <EditRowStyle BackColor="#999999" />
                                                   <FooterStyle BackColor="Gray" Font-Bold="False" ForeColor="White" />
                                                   <HeaderStyle BackColor="#f4f4f4" Font-Bold="False" Font-Italic="False" 
                                                       Font-Names="Raavi" Font-Size="Small" ForeColor="Black" />
                                                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                   <RowStyle BackColor="#ffffff" ForeColor="#333333" HorizontalAlign="Center" />
                                                   <AlternatingRowStyle HorizontalAlign="Center" />
                                                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                   <Columns>
                                                   

                                                    
									   <asp:TemplateField HeaderText="SNo.">
										   <ItemTemplate>
											   <%# Container.DataItemIndex + 1 %>
										   </ItemTemplate>
									   </asp:TemplateField>
								 


                                                   
                                                   
                                                       <asp:BoundField DataField="PlantCode" HeaderText="PlantCode" 
                                                           SortExpression="PlantCode" />
                                                       <asp:BoundField DataField="PlantName" HeaderText="PlantName" 
                                                           SortExpression="PlantName" />
                                                       <asp:BoundField DataField="TotMilkkg" HeaderText="TotMkg" 
                                                           SortExpression="TotMilkkg" />
                                                       <asp:BoundField DataField="Totsample" HeaderText="Totsample" 
                                                           SortExpression="Totsample" />
                                                       <asp:BoundField DataField="0-5" HeaderText="0-5" SortExpression="0-5" />
                                                       <asp:BoundField DataField="5-10" HeaderText="5-10" SortExpression="5-10" />
                                                       <asp:BoundField DataField="10-15" HeaderText="10-15"   SortExpression="10-15" />
                                                       <asp:BoundField DataField="15-20" HeaderText="15-20" SortExpression="15-20" />
                                                       <asp:BoundField DataField="20-30" HeaderText="20-30"  SortExpression="20-30" />
                                                       <asp:BoundField DataField="30-50" HeaderText="30-50"  SortExpression="30-50" />
                                                       <asp:BoundField DataField="50-75" HeaderText="50-75" SortExpression="50-75" />
                                                       <asp:BoundField DataField="75-100" HeaderText="75-100" SortExpression="75-100" />
                                                       <asp:BoundField DataField="100-200" HeaderText="100-200" SortExpression="100-200" />
                                                       <asp:BoundField DataField="200-300" HeaderText="200-300"   SortExpression="200-300" />
                                                       <asp:BoundField DataField="300-400" HeaderText="300-400"   SortExpression="300-400" />
                                                       <asp:BoundField DataField="400-500" HeaderText="400-500"    SortExpression="400-500" />
                                                       <asp:BoundField DataField="500-1000" HeaderText="500-1000" SortExpression="500-1000" />
                                                       <asp:CommandField ShowSelectButton="True" />
								 


                                                   
                                                   
                                                   </Columns>
                                               </asp:GridView>
                                               <br />
                                               <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                   CssClass="gridcls" Font-Bold="True" Font-Size="Medium" ForeColor="White" 
                                                   onrowdatabound="GridView2_RowDataBound" Width="30%" 
                                                   onrowcreated="GridView2_RowCreated" 
                                                   onselectedindexchanged="GridView2_SelectedIndexChanged">
                                                   <EditRowStyle BackColor="#999999" />
                                                   <FooterStyle BackColor="Gray" Font-Bold="False" ForeColor="White" />
                                                   <HeaderStyle BackColor="#f4f4f4" Font-Bold="False" Font-Italic="False" 
                                                       Font-Names="Raavi" Font-Size="Small" ForeColor="Black" />
                                                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                   <RowStyle BackColor="#ffffff" ForeColor="#333333" HorizontalAlign="Center" />
                                                   <AlternatingRowStyle HorizontalAlign="Center" />
                                                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                   <Columns>
                                                       <asp:TemplateField HeaderText="SNo.">
                                                           <ItemTemplate>
                                                               <%# Container.DataItemIndex + 1 %>
                                                           </ItemTemplate>
                                                       </asp:TemplateField>
                                                       <asp:BoundField DataField="Milkkg" HeaderText="Milkkg" 
                                                           SortExpression="Milkkg" />
                                                       <asp:BoundField DataField="MilkRange" HeaderText="MilkRange" 
                                                           SortExpression="MilkRange" />
                                                       <asp:BoundField DataField="TotSample" HeaderText="TotSample" 
                                                           SortExpression="TotSample" />
                                                       <asp:CommandField ShowSelectButton="True" />
                                                   </Columns>
                                               </asp:GridView>
                                               <br />
                                               <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                                   CssClass="gridcls" Font-Bold="True" Font-Size="Medium" ForeColor="White" 
                                                   onrowcreated="GridView3_RowCreated" onrowdatabound="GridView3_RowDataBound" 
                                                   Width="30%">
                                                   <EditRowStyle BackColor="#999999" />
                                                   <FooterStyle BackColor="Gray" Font-Bold="False" ForeColor="White" />
                                                   <HeaderStyle BackColor="#f4f4f4" Font-Bold="False" Font-Italic="False" 
                                                       Font-Names="Raavi" Font-Size="Small" ForeColor="Black" />
                                                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                   <RowStyle BackColor="#ffffff" ForeColor="#333333" HorizontalAlign="Center" />
                                                   <AlternatingRowStyle HorizontalAlign="Center" />
                                                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                   <Columns>
                                                       <asp:TemplateField HeaderText="SNo.">
                                                           <ItemTemplate>
                                                               <%# Container.DataItemIndex + 1 %>
                                                           </ItemTemplate>
                                                       </asp:TemplateField>
                                                       <asp:BoundField DataField="Agent_Id" HeaderText="AgentId" 
                                                           SortExpression="Agent_Id" />
                                                       <asp:BoundField DataField="Milk_kg" HeaderText="Milk_kg" 
                                                           SortExpression="Milk_kg" />
                                                       <asp:BoundField DataField="Fat" HeaderText="Fat" SortExpression="Fat" />
                                                       <asp:BoundField DataField="Snf" HeaderText="Snf" SortExpression="Snf" />
                                                   </Columns>
                                               </asp:GridView>
                                               <br />
                                            </td>
                                           
                                        
                                    </tr>
                                    <tr align="center"  class="text2">
                                        <td width=100% align="center">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                                </asp:Panel>
    </center>
            <br />
            <br />  
            
            
        </div>
</ContentTemplate>


<Triggers>
    <asp:PostBackTrigger ControlID="Button6" />
</Triggers>
</asp:UpdatePanel>
  
    </form>
            
            
                          
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
