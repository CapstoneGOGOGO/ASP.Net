<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Cinema.content.Regis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="Server">
    <title>CGV | Đăng ký</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <div class="card cgv-card">
        <div class="card-header cgv-card-header">
            <i class="fa fa-pencil-square-o" aria-hidden="true" style="margin-right: 11px;"></i>Đăng ký thành viên CGV
        </div>
        <div class="card-body cgv-card-body">
            <form runat="server">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label>Tên khách hàng *</label>
                            <input id="nameOfCus" runat="server" type="text" class="form-control" placeholder="Điền tên..."  required="required"/>
                        </div>
                         <div class="form-group">
                            <label>Ngày sinh</label>
                            <input id="dateOfBirth" runat="server" type="datetime"  data-provide="datepicker" placeholder="Chọn ngày sinh..." class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Giới tính : </label>
                           <div class="btn-group" data-toggle="buttons">
  <label class="btn btn-Radio active">
    <input type="radio" name="options" id="male" autocomplete="off" value="0" checked runat="server"> Nam
  </label>
  <label class="btn btn-Radio">
    <input type="radio" name="options" id="female" autocomplete="off" value="1"> Nữ
  </label>
 
</div>
                        </div>
           
   
                    
                        <div class="form-group">
                            <label>Địa chỉ *</label>
                         <div class="form-inline">
                                <asp:DropDownList ID="city" CssClass="form-control" runat="server" style="width: 33%;"  OnTextChanged="city_TextChanged" AutoPostBack="true"></asp:DropDownList>                          
                                <asp:DropDownList ID="district" CssClass="form-control" runat="server"  style="width: 33%;" OnTextChanged="district_TextChanged" AutoPostBack="true"></asp:DropDownList>
                                <asp:DropDownList ID="wards" CssClass="form-control" runat="server"  style="width: 33%;"></asp:DropDownList>
                        </div>
               
                            </div>
                         <div class="form-group">
                            <label>Số điện thoại *</label>
                            <input id="phoneNumber" runat="server" type="text" class="form-control" placeholder="Nhập số điện thoại..." />
                        </div>
                             <p style="color:red;">* Mục bắt buộc.</p>
                    </div>
                    <div class="col-md-6">
                       
                        <div class="form-group">
                            <label>Số CMND *</label>
                            <input id="id" runat="server" type="text" class="form-control" placeholder="Nhập số CMND..." />
                        </div>
                        <div class="form-group">
                            <label>Địa chỉ Email *</label>
                            <input id="email" runat="server" type="text" class="form-control" placeholder="Nhập địa chỉ Email..." />
                        </div>
                        <div class="form-group">
                            <label>Tên tài khoản *</label>
                            <input id="account" runat="server" type="text" class="form-control" placeholder="Nhập tên tài khoản..." />
                        </div>
                        <div class="form-group">
                            <label>Mật khẩu *</label>
                            <input id="password" runat="server" type="password" class="form-control" placeholder="Nhập mật khẩu..." />
                        </div>
                        <div class="form-group">
                            <label>Nhập lại mật khẩu *</label>
                            <input id="rePassword" runat="server" type="password" class="form-control" placeholder="Nhập mật khẩu..." />
                        </div>
                    </div>

                    <div class="col-12 ">
                        <div class="form-check d-flex justify-content-center">
                            <label class="custom-control custom-checkbox">
                                <input runat="server" type="checkbox" class="custom-control-input"/>
                                <span class="custom-control-indicator"></span>
                                <span class="custom-control-description">Tôi đã đọc hiểu và đồng ý các điều khoản</span>
                            </label>
                        </div>
                        <asp:Button ID="regis" runat="server" Text="Đăng Ký" class="btn btn-danger btn-block" />
                    </div>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="Server">
    <script>
        $('.datepicker').datepicker();
    </script>
</asp:Content>