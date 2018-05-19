<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="gridView" runat="server" ClientInstanceName="gvResults" Width="550px"
                AutoGenerateColumns="True" KeyFieldName="OrderID" DataSourceID="AccessDataSource1">
            </dx:ASPxGridView>
            <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/nwind.mdb"
                SelectCommand="SELECT * FROM [Orders]"></asp:AccessDataSource>
        </div>
    </form>

    <script type="text/javascript">
        window.__OriginalDXUpdateRowCellsHandler = ASPxClientTableFixedColumnsHelper.prototype.ChangeCellsVisibility;
        ASPxClientTableFixedColumnsHelper.prototype.ChangeCellsVisibility = function(row, startIndex, endIndex, display) {
            if((row.cells.length == 0) || (row.cells[0].getAttribute("ci") == null))
                window.__OriginalDXUpdateRowCellsHandler.call(this, row, startIndex, endIndex - 1, display); // base call
            else {
                //custom processing
                for(var i = startIndex; i <= endIndex; i++) {
                    var cell = FindCellWithColumnIndex(row, i);
                    if(cell != null)
                        cell.style.display = display;
                }
            }
        };

        function FindCellWithColumnIndex(row, colIndex) {
            for(var i = 0; i < row.cells.length; i++) {
                if(row.cells[i].getAttribute("ci") == colIndex)
                    return row.cells[i];
            }
            return null;
        }
    </script>

</body>
</html>