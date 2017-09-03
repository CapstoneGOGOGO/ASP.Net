<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Cinema.content.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="Server">
    <title>CGV | Đăng nhập</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <form runat="server" id="formLogin">
        <div class="row justify-content-md-center">
            <div class="col-md-6">
                <div class="card cgv-card">
                    <div class="card-header cgv-card-header">
                        <i class="fa fa-sign-in" aria-hidden="true" style="margin-right: 11px;"></i>Đăng nhập thành viên CGV
                    </div>
                    <div class="card-body cgv-card-body">
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon" style="width: 41px; padding-left: 14px;"><i class="fa fa-user" aria-hidden="true"></i></span>
                                <input runat="server" id="userName" type="text" class="form-control" placeholder="Tên đăng nhập" aria-label="Username" aria-describedby="basic-addon1" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-key" aria-hidden="true"></i></span>
                                <input runat="server" id="password" type="password" placeholder="••••••••••••" class="form-control" />
                            </div>
                        </div>
                          <asp:Button ID="login" runat="server" Text="Đăng nhập" type="submit" class="btn btn-danger btn-block" OnClick="login_Click" />
                        <div id="alert" runat="server" role="alert">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
