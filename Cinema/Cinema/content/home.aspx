<%@ Page Title="" Language="C#" MasterPageFile="~/layout.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="content_home2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="Server">
    <title>CGV | Trang Chủ</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
            </ol>
            <div class="carousel-inner cgv-slider">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="/images/slide/dong-gia-980-x-448.jpg" alt="First slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="/images/slide/inhuman_980-x-448.jpg" alt="Second slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="/images/slide/kv-cvg_980-x-448.jpg" alt="Third slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="/images/slide/late-980-x-448.jpg" alt="Third slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="/images/slide/pht9_980-x-448.jpg" alt="Third slide" />
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="/images/slide/remind_t9_web_980_x_448.jpg" alt="Third slide" />
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <br />
        <div class="card cgv-card">
            <div class="card-header cgv-card-header">
                <i class="fa fa-film" aria-hidden="true" style="margin-right: 11px;"></i>Phim đang chiếu
            </div>
            <div class="card-body cgv-card-body">
                <article title="Đột kích hồ giấu vàng">
                    <img src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/r/e/renegades240x355.jpg" />
                </article>
                <article title="item2">
                    <a href="chitietphim.aspx"><img src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/y/d/ydds240x355.jpg" /></a>
                </article>
                <article title="item3">
                    <img src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/h/a/happy240x355.jpg" />
                </article>
                <article title="item4">
                    <img src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/a/m/american_made_240x355.png" />
                </article>
                <article title="item5">
                    <img src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/t/h/thenut240x355.jpg" />
                </article>
                <article title="item6">
                    <img src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/n/a/nang2offical240x355.png" />
                </article>
                <article title="item7">
                    <img src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/2/4/240x377ddn.jpg" />
                </article>
                <article title="item8">
                    <img src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/i/m/imax240x355.jpg" />
                </article>
            </div>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="Server">
    <script>
        $('article').flipcarousel({
            pagination: false,
            loader: true,
            itemsperpage: 4,
            randomizer: 0.7
        });
    </script>
</asp:Content>

