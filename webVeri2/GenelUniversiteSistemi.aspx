<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GenelUniversiteSistemi.aspx.cs" Inherits="webVeri2.PersonelTakipSistemLog" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>GUS-Genel Üniversite Sistemi
    </title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <!-- font Awesome CSS -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="/css/tasarimstyle.css" rel="stylesheet" />
    <!-- Main Styles CSS -->
    <link href="/css/main.css" rel="stylesheet"/><!--root kök dizinden oku -->
    <link href="/css/bootstrap.css" rel="stylesheet" />
    <link href="/css/bootstrap.min.css" rel="stylesheet" />


</head>

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
                        <table>
                            <tr>
                                <td>
                                    <h1>Genel Universite Sistemine Hoşgeldiniz.</h1>
                                    <h2>Aşağıdaki Uyarıları Dikkatle Okuyunuz.</h2>
                                    <h3>Üniversite Tabloları Bölümünden Üniversite Arayabilir , Genel Üniversite Tablosuna Erişebilirsiniz.</h3>
                                    <h3>Üniversite Ekle Bölümünden Sisteme Yeni Üniversite Ekleyebilirsiniz.</h3>
                                    <h3>Üniversite Güncelle Bölümünden Sistemde Bulunan Üniversiteler Üzerinde Güncelleme Yapabilirsiniz.</h3>

                                </td>
                            </tr>
                        </table>
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
