<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="center.aspx.cs" Inherits="DTcms.Web.admin.center" %>

<%@ OutputCache Duration="1" VaryByParam="none" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <title>设备列表</title>
    <link href="../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
    <link href="skin/default/style.css" rel="stylesheet" type="text/css" />
    <link href="../css/pagination.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" charset="utf-8" src="../scripts/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../scripts/artdialog/dialog-plus-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/laymain.js"></script>
    <script type="text/javascript" charset="utf-8" src="js/common.js"></script>
    <script src="../DatePicker/WdatePicker.js"></script>
</head>

<body class="mainbody">
    <form id="form1" runat="server">
        <!--导航栏-->
        <div class="location">
            <a href="javascript:history.back(-1);" class="back"><i></i><span>返回上一页</span></a>
            <a href="../center.aspx" class="home"><i></i><span>首页</span></a>
            <i class="arrow"></i>
            <span>设备列表</span>
        </div>
        <!--/导航栏-->

        <!--工具栏-->
        <div id="floatHead" class="toolbar-wrap">
            <div class="toolbar">
                <div class="box-wrap">
                    <a class="menu-btn"></a>
                    <div class="l-list">
                        <ul class="icon-list">
                        </ul>
                        <div class="menu-list">
                            <div class="rule-single-select">
                                <asp:DropDownList ID="ddlCounty" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCounty_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="menu-list">
                            <div class="rule-single-select">
                                <asp:DropDownList ID="ddlArea" runat="server">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="menu-list">
                            <div class="rule-single-select">
                                <asp:DropDownList ID="ddlPoint" runat="server">
                                    <asp:ListItem>全部点位</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div>
                            &nbsp;&nbsp;设备编号：<asp:TextBox ID="txtMachineId" runat="server" Width="120" CssClass="input"></asp:TextBox>
                        </div>
                    </div>
                    <div class="r-list">
                        <asp:TextBox ID="txtKeywords" runat="server" CssClass="keyword" />
                        <asp:LinkButton ID="lbtnSearch" runat="server" CssClass="btn-search" OnClick="lbtnSearch_Click">查询</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
        <!--/工具栏-->

        <!--列表-->
        <div class="table-container">
            <table border="0" cellspacing="0" cellpadding="0" class="ltable" style="width: 900px;">
                <tr>
                    <td colspan="3" align="center" style="font-weight: bold; background-color: #808080; color: white;">南明区-花果园-point1-工商营业执照打证机</td>
                    <td style="padding-left: 10px; text-align: right;">运行状态：</td>
                    <td><span style="color: green;">正常</span></td>
                    <td></td>
                </tr>
                <tr>
                    <td align="center">设备编号：</td>
                    <td colspan="2">520102_1_1_DZJ_100</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td align="center">运维负责人：</td>
                    <td>张三</td>
                    <td align="center">联系电话：</td>
                    <td>13333333333</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td width="120" align="center">主机IP：</td>
                    <td width="200">192.168.1.100</td>
                    <td width="120" align="center">打印机IP：</td>
                    <td width="200">192.168.1.101</td>
                    <td width="200"></td>
                    <td></td>
                </tr>
                <tr>
                    <td align="center">剩余纸张A3：</td>
                    <td style="color: red">5张</td>
                    <td align="center">剩余纸张A4：</td>
                    <td>25张</td>
                    <td>剩余墨粉：85%</td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="5" style="padding-top: 10px; padding-left: 10px; padding-bottom: 10px;">
                        <p>最近5条业务记录：</p>
                        <p>贵州xxx有限公司 打印人：刘萌萌 打印时间：2019-1-1 12:00:00&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>贵州xxx有限公司 打印人：刘萌萌 打印时间：2019-1-1 12:00:00&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>贵州xxx有限公司 打印人：刘萌萌 打印时间：2019-1-1 12:00:00&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>贵州xxx有限公司 打印人：刘萌萌 打印时间：2019-1-1 12:00:00&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>贵州xxx有限公司 打印人：刘萌萌 打印时间：2019-1-1 12:00:00&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="5" style="padding-top: 10px; padding-left: 10px; padding-bottom: 10px;">
                        <p>最近5条异常记录：</p>
                        <p>级别：错误 时间：2019-1-5 12:00:00 异常内容：打印机卡纸&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>级别：警告 时间：2019-1-4 12:00:00 异常内容：打印机缺粉&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>级别：警告 时间：2019-1-3 12:00:00 异常内容：xxxxxxxxx&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>级别：警告 时间：2019-1-3 12:00:00 异常内容：xxxxxxxxx&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>级别：警告 时间：2019-1-3 12:00:00 异常内容：xxxxxxxxx&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                    </td>
                    <td></td>
                </tr>
            </table>
            <table border="0" cellspacing="0" cellpadding="0" class="ltable" style="width: 900px; margin-top: 10px;">
                <tr>
                    <td colspan="3" align="center" style="font-weight: bold; background-color: #808080; color: white;">南明区-花果园-point1-工商营业执照打证机2</td>
                    <td style="padding-left: 10px; text-align: right;">运行状态：</td>
                    <td><span style="color: red;">异常</span></td>
                    <td></td>
                </tr>
                <tr>
                    <td align="center">设备编号：</td>
                    <td colspan="2">520102_1_1_DZJ_100</td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td align="center">运维负责人：</td>
                    <td>张三</td>
                    <td align="center">联系电话：</td>
                    <td>13333333333</td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td width="120" align="center">主机IP：</td>
                    <td width="200">192.168.1.101</td>
                    <td width="120" align="center">打印机IP：</td>
                    <td width="200">192.168.1.101</td>
                    <td width="200"></td>
                    <td></td>
                </tr>
                <tr>
                    <td align="center">剩余纸张A3：</td>
                    <td>15张</td>
                    <td align="center">剩余纸张A4：</td>
                    <td>25张</td>
                    <td>剩余墨粉：85%</td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="5" style="padding-top: 10px; padding-left: 10px; padding-bottom: 10px;">
                        <p>最近5条业务记录：</p>
                        <p>贵州xxx有限公司 打印人：刘萌萌 打印时间：2019-1-1 12:00:00&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>贵州xxx有限公司 打印人：刘萌萌 打印时间：2019-1-1 12:00:00&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>贵州xxx有限公司 打印人：刘萌萌 打印时间：2019-1-1 12:00:00&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>贵州xxx有限公司 打印人：刘萌萌 打印时间：2019-1-1 12:00:00&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>贵州xxx有限公司 打印人：刘萌萌 打印时间：2019-1-1 12:00:00&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="5" style="padding-top: 10px; padding-left: 10px; padding-bottom: 10px;">
                        <p>最近5条异常记录：</p>
                        <p>级别：错误 时间：2019-1-5 12:00:00 异常内容：打印机卡纸&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>级别：警告 时间：2019-1-4 12:00:00 异常内容：打印机缺粉&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>级别：警告 时间：2019-1-3 12:00:00 异常内容：xxxxxxxxx&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>级别：警告 时间：2019-1-3 12:00:00 异常内容：xxxxxxxxx&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                        <p>级别：警告 时间：2019-1-3 12:00:00 异常内容：xxxxxxxxx&nbsp;&nbsp;<a href="#" style="color: blue;">查看详细</a></p>
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
        <div>
            <asp:Label ID="lblTotalCount" runat="server" Text="" Visible="false"></asp:Label>
        </div>
        <!--/列表-->

        <!--内容底部-->
        <div class="line20"></div>

        <!--/内容底部-->

    </form>
</body>
</html>
