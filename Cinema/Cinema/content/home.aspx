﻿<%@ Page Title="CGV | Trang Chủ" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Cinema.content.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="Server">
    <script type="text/javascript"> 
            function showModal() { 
                $(window).on('load', function () {
                    $('#myModal').modal('show');
                });
            } 
        </script> 
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
                <asp:PlaceHolder ID="listFilm" runat="server" />
            </div>
        </div>
        
    <div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
          <h4 class="modal-title">Xin Chào</h4>
      </div>
      <div class="modal-body">
        <p>Bạn đang đăng nhập với tài khoản ADMIN .Bạn có muốn truy cập trang quản lý ?.</p>
      </div>
      <div class="modal-footer">
            <a href="/admin/Default.aspx" > <button type="button" class="btn btn-info">Truy Cập</button></a> 

        <button type="button" class="btn btn-default" data-dismiss="modal">NO</button>
      </div>
    </div>

  </div>
</div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="Server">
    <asp:label id="openModal" runat="server"></asp:label>
    <script>
        $('article').flipcarousel({
            pagination: false,
            loader: true,
            itemsperpage: 4,
            randomizer: 0.7
        });
        $(function () {
            $('[data-toggle="tooltip"]').tooltip()
        })
       
    </script>
    
</asp:Content>

