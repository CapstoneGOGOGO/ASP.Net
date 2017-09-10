<%@ Page Title="" Language="C#" MasterPageFile="~/adminlayout.Master" AutoEventWireup="true" CodeBehind="chairtypes.aspx.cs" Inherits="Cinema.admin.chairtypes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="col-md-12">
        <div class="card">
            <h4 class="card-header">Danh Sách Loại Ghế
                            <button class="btn btn-success btn-sm float-right" data-toggle="modal" data-target="#themGhe">Thêm Loại Ghế <i class="fa fa-plus" aria-hidden="true"></i></button>
            </h4>
            <div class="card-body">
                <table class="table table-striped">
                    <thead class="thead-inverse">
                        <tr>
                            <th>Mã Loại Ghế</th>
                            <th>Tên Loại Ghế</th>
                            <th>Tiền Phụ Thu(VNĐ)</th>
                            <th>Sửa</th>
                            <th>Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>LG01</td>
                            <td>VIP</td>
                            <td>50000</td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#suatGhe"><i class="fa fa-pencil-square" aria-hidden="true"></i></a></td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#xoaghe"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                        </tr>
                        <tr>
                            <td>LG02</td>
                            <td>Member</td>
                            <td>55000</td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#suatGhe"><i class="fa fa-pencil-square" aria-hidden="true"></i></a></td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#xoaghe"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Modal Thêm Loại Ghế -->
    <div class="modal fade" id="themGhe" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thêm Loại Ghế</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-barcode" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Nhập Mã Loại Ghế" aria-label="Mã ghế" aria-describedby="basic-addon1" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Tên Loại Ghế" aria-label="Tên ghế" aria-describedby="basic-addon1" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Tiền Phụ Thu" aria-label="Tiền Phụ Thu" aria-describedby="basic-addon1" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary">Thêm</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Sửa Loại Ghế -->
    <div class="modal fade" id="suatGhe" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
                        <input type="text" class="form-control" value="A123" placeholder="Nhập Mã Loại Ghế" aria-label="Mã ghế" aria-describedby="basic-addon1" disabled="disabled" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Tên Loại Ghế" aria-label="Tên ghế" aria-describedby="basic-addon1" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Nhập số lượng ghế" aria-label="Số lượng ghế" aria-describedby="basic-addon1" />
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary">Thêm</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Xóa Ghế -->
    <div class="modal fade" id="xoaghe" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="xoaghe">Xóa ghế</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p class="text-center">Bạn có muốn xóa ghế [ID] không?</p>
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
