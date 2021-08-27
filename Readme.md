<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128548479/14.2.6%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T228416)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx)
* [Default.aspx.cs](./CS/Default.aspx.cs)
<!-- default file list end -->
# How to collapse/expand focused nodes on client side
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t228416/)**
<!-- run online end -->


<p>This example demonstrates how to use the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeListScriptsASPxClientTreeList_GetFocusedNodeKeytopic">ASPxClientTreeList.GetFocusedNodeKey</a>  method to expand and collapse tree nodes based on the state of a node (collapsed or expanded). You can get the node state by calling the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeListScriptsASPxClientTreeList_GetNodeStatetopic">ASPxClientTreeList.GetNodeState</a> method in the client-side <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebASPxTreeListASPxTreeList_FocusedNodeChangedtopic">ASPxTreeList.FocusedNodeChanged</a> event.</p>
<p>Demo limitation: if you close the topmost parent node and do not have other nodes except that one, you will have to expand this node by clicking the <a href="https://documentation.devexpress.com/#AspNet/CustomDocument3950">Expand Button</a>.</p>

<br/>


