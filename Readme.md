<!-- default file list -->
*Files to look at*:

* [CellMerger.cs](./CS/WebSite/App_Code/CellMerger.cs) (VB: [CellMerger.vb](./VB/WebSite/App_Code/CellMerger.vb))
* [Default.aspx](./CS/WebSite/Default.aspx) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
* [Default.aspx.cs](./CS/WebSite/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebSite/Default.aspx.vb))
<!-- default file list end -->
# OBSOLETE - ASPxGridView - Cell Merging


<p><strong>UPDATED:<br><br></strong>Starting with version v2016 vol 1 (v16.1), this functionality is available out of the box. Set the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxGridViewBehaviorSettings_AllowCellMergetopic">ASPxGridView.SettingsBehavior.AllowCellMerge</a> / <strong>GridViewDataColumn.Settings.AllowCellMerge</strong> property to "true" to activate it. Please refer to the <a href="https://community.devexpress.com/blogs/aspnet/archive/2016/06/02/asp-net-grid-cell-bands-cell-merging-and-cell-focus-coming-soon-in-v16-1.aspx">ASP.NET Grid - Cell Bands, Cell Merging, and Cell Focus - (Coming soon in v16.1)</a> blog post and the <a href="http://demos.devexpress.com/ASPxGridViewDemos/Rows/CellMerging.aspx">Cell Merging</a> demo for more information.<br>If you have version v16.1+ available, consider using the built-in functionality instead of the approach detailed below.<br><br><br><strong>For Older Versions:<br><br></strong>The example shows how to implement the cell merge feature for the ASPxGridView control.<br> You can use the helper class that will perform cell merging for the grouped grid as well. <br> Please keep in mind that functionality such as row selection, in-place editing and focused row may not work as expected which is understandable.</p>


<h3>Description</h3>

<p>In the <a data-ticket="B145940">ASPxGridView - Cell merging and columns fixing</a> report there is a solution kindly provided. It allows using the <a href="http://documentation.devexpress.com/#AspNet/CustomDocument5737">Fixed Columns</a> feature, when cells are merged vertically. The main idea consists on two parts:<br />
1. a unique ID is applied to each data cell;<br />
2. the private grid&#39;s method (which is responsible for column&#39;s hiding) is redefined. There, we determine what cells should be (or not) hidden.</p>

<br/>


