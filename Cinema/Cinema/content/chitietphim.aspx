<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeFile="chitietphim.aspx.cs" Inherits="content_chitietphim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="Server">
    <title>CGV | [Film name]</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <div class="row justify-content-md-center">
        <div class="col-md-10">
            <div class="card cgv-card">
                <div class="card-header cgv-card-header">
                    <i class="fa fa-film" aria-hidden="true" style="margin-right: 11px;"></i>Chi tiết phim [Film name]
                </div>
                <div class="card-body cgv-card-body">
                    <div class="row">
                        <div class="col-md-4">
                            <img src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/y/d/ydds240x355.jpg" style="min-width: 100%;" class="img-thumbnail">
                        </div>
                        <div class="col-md-8">
                            <h4>Film name</h4>
                            <hr />
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Đạo diễn:</label>
                                </div>
                                <div class="col-md-8">
                                    <label>[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Diễn viên:</label>
                                </div>
                                <div class="col-md-8">
                                    <label>[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Thể loại:</label>
                                </div>
                                <div class="col-md-8">
                                    <label>[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Khởi chiếu</label>
                                </div>
                                <div class="col-md-8">
                                    <label>[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Thời lượng:</label>
                                </div>
                                <div class="col-md-8">
                                    <label>[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Giới hạn tuổi:</label>
                                </div>
                                <div class="col-md-8">
                                    <label>[data film]</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <label>Ngôn ngữ:</label>
                                </div>
                                <div class="col-md-8">
                                    <label>[data film]</label>
                                </div>
                            </div>
                            <div class="row" style="margin-bottom: 50px;">
                                <div class="col-md-4">
                                    <label>Phụ đề:</label>
                                </div>
                                <div class="col-md-8">
                                    <label>[data film]</label>
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
                            [data description]
                                “Phù thủy” Tùng (Ngô Kiến Huy), một ảo thuật gia tài ba nhưng cực kỳ sợ ma tình cờ gặp Phương (Nhã Phương), một cô gái bí ẩn có khả năng nhìn thấy ma. Cuộc gặp gỡ định mệnh ấy chính là nguồn cảm hứng cho tiết mục ảo thuật mới của Tùng. Anh mời Phương làm việc cùng và nhanh chóng trở nên nổi tiếng với tiết mục ảo thuật kinh dị này. Trong một lần tình cờ ghé thăm nhà Phương, Tùng biết được bí mật “đáng sợ” của cô. Tùng và Phương dần có cảm tình với nhau nhưng liệu anh có thể vượt qua nỗi sợ hãi của mình để ở bên Phương được không?
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
