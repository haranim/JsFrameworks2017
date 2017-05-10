<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AjaxAutosuggest.aspx.cs" Inherits="AutocompleteTextbox.AjaxAutosuggest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Ajax Auto suggest</title>
      <%--  for Ajax autosuggest--%>
    <link href="CSS/jquery-ui-1.8.10.custom.css" rel="stylesheet" type="text/css" />
    <script src="Jquery/jquery-1.4.4.min.js" type="text/javascript"></script>
    <script src="Jquery/jquery-ui-1.8.10.custom.min.js" type="text/javascript"></script>
     <script language="javascript" type="text/javascript">
         var a2;
         $(document).ready(function() {
                 $("#Text1").keyup(function() {
                     $.ajax({
                         type: "POST",
                         url: "GetList.asmx/GetValues",
                         data: "{'prefixText':'" + $(this).val() + "'}",
                         contentType: "application/json; charset=utf-8",
                         dataType: "json",
                         success: function(json) {
                             $("#Text1").autocomplete({
                                 source: json.d
                             });
                         }
                     });
                 });

         });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding:10px;">Ajax autosuggest sample (start typing month name):</div> 
       <div style="padding:10px;">
        <input id="Text1" type="text" />
         </div>
         <%-- <div style="padding:10px;"><label><input type="checkbox" id="checkbox" /> Disable Autocomplete</label></div>--%>
         <br />
         <br />
    <a href="LocalAutosuggest.aspx">Go to AutoSuggest Demo implemented Locally</a>
    </form>
</body>
</html>
