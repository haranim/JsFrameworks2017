<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LocalAutosuggest.aspx.cs" Inherits="AutocompleteTextbox._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Auto Suggest Demo</title>
    <link href="CSS/styles.css" rel="stylesheet" type="text/css" />
    <script src="Jquery/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script src="Jquery/jquery.autocomplete.js" type="text/javascript"></script>
    <script type="text/javascri me pt">
        var a2;

        function InitMonths() {
            a2.setOptions({ lookup: 'January,February,March,April,May,June,July,August,September,October,November,December'.split(',') });
        }

        function InitWeekdays() {
            a2.setOptions({ lookup: 'Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday'.split(',') });
        }

        $(document).ready(function() {

            a2 = $('#months').autocomplete({
                width: 300,
                delimiter: /(,|;)\s*/,
                lookup: 'January,February,March,April,May,June,July,August,September,October,November,December'.split(',')
            });

        });
    </script>
  
</head>
<body>
  <p>Local(no ajax) autosuggest sample (start typing month name):</p>
      <form class="form" action="default.aspx">
        <input type="text" name="q" id="months" class="textbox" />
        <div style="padding:5px;">
         Suggest: 
         <label><input type="radio" name="Suggest" value="Month" onclick="InitMonths();" style="vertical-align:middle;" checked="checked" /> Month</label> &nbsp;&nbsp;
         <label><input type="radio" name="Suggest" value="Weekday" onclick="InitWeekdays();" style="vertical-align:middle;" /> Weekday</label>
        </div>
      </form>
      <br />
      <br />
   
    <a href="AjaxAutosuggest.aspx">Go to AutoSuggest Demo implemented through Ajax</a>
</body>
</html>
