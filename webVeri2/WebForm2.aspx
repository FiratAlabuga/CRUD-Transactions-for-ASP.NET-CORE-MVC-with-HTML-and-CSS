<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="webVeri2.WebForm2" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <title>Sidebar Layout - Scoop Themes Template</title>

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
<title>Universite Güncelleme Sayfası</title>    
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
    </style>
 
<body>

    <div id="wrapper">

        <aside id="sideBar">
            <ul class="main-nav">
                <!-- Your Logo Or Site Name -->
                <li class="nav-brand">
                    <a href="#"><img src="/img/ptsl.jpg" alt=""></a>
                </li>
                <!-- Search -->
                <li class="main-search">
                    <form action="#">
                        <input type="text" class="form-control search-input" placeholder="Search here...">
                        <i class="fa fa-search"></i>
                    </form>
                </li>
                <li><a href="/UniversiteGosterim.aspx">- Universite Gösterim Ekranı</a> </li>
                <li><a href="/UniversiteEkle.aspx">- Universite Ekleme</a></li>
                <li><a href="/UniversiteGuncelleme.aspx">- Universite Güncelleme</a></li>
                <li><a href="#">- UI Elements</a></li>
                <li><a href="#">- Calendar / Dates</a></li>
                <li> <a href="#">- Drag / Drop</a></li>
                <li> <a href="#">- App Views</a></li>
                <li><a href="#">- Another Menu item</a></li>
            </ul>
        </aside>

        <!-- Main Section -->
        <section class="main-section">
            <!-- Add Your Content Inside -->
            <div class="content">
                <form id="form1" runat="server">
                    <div class="form-group">
                            

            <asp:Label ID="Label1" runat="server" Text="Universite ID:" CssClass="label"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="button"  Text="Ara" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Ekle" OnClick="Button2_Click" />
<asp:gridview id="GridView1" 
  autogeneratecolumns="False"
  emptydatatext="Veriye Ulaşılamadı. Lütfen SQL ile bağlantı kurunuz." 
 HeaderStyle-BorderWidth="5px"
    CssClass=" GridViewStyle"
  allowpaging="True" 
  runat="server" >
    <Columns >
        <asp:BoundField DataField="UniversiteAdi" HeaderText="Universite Adı" HeaderStyle-BackColor="Red" 
            InsertVisible="False" ReadOnly="True" SortExpression="Padi"/>
        <asp:BoundField DataField="UniversiteSehir" HeaderText="Universitenin Bulunduğu Şehir" HeaderStyle-BackColor="Red"
            SortExpression="Psoyadi" />
        <asp:BoundField DataField="UniversiteKampus" HeaderText="Üniversite Kampüs" HeaderStyle-BackColor="Red"
            SortExpression="Maas" />
        <asp:BoundField DataField="UniversiteTelefon" HeaderText="Üniversite Telefon" HeaderStyle-BackColor="Red"
            SortExpression="depn" />
        <asp:BoundField DataField="UniversiteKapasite" HeaderText="Üniversite Kapasite" HeaderStyle-BackColor="Red"
            SortExpression="gn" />
    </Columns>
      <pagersettings mode="Numeric"
          position="Bottom"           
          pagebuttoncount="10"/>
                      
        <pagerstyle backcolor="Red"
          height="105px"
          verticalalign="Bottom"
          horizontalalign="Center"/>
</asp:gridview>
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
