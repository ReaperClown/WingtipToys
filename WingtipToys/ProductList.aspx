﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="WingtipToys.ProductList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%--class="container d-flex align-items-center justify-content-evenly"--%>
    <section>
        <div>
            <hgroup>
                <h2><%: Page.Title %></h2>
            </hgroup>

            <asp:ListView ID="productList" runat="server"
                DataKeyNames="ProductID" GroupItemCount="4"
                ItemType="WingtipToys.Models.Product" SelectMethod="GetProducts">
                <EmptyDataTemplate>
                    <div class="table-responsive">
                        <table class="table mx-auto w-auto">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </div>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
                <ItemTemplate>
                    <td runat="server">
                        <div class="table-responsive">
                            <table class="table mx-auto w-auto">
                                <tr>
                                    <td>
                                        <a href="ProductDetails.aspx?productID=<%#: Item.ProductID %>">
                                            <image src='/Catalog/Images/<%#:Item.ImagePath%>'
                                                width="100" height="75" border="1" />
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <a href="ProductDetails.aspx?productID=<%#: Item.ProductID %>">
                                            <%#:Item.ProductName%>
                                        </a>
                                        <br />
                                        <span>
                                            <b>Price: </b><%#:String.Format("{0:c}", Item.UnitPrice)%>
                                        </span>
                                        <br />
                                        <a href="/AddToCart.aspx?productID=<%#:Item.ProductID %>">
                                            <span class="ProductListItem">
                                                <b> Add To Cart</b>
                                            </span>
                                        </a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </div>
                        </p>
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <div class="table-responsive">
                        <table class="table mx-auto w-auto" style="width: 100%;">
                            <tbody>
                                <tr>
                                    <td>
                                        <table id="groupPlaceholderContainer" runat="server" style="width: 100%">
                                            <tr id="groupPlaceholder"></tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr></tr>
                            </tbody>
                        </table>
                    </div>
                </LayoutTemplate>
            </asp:ListView>
        </div>
    </section>
</asp:Content>
