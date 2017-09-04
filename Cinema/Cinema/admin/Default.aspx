<%@ Page Title="" Language="C#" MasterPageFile="~/adminlayout.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Cinema.admin.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <title>Admin Panel | Trang đầu</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="col-md-8">
        <div class="card">
            <h4 class="card-header">Thông báo mới</h4>
            <div class="card-body">
                <h4 class="card-title">Special title treatment</h4>
                <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                <a href="#" class="btn btn-primary">Go somewhere</a>
            </div>
        </div>
    </div>
    <div class="col-md-4">
        <div class="card text-white bg-success mb-3" style="max-width: 20rem;">
            <div class="card-header dbcard-header">PHÒNG</div>
            <div class="card-body dbcard-body">
                <div class="row">
                    <div class="col-md-6 card-number">
                        100
                    </div>
                    <div class="col-md-6 card-icon">
                        <i class="fa fa-folder" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="card text-white bg-primary mb-3" style="max-width: 20rem;">
            <div class="card-header dbcard-header">LỊCH CHIẾU</div>
            <div class="card-body dbcard-body">
                <div class="row">
                    <div class="col-md-6 card-number">
                        100
                    </div>
                    <div class="col-md-6 card-icon">
                        <i class="fa fa-calendar-o" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="card text-white bg-warning mb-3" style="max-width: 20rem;">
            <div class="card-header dbcard-header">PHIM</div>
            <div class="card-body dbcard-body">
                <div class="row">
                    <div class="col-md-6 card-number">
                        100
                    </div>
                    <div class="col-md-6 card-icon">
                        <i class="fa fa-film" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>
        <div class="card text-white bg-danger mb-3" style="max-width: 20rem;">
            <div class="card-header dbcard-header">TÀI KHOẢN</div>
            <div class="card-body dbcard-body">
                <div class="row">
                    <div class="col-md-6 card-number">
                        100
                    </div>
                    <div class="col-md-6 card-icon">
                        <i class="fa fa-users" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
