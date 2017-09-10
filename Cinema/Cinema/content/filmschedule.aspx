<%@ Page Title="CGV | Lịch chiếu phim" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="filmschedule.aspx.cs" Inherits="Cinema.content.filmschedule" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <%--<script src="http://www.quasimondo.com/StackBlurForCanvas/StackBlur.js"></script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
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
    <div class="row justify-content-md-center">
        <div class="col-md-12">
            <div class="card cgv-card">
                <div class="card-header cgv-card-header">
                    <i class="fa fa-film" aria-hidden="true" style="margin-right: 11px;"></i>Lịch chiếu phim
                </div>
                <div class="card-body cgv-card-body" id="film_detailcontent" runat="server">
                    <div class="card card-filmdetail">
                        <div class="card-body">
                            <h4 class="card-title">Ngày chiếu phim</h4>
                            <asp:PlaceHolder ID="listFilmDay" runat="server" />
                        </div>
                    </div>
                    <br />
                    <div class="card card-filmdetail">
                        <div class="card-body">
                            <h4 class="card-title">Các suất chiếu</h4>
                            <asp:PlaceHolder ID="listSchedule" runat="server" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <script>
        //stackBlurImage("testthu", "canvas", "47", true);

        var date = new Date();
        date.setDate(date.getDate() + 10);

        var dateMsg = date.getDate() + '/' + (date.getMonth() + 1) + '/' + date.getFullYear();
        //alert(dateMsg);
    </script>
</asp:Content>
