<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeFile="chonloaive.aspx.cs" Inherits="content_chonloaive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="Server">
    <title>CGV | Chọn loại vé</title>
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
                            <!-- Xuất data xuất film & tt film -->
                            <h2>Yêu đi đừng sợ</h2>
                            <h4>Thứ 2, ngày 4/9/2017</h4>
                            <h4>9:15 AM | Phòng 11</h4>
                            <br />
                            <div class="card card-filmdetail">
                                <div class="card-body">
                                    <h4 class="card-title">Hướng dẫn mua vé</h4>
                                    Information guide
                                </div>
                            </div>
                        </div>
                    </div>
                    <br />
                    <div class="card card-filmdetail">
                        <div class="card-body">
                            <h4 class="card-title">Loại vé</h4>
                            <table class="table table-striped table-cgv">
                                <thead>
                                    <tr>
                                        <th>Loại vé</th>
                                        <th>Số lượng</th>
                                        <th>Đơn giá</th>
                                        <th>Tổng (VNĐ)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row" class="align-middle">Thường</th>
                                        <td>
                                            <input type="number" class="form-control" min="0" style="max-width: 100px;" /></td>
                                        <td class="align-middle">100.000</td>
                                        <td class="align-middle">100.000</td>
                                    </tr>
                                    <tr>
                                        <th scope="row" class="align-middle">VIP</th>
                                        <td>
                                            <input type="number" class="form-control" min="0" style="max-width: 100px;" /></td>
                                        <td class="align-middle">150.000</td>
                                        <td class="align-middle">150.000</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div style="width:100%;display: inline-block;">
                                    <h5 class="float-right">Tổng cộng : 250.000 VNĐ</h5>
                            </div>
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-check d-flex justify-content-center">
                                        <button type="submit" class="btn btn-danger">Chọn ghế</button> 
                                        <button type="submit" class="btn btn-danger">Chọn ghế</button>
                                    </div>
                                </div>
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

