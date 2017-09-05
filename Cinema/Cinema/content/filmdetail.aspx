<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="filmdetail.aspx.cs" Inherits="Cinema.content.filmdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <div class="row justify-content-md-center">
        <div class="col-md-10">
            <div class="card cgv-card">
                <div class="card-header cgv-card-header">
                    <i class="fa fa-film" aria-hidden="true" style="margin-right: 11px;"></i>Chi tiết phim <b id="film_bigname" runat="server"></b>
                </div>
                <div class="card-body cgv-card-body" id="film_detailcontent" runat="server">
                    <div class="row">
                        <div class="col-md-4">
                            <img id="film_poster" runat="server" style="min-width: 100%;" class="img-thumbnail">
                        </div>
                        <div class="col-md-8">
                            <h4 id="film_ten" runat="server"></h4>
                            <hr />
                            <div class="row">
                                <div class="col-md-3">
                                    <label>Đạo diễn:</label>
                                </div>
                                <div class="col-md-9">
                                    <label id="film_daodien" runat="server">[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label>Diễn viên:</label>
                                </div>
                                <div class="col-md-9">
                                    <label id="film_dienvien" runat="server">[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label>Thể loại:</label>
                                </div>
                                <div class="col-md-9">
                                    <label id="film_theloai" runat="server">[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label>Khởi chiếu</label>
                                </div>
                                <div class="col-md-9">
                                    <label id="film_khoichieu" runat="server">[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label>Thời lượng:</label>
                                </div>
                                <div class="col-md-9">
                                    <label id="film_thoiluong" runat="server">[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label>Giới hạn tuổi:</label>
                                </div>
                                <div class="col-md-9">
                                    <label id="film_gioihantuoi" runat="server">[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <label>Ngôn ngữ:</label>
                                </div>
                                <div class="col-md-9">
                                    <label id="film_ngonngu" runat="server">[data film]</label>
                                </div>
                            </div>
                            <div class="buy-ticket">
                                <button type="button" class="btn btn-danger btn-lg">MUA VÉ <i class="fa fa-ticket" aria-hidden="true"></i></button>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="card card-filmdetail">
                        <div class="card-body">
                            <h4 class="card-title">Mô tả</h4>
                            <label id="film_mota" runat="server"></label>
                        </div>
                    </div>
                    <br />
                    <div class="card card-filmdetail">
                        <div class="card-body">
                            <div data-toggle="buttons">
                                <h4 class="card-title">Lịch chiếu</h4>
                                <!-- Xuất dữ liệu giờ chiếu từ database ra đây! -->
                                <div class="form-group">Thứ 7, ngày 2/9/2017</div>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option1" autocomplete="off" />
                                    7:00 AM
                                    <br />
                                    40 ghế trống
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option2" autocomplete="off" />
                                    9:15 AM
                                    <br />
                                    17 ghế trống
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option3" autocomplete="off" />
                                    2:00 PM
                                    <br />
                                    5 ghế trống
                                </label>
                                <hr />
                                <div class="form-group">Chủ nhật, ngày 3/9/2017</div>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option4" autocomplete="off" />
                                    7:00 AM
                                    <br />
                                    40 ghế trống
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option5" autocomplete="off" />
                                    9:15 AM
                                    <br />
                                    17 ghế trống
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option6" autocomplete="off" />
                                    2:00 PM
                                    <br />
                                    5 ghế trống
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option7" autocomplete="off" />
                                    6:00 PM
                                    <br />
                                    5 ghế trống
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option8" autocomplete="off" />
                                    8:00 PM
                                    <br />
                                    5 ghế trống
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option9" autocomplete="off" />
                                    10:00 PM
                                    <br />
                                    5 ghế trống
                                </label>
                                <hr />
                                <div class="form-group">Thứ 2, ngày 4/9/2017</div>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option10" autocomplete="off" />
                                    7:00 AM
                                    <br />
                                    40 ghế trống
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option11" autocomplete="off" />
                                    9:15 AM
                                    <br />
                                    17 ghế trống
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option12" autocomplete="off" />
                                    2:00 PM
                                    <br />
                                    5 ghế trống
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option13" autocomplete="off" />
                                    6:00 PM
                                    <br />
                                    5 ghế trống
                                </label>
                                <label class="btn btn-secondary">
                                    <input type="radio" name="showtimes1" id="option14" autocomplete="off" />
                                    9:00 PM
                                    <br />
                                    5 ghế trống
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="Server">
</asp:Content>
