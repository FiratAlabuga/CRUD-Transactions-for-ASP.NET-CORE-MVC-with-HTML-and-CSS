<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UniversiteEkle.aspx.cs" Inherits="webVeri2.PersonelEkle" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>GUS-Genel Üniversite Sistemi</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <!-- font Awesome CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="/css/tasarimstyle.css" rel="stylesheet" />
    <!-- Main Styles CSS -->
    <link href="/css/main.css" rel="stylesheet"/><!--root kök dizinden oku -->
    <link href="/css/bootstrap.css" rel="stylesheet" />
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/button.css" rel="stylesheet" />


</head>
     <title>Kişi Ekleme Sayfası</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            color: #FF0000;
            font-weight: bold;
            width: 144px;
        }
        .style3
        {
            width: 100px;
	        font-weight: bold;
	        float: left;
	        padding-top: 8px;
	        padding-right: 5px;
        }
        .style4
        {
            width: 7px;
        }
         .style5
        {
            position:absolute;
            bottom:340px;
            left:690px;
        }
         .style6
        {
            position:absolute;
            bottom:290px;
            left:640px;
        }
        .auto-style1 {
            color: #FF0000;
            font-weight: bold;
            width: 276px;
        }
        .auto-style2 {
            width: 276px;
            font-weight: bold;
            float: left;
            padding-top: 8px;
            padding-right: 5px;
        }
        .auto-style4 {
            /*margin-top: 300px;
    margin-bottom: 300px;*/
            position: absolute;
            bottom: 43px;
            left: 20px;
            background-color: red;
            border: 3px solid #00d7c3;
            border-radius: 50px; /*-webkit-transition: all .15s ease-in-out;*/ /*transition: all .15s ease-in-out;*/
            
            color: #00d7c3;
            width: 88px;
        }
        .auto-style5 {
            width: 276px;
            font-weight: bold;
            float: left;
            padding-top: 8px;
            padding-right: 5px;
            height: 34px;
        }
        .auto-style8 {
            width: 276px;
            font-weight: bold;
            float: left;
            padding-top: 8px;
            padding-right: 5px;
            height: 36px;
        }
        .style7 {
                font-family: Arial Helvetica, Sans-Serif;
                border: 1px solid;
                color:black;
                }
        .style8{
             position:absolute;
            bottom:360px;
            left:550px;
            
        }
    </style>
 
<body>

    <div id="wrapper">

        <aside id="sideBar">
            <ul class="main-nav">
                <!-- Your Logo Or Site Name -->
                <li class="nav-brand">
                    <a href="#"><img src="/img/gusl.png" alt=""></a>
                </li>
                <!-- Search -->
                <li class="main-search">
                    <form action="#">
                        <input type="text" class="form-control search-input" placeholder="Arama...">
                        <i class="fa fa-search"></i>
                    </form>
                </li>
                <li><a href="/GenelUniversiteSistemi.aspx">- Ana Menü</a></li>
                <li><a href="/UniversiteGosterim.aspx">- Universite Tabloları</a> </li>
                <li><a href="/UniversiteEkle.aspx">- Universite Ekleme</a></li>
                <li><a href="/UniversiteGuncelleme.aspx">- Universite Güncelleme</a></li>
                <li><a href="/UniversiteSilme.aspx">-Universite Kayıt Silme</a></li>

               
            </ul>
        </aside>

        <!-- Main Section -->
        <section class="main-section">
            <!-- Add Your Content Inside -->
            <div class="content">
                <form id="form1" runat="server">
                    <div class="form-group">
                            
       
        <table class="style1">
            <tbody><tr>
                <td class="auto-style1">
                    Universite Ekleme Sayfası</td>
                <td class="style4">
                     </td>
                <td>
                     </td>
            </tr>
            <tr>
                <td class="auto-style2">
                     </td>
                <td class="style4">
                     </td>
                <td>
                     </td>
            </tr>
            <tr>
                <td class="auto-style8">
                   Universite Adı:</td>
               
                <td class="style7">
                    <asp:textbox id="txtAd" runat="server" width="198px" Height="24px"></asp:textbox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Universitenin Bulunduğu Şehir:</td>
                
                <td class="style7">
                    <asp:textbox id="txtSoyad" runat="server" width="200px"></asp:textbox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Universite Kampüsü:</td>
                
                <td class="style7">
                    <asp:textbox id="kampustxt" runat="server" width="200px"></asp:textbox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Universite Telefon Numarası:</td>
               
                <td class="style7">
                    <asp:textbox id="telefontxt" runat="server" width="200px"></asp:textbox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    Universite Kapasitesi:</td>
                
                <td class="style7">
                    <asp:textbox id="kapasitetxt" runat="server" width="200px"></asp:textbox>
                </td>
            </tr>
                     <tr>

                            <td class="style6">

                    <asp:Button runat="server" Text="Ekle" OnClick="btnEkle" CssClass="auto-style4" OnClientClick="uyari()"/>      

                            </td>
                     </tr>
                 
                
                    
                
                
                 <tr>
                <td class="auto-style2">
                     </td>
                <td class="style4">
                     </td>
                <td class="style8">
                    <asp:label id="Label1" runat="server" forecolor="Red"></asp:label>
                </td>
            </tr>
        </tbody></table>
     
       
                    </div>
                </form>
            </div>
            <!-- /.content -->
        </section>
        <!-- /.main-section -->


    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>

    <!-- Bootstrap JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <!-- Custom JavaScript -->
    <script src="/js/custom.js"></script>

    <script>
        function uyari() {
            alert("Kayıt Eklendi.");
        }

    </script>
    <!-- Call functions on document ready -->
    <script>
        $(document).ready(function() {
            // Call Menu Toggler
            appMaster.menuToggler();
            // Example Call anotherFunction
            appMaster.anotherFunction();
        });
    </script>

</body>

</html>
