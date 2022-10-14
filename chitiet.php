<?php include 'inc/header.php' ?>
<?php
  if(isset($_GET['id']) && $_GET['id']!=NULL){
    $id = $_GET['id'];
  }else{
    header('Location:404.php');
  }
?>
<div class="clear40"></div>
<div class="container">
  <a href="./">Trang chủ</a> <i class="fa-solid fa-chevron-right"></i> Chi tiết
  <div class="clear10"></div>
  <div class="main">
    <?php
      $get_product_details = $product -> getproduct($id);
      if($get_product_details) {
        while($result = $get_product_details -> fetch_assoc()){
    ?>

    <div class="row">
      <div class="col-md-6 col-sm-12">
        <img src="./img/<?php echo $result['hinh'] ?>" alt="" width="100%">
      </div>
      <div class="col-md-6 col-sm-12">
        <h1 class="item-name chitiet"><?php echo $result['sanpham_name'] ?></h1>
        <div class="flex-bw flex-bw-wide">
          <p class="old-pri chitiet-gia">
            <?php echo number_format($result['sanpham_gia'])." đ" ; ?>
          </p>
          <p class="new-pri bold chitiet">
            <?php echo number_format($result['sanpham_giakhuyenmai'])." đ" ; ?>
          </p>
        </div>
        <div class="chitiet-main">
          <?php echo $result['sanpham_chitiet'] ?>
          <hr>
        </div>
        <input type="submit" class="btn btn-primary chitiet-sunmit" value="Đặt turn ngay và luôn">
      </div>
    </div>

    <?php } } ?>

  </div>
</div>
<div class="clear40"></div>

<?php include 'inc/footer.php' ?>