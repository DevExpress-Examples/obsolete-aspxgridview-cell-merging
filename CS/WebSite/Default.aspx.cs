using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web.ASPxGridView;
using System.Collections.Generic;
using System.Drawing;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e)  {
        if (!(IsPostBack || IsCallback))
            gridView.DataBind();

        new ASPxGridViewCellMerger(gridView);

        gridView.Columns[0].FixedStyle = GridViewColumnFixedStyle.Left;
        gridView.Columns[1].FixedStyle = GridViewColumnFixedStyle.Left;

        gridView.Columns[0].CellStyle.BackColor = Color.FromArgb(0xEE, 0xEE, 0xEE);
        gridView.Columns[1].CellStyle.BackColor = Color.FromArgb(0xEE, 0xEE, 0xEE);

        gridView.Settings.ShowHorizontalScrollBar = true;
    }
}

