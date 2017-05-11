<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WaterMark._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Search</title>

    <script src="JQuery/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script src="JQuery/jquery-ui-1.8.13.custom.min.js" type="text/javascript"></script>

    <script src="JQuery/jquery.ui.autocomplete.js" type="text/javascript"></script>
    <link href="CSS/jquery-ui-1.8.13.custom.css" rel="stylesheet" type="text/css" />
    <link href="CustomCSS/Style1.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">

        $(document).ready(function() {
            $("#dialog-message").hide();

            $("#txtSearch").addClass("watermarkOn").val("Type here..")
            .focus(function() {
                if ($(this).val() == "Type here..") {
                    $(this).removeClass("watermarkOn").val("");
                }
            }).blur(function() {
                if ($(this).val() == "") {
                    $(this).val("Type here..").addClass("watermarkOn");
                }
            });



            $("#txtSearch").autocomplete({
                minLength: 2,
                source: function(request, response) {
                    $.ajax({
                        type: "POST",
                        url: "Default.aspx/GetCompletionList",
                        data: "{'prefixText': '" + $('#txtSearch').val() + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function(data) {
                            response(data.d);
                        },
                        failure: function(errMsg) {
                            alert(errMsg);
                        }
                    });
                }
            });

            $("#AdvancedSearch").click(function() {
                $("#dialog-message").dialog({
                    modal: true,
                    buttons: {
                        "Ok": function() {
                            $(this).dialog("close");
                        }
                    }
                });

            });


//            $("#txtSearch").click(function() {
//            $("#dialog-message").dialog({
//                modal: true,
//                buttons: {
//                    "Ok": function() {
//                        $(this).dialog("close");
//                    }
//                }
//            });

//            });






        }); 

    
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
    <table>
    <tr id="header" class="ui-widget-header"><td  colspan="2"></td>
    
    </tr>
    <tr id="content">
        <td id="ColumnA" class="ui-widget-content" valign="top">
            <table width="100%">
                <tr  class="ui-widget-header">
                <td>Categories</td>
                </tr>
                <tr style="height:110px;">
                    <td align="center" valign="middle">
                    <ul>
                        <li>List(1)</li>
                        <li>List(2)</li>
                        <li>List(3)</li>
                        <li>List(4)</li>
                    </ul>
                    </td>
                 </tr>
            </table>
             <table width="100%">
                <tr  class="ui-widget-header">
                <td>Categories</td>
                </tr>
                <tr style="height:110px;">
                    <td align="center" valign="middle">
                    <ul>
                        <li>List(1)</li>
                        <li>List(2)</li>
                        <li>List(3)</li>
                        <li>List(4)</li>
                    </ul>
                    </td>
                 </tr>
            </table>
             <table width="100%">
                <tr  class="ui-widget-header">
                <td>Categories</td>
                </tr>
                <tr style="height:110px;">
                    <td align="center" valign="middle">
                    <ul>
                        <li>List(1)</li>
                        <li>List(2)</li>
                        <li>List(3)</li>
                        <li>List(4)</li>
                    </ul>
                    </td>
                 </tr>
            </table>
        </td>
        <td id="ColumnB" class="ui-widget-content">
         <table >
                <tr>
                    <td align="left">
                      <%--  <img src="Images/FA_home_01.gif" alt="error" 
                            style="height: 61px; width: 423px" />--%>
                    </td>
                </tr>
                <tr>
                    <td>                  
                        <input type="text" id="txtSearch" style="height:25px; width:434px; font-size:large;" value="Type here.." /> 
                        <asp:Button ID="btnSearch" runat="server" Height="30px"  CssClass="ui-state-default" Text="Search" />
                       
                    </td>
                    <td>
                     <div title=".ui-icon-search" id="AdvancedSearch" class="ui-state-default ui-corner-all" style="width:19px; "><span class="ui-icon ui-icon-search"></span></div>
                    </td>
                </tr> 
                <tr>
                <td  style="font-size:0.8em;">
                    <table id="dialog-message" title="Advanced Search">
	                   <tr>
	                    <td style="padding:5px 5px 5px 5px;">
	                    Case sensitive &nbsp;<input type="radio" name="yesno" value="Yes">Yes</input> <input type="radio" name="yesno" value="No">No</input>
	                    </td>
	                   </tr>
	                   <tr  >
	                   <td style="padding:5px 5px 5px 5px;">
	                   Region&nbsp; <input type="checkbox" >US</input>&nbsp; <input type="checkbox"  >UK</input>
	                   </td>
	                   </tr>
                    </table>
                </td>
                </tr>  
          </table>   
        </td>
    
    </tr>
    </table>
    </form>
</body>
</html>
