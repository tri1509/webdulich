<?php include './inc/header.php';?>
<div class="container">
  <div class="main">
    <div class="clear10"></div>
    <?php
		$show_brand = $brand->show_brand();
		if($show_brand){
      $i=0;
				while($result = $show_brand->fetch_assoc()){
          $i++;
		?>
    <div class="clear10"></div>
    <h3 id="<?php echo $i ?>" class="tit-pub" style="scroll-margin-top: 70px;">
      <?php echo $result['brand_name'] ?>
    </h3>
    <a href="" class="main-chitiet">Xem tất cả</a>
    <div class="clear20"></div>
    <div class="img-slider">
      <?php
			$id = $result['brand_id'];
			$show_sp = $product -> getinformation($id);
			if($show_sp){
				while($result_sp = $show_sp->fetch_assoc()){
		?>
      <div class="img-item">
        <div class="home-product__item-img" style="background-image:url(./img/<?php echo $result_sp['hinh'] ?>);">
        </div>
        <div class="ct-item-pro">
          <p class="item-name"><?php echo $result_sp['sanpham_name'] ?></p>
          <div class="clear10"></div>
          <div class="flex-bw">
            <p class="old-pri">
              <?php echo number_format($result_sp['sanpham_gia'])." đ" ; ?>
            </p>
            <p class="new-pri">
              <?php echo number_format($result_sp['sanpham_giakhuyenmai'])." đ" ; ?>
            </p>
          </div>
          <div class="clear10"></div>
          <div class="phuongtien">
            <p> Xe 4 chỗ<i class="fa-solid fa-car"></i></p> <br>
            <p> Xe 16 chỗ<i class="fa-solid fa-bus"></i></p>
          </div>
          <div class="clear10"></div>
          <a href="chi-tiet/<?php echo $result_sp['sanpham_id'] ?>.html" class="addtocart">xem tour</a>
        </div>
      </div>
      <?php } } ?>
    </div>
    <?php } } ?>
    <div class="clear40"></div>
  </div>
</div>
<?php include './inc/footer.php';?>