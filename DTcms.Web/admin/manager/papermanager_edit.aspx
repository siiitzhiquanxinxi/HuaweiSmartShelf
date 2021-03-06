﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="papermanager_edit.aspx.cs" Inherits="DTcms.Web.admin.manager.papermanager_edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>执照管理员明细</title>
    <link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
    <link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
    <link href="../../css/pagination.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
    <script type="text/javascript" src="../../scripts/jquery/jquery.lazyload.min.js"></script>
    <script type="text/javascript" src="../../scripts/artdialog/dialog-plus-min.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
    <script type="text/javascript" charset="utf-8" src="../js/common.js"></script>

</head>
<body class="mainbody">
    <form id="form1" runat="server">
        <!--导航栏-->
        <div class="location">
            <a href="javascript:;" class="home"><i></i><span>系统分类</span></a>
        </div>
        <div class="line10">
        </div>
        <!--/导航栏-->
        <!--内容-->
        <asp:HiddenField ID="hidId" runat="server" Value="0" />

        <div class="content-tab-wrap">
            <div id="floatHead" class="content-tab">
                <div class="content-tab-ul-wrap">
                    <ul>
                        <li><a href="javascript:;" onclick="tabs(this);" class="selected">
                            <asp:Literal ID="litNowPosition2" runat="server" Text="执照管理员明细"></asp:Literal></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="tab-content">
            <dl>
                <dt>行政区：</dt>
                <dd>
                    <div class="menu-list">
                        <div class="rule-single-select">
                            <asp:DropDownList ID="ddlCounty" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCounty_SelectedIndexChanged">
                                </asp:DropDownList>
                        </div>
                    </div>
                    <span class="Validform_checktip">*</span>
                </dd>
            </dl>
            <dl>
                <dt>区域：</dt>
                <dd>
                    <div class="menu-list">
                        <div class="rule-single-select">
                            
                                <asp:DropDownList ID="ddlArea" runat="server">
                                </asp:DropDownList>
                        </div>
                    </div>
                    <span class="Validform_checktip">*</span>
                </dd>
            </dl>
            <dl>
                <dt>姓名：</dt>
                <dd>
                    <asp:TextBox ID="txtName" runat="server" CssClass="input normal" sucmsg=" "
                        minlength="1" MaxLength="100"></asp:TextBox>
                    <span class="Validform_checktip">*</span>
                </dd>
            </dl>
            <dl>
                <dt>身份证号码：</dt>
                <dd>
                    <asp:TextBox ID="txtIDCatd" runat="server" CssClass="input normal" sucmsg=" "
                        minlength="1" MaxLength="100"></asp:TextBox>
                    <span class="Validform_checktip">*</span>
                </dd>
            </dl>
        </div>
        <!--/内容-->
        <!--工具栏-->
        <div class="page-footer" runat="server" id="div_gongju">
            <div class="btn-list">
                <asp:Button ID="btnSubmit" runat="server" Text="保存" CssClass="btn"
                    OnClick="btnSubmit_Click" />
                <input name="btnReturn" type="button" value="返回上一页" class="btn yellow" onclick="javascript: history.back(-1);" />
                <asp:Label ID="lblError" runat="server" Text="" Style="color: Red;"></asp:Label>
            </div>
            <div class="clear">
            </div>
        </div>
        <!--/工具栏-->
    </form>
</body>
</html>

