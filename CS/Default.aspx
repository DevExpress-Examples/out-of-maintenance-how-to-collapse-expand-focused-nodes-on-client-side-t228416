<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>
<%@ Register assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to use collapse/expand focused nodes on client side</title>
    <script>
        function OnFocusedNodeChange(s, e) {
            var nodeKey = s.GetFocusedNodeKey();
            var nodeState = s.GetNodeState(nodeKey);

            if (nodeState === "Collapsed")
                s.ExpandNode(nodeKey);
            else if (nodeState === "Expanded")
                s.CollapseNode(nodeKey);
        };
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxTreeList ID="TreeList"
            runat="server"
            AutoGenerateColumns="False" 
            DataSourceID="ProductsDataSource" 
            KeyFieldName="EmployeeID" 
            ParentFieldName="ReportsTo"
            Width="50%">
            <Columns>
                <dx:TreeListTextColumn FieldName="EmployeeID" VisibleIndex="0" ReadOnly="true"></dx:TreeListTextColumn>
                <dx:TreeListTextColumn FieldName="LastName" VisibleIndex="1"></dx:TreeListTextColumn>
                <dx:TreeListTextColumn FieldName="FirstName" VisibleIndex="2"></dx:TreeListTextColumn>
            </Columns>
            <SettingsBehavior AllowFocusedNode="true" FocusNodeOnLoad="false" />
            <ClientSideEvents FocusedNodeChanged="OnFocusedNodeChange" />
        </dx:ASPxTreeList>
        <br />

        <asp:AccessDataSource ID="ProductsDataSource" runat="server"
            DataFile="~/App_Data/nwind.mdb"
            SelectCommand="SELECT [EmployeeID], [LastName], [FirstName], [ReportsTo] FROM [Employees]">
        </asp:AccessDataSource>
    </form>
</body>
</html>
