<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeFile="dangky.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="Server">
    <title>CGV | Đăng ký</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
        <div class="card cgv-card">
            <div class="card-header cgv-card-header">
                <i class="fa fa-pencil-square-o" aria-hidden="true" style="margin-right: 11px;"></i>Đăng ký thành viên CGV
            </div>
            <div class="card-body cgv-card-body">
                <form>
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Tên khách hàng *</label>
                                <input type="text" class="form-control" placeholder="Điền tên..." />
                            </div>
                            <div class="form-group">
                                <label>Ngày sinh</label>
                                <div class="row">
                                   <input type="date" class="form-control" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Giới tính</label>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="custom-control custom-radio">
                                            <input id="male" name="sex" type="radio" class="custom-control-input">
                                            <span class="custom-control-indicator"></span>
                                            <span class="custom-control-description">Nam</span>
                                        </label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="custom-control custom-radio">
                                            <input id="female" name="sex" type="radio" class="custom-control-input">
                                            <span class="custom-control-indicator"></span>
                                            <span class="custom-control-description">Nữ</span>
                                        </label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="custom-control custom-radio">
                                            <input id="other" name="sex" type="radio" class="custom-control-input" checked="checked">
                                            <span class="custom-control-indicator"></span>
                                            <span class="custom-control-description">Buê Đuê</span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ *</label>
                                <input type="text" class="form-control" placeholder="Nhập địa chỉ..." />
                            </div>
                            <div class="form-group">
                                <label>Quận / Huyện *</label>
                                <input type="text" class="form-control" placeholder="Nhập quận (huyện)..." />
                            </div>
                            <div class="form-group">
                                <label>Thành phố *</label>
                                <input type="text" class="form-control" placeholder="Nhập thành phố..." />
                                <small class="form-text text-muted">* Mục bắt buộc.</small>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label>Số điện thoại *</label>
                                <input type="text" class="form-control" placeholder="Nhập số điện thoại..." />
                            </div>
                            <div class="form-group">
                                <label>Số CMND *</label>
                                <input type="text" class="form-control" placeholder="Nhập số CMND..." />
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ Email *</label>
                                <input type="text" class="form-control" placeholder="Nhập địa chỉ Email..." />
                            </div>
                            <div class="form-group">
                                <label>Tên tài khoản *</label>
                                <input type="text" class="form-control" placeholder="Nhập tên tài khoản..." />
                            </div>
                            <div class="form-group">
                                <label>Mật khẩu *</label>
                                <input type="password" class="form-control" placeholder="Nhập mật khẩu..." />
                            </div>
                            <div class="form-group">
                                <label>Nhập lại mật khẩu *</label>
                                <input type="password" class="form-control" placeholder="Nhập mật khẩu..." />
                            </div>
                        </div>
                        <div class="col-12 ">
                            <div class="form-check d-flex justify-content-center">
                                <label class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input">
                                    <span class="custom-control-indicator"></span>
                                    <span class="custom-control-description">Tôi đã đọc hiểu và đồng ý các điều khoản</span>
                                </label>
                            </div>
                            <button type="submit" class="btn btn-danger btn-block">Đăng ký</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
</asp:Content>

