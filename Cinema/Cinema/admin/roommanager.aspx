<%@ Page Title="" Language="C#" MasterPageFile="~/adminlayout.Master" AutoEventWireup="true" CodeBehind="roommanager.aspx.cs" Inherits="Cinema.admin.roommanager" %>

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
                <div id="alert" class="as" runat="server" role="alert"></div>
                <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
            </div>
        </div>
    </div>
    <!-- Modal Thêm Phòng -->
    <form id="form1" runat="server">
        <div class="modal fade" id="themphong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm" role="document">

                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Thêm phòng mới</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-barcode" aria-hidden="true"></i></span>
                            <input type="text" runat="server" id="add_roomID" class="form-control" placeholder="Nhập mã phòng" />
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                            <select runat="server" id="add_cinemaType" class="form-control">
                                <option selected="selected" value="" disabled="disabled">Chọn loại hình</option>
                                <option value="2D">2D</option>
                                <option value="3D">3D</option>
                                <option value="4D">4D</option>
                                <option value="BÊĐÊ">BÊĐÊ</option>
                            </select>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                            <select runat="server" id="add_roomStatus" class="form-control">
                                <option value="" selected="selected" disabled="disabled">Chọn tình trạng phòng</option>
                                <option value="Đang được sử dụng">Đang được sử dụng</option>
                                <option value="Không thể sử dụng">Không thể sử dụng</option>
                                <option value="Bình thường">Bình thường</option>
                            </select>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                            <input type="number" runat="server" id="add_numberOfSeat" class="form-control" placeholder="Nhập số lượng ghế" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                        <asp:Button ID="Button1" runat="server" Text="Thêm" type="submit" class="btn btn-primary" OnClick="addRoom_Click" />
                    </div>
                </div>
            </div>
        </div>


        <!-- Modal Sửa TT Phòng -->

        <div class="modal fade" id="suattphong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Sửa phòng</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-barcode" aria-hidden="true"></i></span>
                            <input type="text" runat="server" class="form-control" id="edit_roomID" placeholder="Nhập mã phòng" aria-label="Mã phòng" aria-describedby="basic-addon1" readonly />
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-eye" aria-hidden="true"></i></span>
                            <select runat="server" id="edit_cinemaType" class="form-control">
                                <option selected="selected" value="" disabled="disabled">Chọn loại hình</option>
                                <option value="2D">2D</option>
                                <option value="3D">3D</option>
                                <option value="4D">4D</option>
                                <option value="BÊĐÊ">BÊĐÊ</option>
                            </select>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-cube" aria-hidden="true"></i></span>
                            <input type="number" runat="server" id="edit_numberOfSeat" class="form-control" placeholder="Nhập số lượng ghế" aria-label="Số lượng ghế" aria-describedby="basic-addon1" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                        <asp:Button ID="btn_ApplyRoomSettings" runat="server" Text="Lưu" type="submit" class="btn btn-primary" OnClick="editRoom_Click" />
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Xóa Phòng -->
        <div class="modal fade" id="xoaphong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-md" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Xóa phòng</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Đóng">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p class="text-center">Bạn có muốn xóa phòng "<span id="labelroomID"></span>" không?"</p>
                    </div>
                    <div class="modal-footer d-flex justify-content-center">
                        <asp:Button runat="server" ID="deleteRecord" type="button" Text="Xóa" class="btn btn-outline-danger" OnClick="deleteRoom_Click" />
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Hủy</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <script>
        $('#thetable').find('tr').click(function () {
            var row = $(this).attr('id');
            $("#Body_edit_roomID").attr("value", row);
            $("#Body_edit_roomID").val(row);
            $("#labelroomID").text(row);
            $("#labelroomID").val(row);
        });
    </script>
</asp:Content>
