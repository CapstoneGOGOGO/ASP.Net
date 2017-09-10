<%@ Page Title="" Language="C#" MasterPageFile="~/adminlayout.Master" AutoEventWireup="true" CodeBehind="acctypes.aspx.cs" Inherits="Cinema.admin.acctypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="col-md-12">
        <div class="card">
            <h4 class="card-header">Danh Sách Loại Ghế
                            <button class="btn btn-success btn-sm float-right" data-toggle="modal" data-target="#themGhe">Thêm Loại Tài Khoản <i class="fa fa-plus" aria-hidden="true"></i></button>
            </h4>
            <div class="card-body">
                <table class="table table-striped">
                    <thead class="thead-inverse">
                        <tr>
                            <th>Mã Tài Khoản</th>
                            <th>Tên Loại Tài Khoản</th>
                            <th>Ưu Đãi</th>
                            <th>Điều Kiện(Điểm)</th>
                            <th>Sửa</th>
                            <th>Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>th</td>
                            <td>Tài Khoản Thường</td>
                            <td>0%</td>
                            <td>0</td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#suaTK"><i class="fa fa-pencil-square" aria-hidden="true"></i></a></td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#xoaTK"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                        </tr>
                        <tr>
                            <td>VIP</td>
                            <td>Tài Khoản VIP</td>
                            <td>4%</td>
                            <td>10000</td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#suaTK"><i class="fa fa-pencil-square" aria-hidden="true"></i></a></td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#xoaTK"><i class="fa fa-trash" aria-hidden="true"></i></a></td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Modal Thêm Loại Tài Khoản -->
    <div class="modal fade" id="themGhe" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thêm Loại Tài Khoản</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-barcode" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Nhập Mã Loại Tài Khoản" aria-label="Mã tài khoản" aria-describedby="basic-addon1" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Tên Loại Tài Khoản" aria-label="Tên tài khoản" aria-describedby="basic-addon1" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Ưu Đãi" aria-label="Tiền Phụ Thu" aria-describedby="basic-addon1" />
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Điều Kiện(Điểm)" aria-label="Điều Kiện" aria-describedby="basic-addon1" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary">Thêm</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Sửa Loại TK -->
    <div class="modal fade" id="suaTK" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Sửa Loại Ghế</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-barcode" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" value="Th" placeholder="Nhập Mã Loại Tài Khoản" aria-label="Mã ghế" aria-describedby="basic-addon1" disabled="disabled" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Tài Khoản Thường" aria-label="Tên ghế" aria-describedby="basic-addon1" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="0%" aria-label="Số lượng ghế" aria-describedby="basic-addon1" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="0" aria-label="Điều kiện (Điểm)" aria-describedby="basic-addon1" />
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary">Thêm</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Xóa Loại TK -->
    <div class="modal fade" id="xoaTK" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="xoaghe">Xóa Loại TK</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p class="text-center">Bạn có muốn xóa loại tài khoản [th] không?</p>
                </div>
                <div class="modal-footer d-flex justify-content-center">
                    <button type="button" class="btn btn-danger">Xóa</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
