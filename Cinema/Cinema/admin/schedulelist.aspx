<%@ Page Title="" Language="C#" MasterPageFile="~/adminlayout.Master" AutoEventWireup="true" CodeBehind="schedulelist.aspx.cs" Inherits="Cinema.admin.schedulelist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="col-md-12">
        <div class="card">
            <h4 class="card-header">Danh Sách Lịch Chiếu
                            <button class="btn btn-success btn-sm float-right" data-toggle="modal" data-target="#themLC">Thêm Lịch Chiếu <i class="fa fa-plus" aria-hidden="true"></i></button>
            </h4>
            <div class="card-body">
                <div class="alert alert-secondary dayLC" role="alert">
                    16 May 2017
                </div>
                <button type="button" class="btn btn-success btn-lg filter">Lọc</button>
                <table class="table table-striped">
                    <thead class="thead-inverse">
                        <tr>
                            <th>Mã Lịch Chiếu</th>
                            <th>Mã phim</th>
                            <th>Suất Chiếu</th>
                            <th>Mã Phòng</th>
                            <th>Sửa</th>
                            <th>Xóa</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>LC01</td>
                            <td>JAV01</td>
                            <td>S01</td>
                            <td>P1</td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#suaLC"><i class="fa fa-pencil-square" aria-hidden="true"></i></a></td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#xoaLC"><i class="fa fa-trash" aria-hidden="true"></i></a></td>
                        </tr>
                        <tr>
                            <td>LC02</td>
                            <td>JAV02</td>
                            <td>S02</td>
                            <td>P2</td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#suaLC"><i class="fa fa-pencil-square" aria-hidden="true"></i></a></td>
                            <td><a href="#" class="btn btn-outline-info btn-sm btn-block btn-edit" data-toggle="modal" data-target="#xoaLC"><i class="fa fa-trash" aria-hidden="true"></i></a></td>

                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Modal Thêm Lịch Chiếu -->
    <div class="modal fade" id="themLC" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thêm Lịch Chiếu</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-barcode" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Nhập Mã Lịch Ghế" aria-label="Mã ghế" aria-describedby="basic-addon1" />
                    </div>



                    <!--Duong Lam -->
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Ngày Chiếu" aria-label="Tên ghế" aria-describedby="basic-addon1" />
                    </div>




                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <select class="form-control" id="exampleFormControlSelect1">
                            <option>Chọn Mã Suất Chiếu</option>
                            <option>SC1</option>
                            <option>SC2</option>
                            <option>SC3</option>
                            <option>SC4</option>
                            <option>SC55</option>
                        </select>
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <select class="form-control" id="exampleFormControlSelect1">
                            <option>Chọn Mã Phim</option>
                            <option>MP1</option>
                            <option>MP2</option>
                            <option>MP3</option>
                            <option>MP4</option>
                            <option>MP5</option>
                        </select>
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <select class="form-control" id="exampleFormControlSelect1">
                            <option>Chọn Mã Phòng</option>
                            <option>P1</option>
                            <option>P2</option>
                            <option>P3</option>
                            <option>P4</option>
                            <option>P5</option>
                        </select>
                    </div>

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    <button type="button" class="btn btn-primary">Thêm</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Sửa Lịch Chiếu -->
    <div class="modal fade" id="suaLC" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Sửa Lịch Chiếu</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-barcode" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" value="LC1" placeholder="Nhập Mã Lịch Chiếu" aria-label="Mã ghế" aria-describedby="basic-addon1" disabled="disabled" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                        <input type="text" class="form-control" placeholder="Ngày Chiếu" aria-label="Tên ghế" aria-describedby="basic-addon1" />
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <select class="form-control" id="exampleFormControlSelect1">
                            <option>Chọn Mã Suất Chiếu</option>
                            <option>SC1</option>
                            <option>SC2</option>
                            <option>SC3</option>
                            <option>SC4</option>
                            <option>SC55</option>
                        </select>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <select class="form-control" id="exampleFormControlSelect1">
                            <option>Chọn Mã Phim</option>
                            <option>MP1</option>
                            <option>MP2</option>
                            <option>MP3</option>
                            <option>MP4</option>
                            <option>MP5</option>
                        </select>
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                        <select class="form-control" id="exampleFormControlSelect1">
                            <option>Chọn Mã Phòng</option>
                            <option>P1</option>
                            <option>P2</option>
                            <option>P3</option>
                            <option>P4</option>
                            <option>P5</option>
                        </select>
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
    <div class="modal fade" id="xoaLC" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="xoaLC">Xóa Lịch Chiếu</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <p class="text-center">Bạn có muốn xóa lịch chiếu [ID] không?</p>
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
