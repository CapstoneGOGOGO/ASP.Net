<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="Cinema.content.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Header" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    <div id='some-element'></div>
    <img class="bg-blur" src=""/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <script>
        $('#some-element').backgroundBlur({
            imageURL: 'https://unsplash.imgix.net/photo-1429042007245-890c9e2603af?fit=crop&fm=jpg&q=75&w=400',
            blurAmount: 50,
            imageClass: 'bg-blur'
        });
    </script>
</asp:Content>
