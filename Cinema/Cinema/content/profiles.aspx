<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="profiles.aspx.cs" Inherits="Cinema.content.profiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="row">
        <div class="col-12">
            <div class="card cgv-card">
                <div class="card-header cgv-card-header">
                    <i class="fa fa-sign-in" aria-hidden="true" style="margin-right: 11px;"></i>Thông tin cá nhân
                </div>
                <div class="card-body cgv-card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="img-thumbnail profile-avatar">
                                <img id="info_avatar" src="/images/avatar/duongle.png" style="max-width: 100%;">
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-sm-4">
                                    <label>Họ và tên:</label>
                                </div>
                                <div class="col-sm-8">
                                    <label id="info_fullname" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <label>Tên tài khoản:</label>
                                </div>
                                <div class="col-sm-8">
                                    <label id="info_username" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <label>Email:</label>
                                </div>
                                <div class="col-sm-8">
                                    <label id="info_email" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <label>Mật khẩu:</label>
                                </div>
                                <div class="col-sm-8">
                                    <label id="info_password" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <label>Giới tính:</label>
                                </div>
                                <div class="col-sm-8">
                                    <label id="info_sex" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <label>CMND:</label>
                                </div>
                                <div class="col-sm-8">
                                    <label id="info_cmnd" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <label>Số điện thoại:</label>
                                </div>
                                <div class="col-sm-8">
                                    <label id="info_tel" runat="server"></label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <label>Điểm tích lũy:</label>
                                </div>
                                <div class="col-sm-8">
                                    <label id="info_point" runat="server"></label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>

