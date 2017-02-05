<%@ Page Title="" Language="C#" MasterPageFile="~/Management.master" AutoEventWireup="true" CodeFile="Management.aspx.cs" Inherits="Page_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="content" style="float:left; width:1140px; margin-top:-10px;">


        <ul data-collapse="collapse" class="quick">
            <li>
                <a href="Access.aspx">
                    <img src="/Panel Management/image/statistics.png">
                    <span>مدیریت کاربران</span>
                </a>
            </li>
            <li>
                <a href="Varizi.aspx">
                    <img alt="" src="/Panel Management/image/order-149.png">
                    <span>مدیریت مالی</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img alt="" src="/Panel Management/image/shipping.png">
                    <span>بخش گزارش ها</span>
                </a>
            </li>
            <li>
                <a href="Miveh.aspx">
                    <img alt="" src="/Panel Management/image/my-account.png">
                    <span>میوه</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img alt="" src="/Panel Management/image/full-time.png">
                    <span>پیام ها</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <img alt="" src="/Panel Management/image/lock.png">
                    <span>تنظیمات</span>
                </a>
            </li>
        </ul>

        <h2>چارت ها</h2>
        <div class="demo-container">
            <div id="placeholder" class="demo-placeholder" style="float: left; width: 445px;"></div>
            <p id="choices" style="float: right; width: 135px;"></p>
        </div>


        <h2>نمونه فیلد ها</h2>
        <textarea name="name" class="fild" style="width: 400px; height: 100px;"></textarea><br>
        <input type="text" class="fild" name=""><br>
        <button class="btn" type="submit" name="submit" value="submit">نمونه گزینه</button>
        <button class="btn b1" type="submit" name="submit" value="submit">نمونه گزینه</button>
        <button class="btn b2" type="submit" name="submit" value="submit">نمونه گزینه</button>
        <button class="btn b3" type="submit" name="submit" value="submit">نمونه گزینه</button>
        <button class="btn b4" type="submit" name="submit" value="submit">نمونه گزینه</button>
        <button class="btn b5" type="submit" name="submit" value="submit">نمونه گزینه</button>


    </div>

</asp:Content>

