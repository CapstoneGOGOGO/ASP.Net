<%@ Page Title="" Language="C#" MasterPageFile="~/adminlayout.Master" AutoEventWireup="true" CodeBehind="roomlayout.aspx.cs" Inherits="Cinema.admin.roomlayout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
    <title>CGV | Bố Cục Phòng</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div class="col">
        <div class="card">
            <h4 class="card-header">
                Bố cục phòng
            </h4>
            <div class="card-body">
                <asp:PlaceHolder ID="allChairs" runat="server" />
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
