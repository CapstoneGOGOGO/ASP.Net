<%@ Page Title="" Language="C#" MasterPageFile="~/adminlayout.Master" AutoEventWireup="true" CodeBehind="roomnanger.aspx.cs" Inherits="Cinema.admin.roomnanger" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <title>CGV | Quản lý phòng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="col-md-12">
        <div class="card">
            <h4 class="card-header">Danh sách phòng
                                <button class="btn btn-success btn-sm float-right" data-toggle="modal" data-target="#themphong">Thêm phòng <i class="fa fa-plus" aria-hidden="true"></i></button>
            </h4>
            <div class="card-body">
                <table class="table table-striped">
                    <thead class="thead-inverse">
                        <tr>
                            <th>STT</th>
                            <th>Tên phòng</th>
                            <th>Loại phòng</th>
                            <th>Số lượng ghế</th>
                            <th>Tình trạng</th>
                            <th>Sửa bố cục phòng</th>
                            <th>Sửa thông tin phòng</th>
                            <th>Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row">1</th>
                            <td>P11</td>
                            <td>3D</td>
                            <td>50</td>
                            <td>Tốt</td>
                            <td><i class="fa fa-pencil-square-o" aria-hidden="true"></i></td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#suattphong"><i class="fa fa-pencil-square" aria-hidden="true"></i></a></td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#xoaphong"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                        </tr>
                        <tr>
                            <th scope="row">2</th>
                            <td>P12</td>
                            <td>4D</td>
                            <td>70</td>
                            <td>Tốt</td>
                            <td><i class="fa fa-pencil-square-o" aria-hidden="true"></i></td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#suattphong"><i class="fa fa-pencil-square" aria-hidden="true"></i></a></td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#xoaphong"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Modal Thêm Phòng -->
    <div class="modal fade" id="themphong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thêm phòng mới</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-barcode" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Nhập mã phòng" aria-label="Mã phòng" aria-describedby="basic-addon1" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                        <select class="form-control">
                            <option selected="selected" disabled="disabled">Chọn loại hình</option>
                            <option>2D</option>
                            <option>3D</option>
                            <option>4D</option>
                            <option>BÊĐÊ</option>
                        </select>
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
    <!-- Modal Sửa TT Phòng -->
    <div class="modal fade" id="suattphong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Sửa phòng</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-barcode" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" value="A123" placeholder="Nhập mã phòng" aria-label="Mã phòng" aria-describedby="basic-addon1" disabled="disabled" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                        <select class="form-control">
                            <option selected="selected" disabled="disabled">Chọn loại hình</option>
                            <option>2D</option>
                            <option>3D</option>
                            <option>4D</option>
                            <option>BÊĐÊ</option>
                        </select>
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
    <!-- Modal Xóa Phòng -->
    <div class="modal fade" id="xoaphong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Xóa phòng</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p class="text-center">Bạn có muốn xóa phòng [ID] không?</p>
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
