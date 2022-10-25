<?php
  include 'lib/session.php';
  Session::init();
  ob_start();
?>
<?php
  include_once 'lib/database.php';
  include_once 'helpers/format.php';
  spl_autoload_register(function($class){
      include_once "classes/".$class.".php";
  });

  $db = new Database();
  $brand = new brand();
  $product = new product();
?>
<?php
  header("Cache-Control: no-cache, must-revalidate");
  header("Pragma: no-cache"); 
  header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); 
  header("Cache-Control: max-age=2592000");
?>
<!DOCTYPE html
  PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang='vi'>

<head>
  <base href="http://localhost/webdulich/">
  <meta http-equiv="Content-Type" content="text/php; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta content='index,follow,all' name='robots' />
  <link rel="shortcut icon" href="./img/iconhome.png" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
  <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="./css/lightslider.css" />
  <link rel="stylesheet" href="./css/nivo-slider.css">
  <link rel="stylesheet" href="./css/reset.css" />
  <link rel="stylesheet" href="./css/style.css" />
  <title>Webdulich</title>
</head>
<div class="loader">
  <span class="fas fa-spinner xoay icon"></span>
</div>

<body class="preloading">
  <div class="header hide991">
    <div class="header-top">
      <ul class="header-top-list">
        <li class="header-top-item">
          <i class="fa-solid fa-phone header-top-item-icon"></i>
          0909 885 625 - 0909 885 625
        </li>
        <li class="header-top-item">
          <i class="fa-solid fa-envelope header-top-item-icon"></i>
          dulichhoanvu.gmail.com
        </li>
        <li class="header-top-item">
          <i class="fa-solid fa-location-pin header-top-item-icon"></i>
          zalo : 0909 885 625
        </li>
      </ul>
    </div>

    <div class="header-bottom" id="header-bottom">
      <img src="./img/dl-hoan-vu.png" alt="" width="200" class="header-bottom-img">
      <span class="header-bottom-span">
        <img src="./img/iconhome.png" alt="" width="30">
      </span>
      <div class="header-bottom-list">
        <div class="header-bottom-item header-bottom-item-tour">
          tour
          <i class="fa-solid fa-chevron-down header-bottom-icon"></i>
          <div class="header-bottom-item-tour-list">
            <ul>
              <?php
                $show_brand = $brand->show_brand();
                if($show_brand){
                  $i=0;
                    while($result = $show_brand->fetch_assoc()){
                      $i++;
                ?>
              <li>
                <a href="#<?php echo $i ?>">
                  <?php echo $result['brand_name'] ?>
                </a>
              </li>
              <?php } } ?>
            </ul>
          </div>
        </div>
        <div class="header-bottom-item">bảng giá</div>
        <div class="header-bottom-item header-bottom-item-dropdown">
          thông tin du lịch <i class="fa-solid fa-chevron-down header-bottom-icon"></i>
          <div class="header-bottom-item-menu">
            <div class="header-bottom-item-menu-left">
              <div class="row">
                <?php
                $show_brand = $brand->show_brand();
                if($show_brand){
                    while($result = $show_brand->fetch_assoc()){
                ?>
                <div class="col-4">
                  <h4 class="menu-left-brand">
                    <a href=""><?php echo $result['brand_name'] ?></a>
                  </h4>
                  <ul class="menu-left-list">
                    <li><a href="">Xe giường nằm</a></li>
                    <li><a href="">Xe Phương trang</a></li>
                    <li><a href="">Xe Thành Bưởi</a></li>
                    <li><a href="">Xe Khách</a></li>
                    <li><a href="">Xe Ôm</a></li>
                  </ul>
                </div>
                <?php }} ?>
              </div>
              <div class="clear20"></div>
            </div>
            <div class="header-bottom-item-menu-right">
              <div class="grid">
                <div class="grid-item">
                  <img src="./img/02.jpg" alt="" />
                </div>
                <div class="grid-item">
                  <img src="./img/21.jpg" alt="" />
                </div>
                <div class="grid-item">
                  <img src="./img/23.jpg" alt="" />
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="header-bottom-item">liên hệ</div>
      </div>
    </div>
  </div>
  <div class="show991">
    <div class="modal-mobile" id="modal-mobile" onclick="navMobile()"></div>
    <div class="header-mobile">
      <span class="header-bottom-icon-mobile" onclick="navMobile()">
        <i class="fa-sharp fa-solid fa-bars"></i>
      </span>
      <img src="./img/dl-hoan-vu.png" alt="" width="200" class="header-bottom-img">
      <div class="nav-mobile" id="nav-mobile">
        <ul class="header-bottom-list">
          <span class="header-bottom-icon-mobile-close" onclick="navMobile()">
            <i class="fa-solid fa-xmark"></i>
          </span>
          <li class="header-bottom-item">tour<i class="fa-solid fa-chevron-down header-bottom-icon"></i></li>
          <li class="header-bottom-item">bảng giá</li>
          <li class="header-bottom-item">thông tin du lịch</li>
          <li class="header-bottom-item">hỗ trợ</li>
          <li class="header-bottom-item">liên hệ</li>
          <li class="header-bottom-item">đặt trước</li>
          <li class="header-bottom-item">vị trí</li>
        </ul>
      </div>
    </div>
  </div>
  <div class="container_slider">
    <div class="main-banner">
      <div class="slider-wrapper">
        <div id="mainSlider" class="nivoSlider">
          <?php
          $show_sider = $brand->show_sider();
          if($show_sider){
              while($result_sider = $show_sider->fetch_assoc()){
          ?>
          <a href="javascript:void(0);"><img src="img/<?php echo $result_sider['slider_img'] ?>"
              class="fullwidth" /></a>
          <?php } } ?>
        </div>
      </div>
    </div>
  </div>