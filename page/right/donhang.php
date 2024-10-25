
<?php
// Phân trang
if(isset($_GET['trang'])){
    $page = $_GET['trang'];
}else{
    $page = '';
}
if($page == '' || $page == 1){
    $begin = 0;
}else{
    $begin = ($page*5)-5;
}
?>

<?php
$userEmail = $_SESSION['email']; // Get the logged-in user's email from the session variable

$sql_lietke_dh = "SELECT * FROM tbl_cart, tbl_dangky
                  WHERE tbl_cart.id_khachhang = tbl_dangky.id_dangky 
                  AND tbl_dangky.email = '$userEmail' 
                  ORDER BY tbl_cart.id_cart DESC LIMIT $begin, 5";

$query_lietke_dh = mysqli_query($mysqli, $sql_lietke_dh);
?>
 <div class="row" style="margin-top: 20px;">
	
		<table class="table table-bordered table-hover" style="margin-top: 20px;">
    <thead>
  <tr>
  	<th>STT</th>
    <th>Mã đơn hàng</th>
    <th>Tên khách hàng</th>
    <th>Địa chỉ</th>
    <th>Email</th>
    <th>Số điện thoại</th>
    <th>Thời gian tạo</th>
    <th>Tình trạng</th>
    <th>Xác nhận</th>

  </tr>
  <?php
  $i = 0;
  while($row = mysqli_fetch_array($query_lietke_dh)){
$currentTimestamp = time(); 
$orderTimestamp = strtotime($row['updata_time']);

  	$i++;
  ?>
  <tr>
  	<td><?php echo $i ?></td>
    <td><?php echo $row['code_cart'] ?></td>
    <td><?php echo $row['tenkhachhang'] ?></td>
    <td><?php echo $row['diachi'] ?></td>
    <td><?php echo $row['email'] ?></td>
    <td><?php echo $row['dienthoai'] ?></td>
    <td><?php echo $row['updata_time'] ?></td>
    <td>
    <?php
    if($row['cart_status'] == 1){
        echo "Chờ xác nhận";
        ?>
        <div class="clear"></div>
            <a href="chitiet.php?quanly=xemdonhang&query=xemdonhang&code=<?php echo $row['code_cart']; ?>">Xem đơn hàng</a>
        <?php
    } elseif($row['cart_status'] == 0) {
        echo "Đơn hàng đang được giao ";
        ?>
        <div class="clear"></div>
        <a href="chitiet.php?quanly=xemdonhang&query=xemdonhang&code=<?php echo $row['code_cart']; ?>">Xem đơn hàng</a>
    <?php
    } elseif($row['cart_status'] == 2){
        echo "Đã hoàn thành giao hàng";
        ?>
        <div class="clear"></div>
            <a href="chitiet.php?quanly=xemdonhang&query=xemdonhang&code=<?php echo $row['code_cart']; ?>">Xem đơn hàng</a>
        <?php
    }
    ?>
</td>
<td>
    <?php
    if ($row['cart_status'] == 1) {
        echo "";
    } elseif ($row['cart_status'] == 0) {
    ?>
    <a href="chitiet.php?quanly=xuly&query=xuly&code=<?php echo $row['code_cart']; ?>" class="btn btn-success">Đã nhận</a>
    <?php       
    }  elseif (($currentTimestamp - $orderTimestamp) > 600000) {
      // Nếu đã qua 7 ngày, hiển thị nút "Xem đơn hàng" thay vì "Đổi trả"
      ?>
      <a href="chitiet.php?quanly=xemdonhang&query=xemdonhang&code=<?php echo $row['code_cart']; ?>" class="btn btn-primary">Xem đơn hàng</a>
      <?php
  } else {
      // Nếu chưa qua 7 ngày, hiển thị nút "Đổi trả"
      ?>
      <a href="chitiet.php?quanly=hoanhang&query=hoanhang&code=<?php echo $row['code_cart']; ?>" class="btn btn-warning">Đổi trả</a>
      <?php
  }
    ?>
</td>

    
  </tr>
  <?php
  } 
  ?>
   </tr>
  </thead>
  
</table>
 </div>
<?php
// phân trang
     $sql_trang = mysqli_query($mysqli,"SELECT * FROM tbl_sanpham");
     $row_count = mysqli_num_rows($sql_trang);
     $trang = ceil($row_count/20);
     ?>
   <nav style="  width: 0%; margin: auto;margin-top: 70px;" aria-label="Page navigation example">
  <ul class="pagination">
      <a class="page-link" href="#" aria-label="Previous">    
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <?php              
                for($i=1;$i<=$trang;$i++){
                ?>
    <span class="page-item"><a class="page-link" <?php if($i == $page){echo 'style="background: #bfbfbf;"';}else{ echo ''; } ?> href="chitiet.php?quanly=donhang&trang=<?php echo $i ?>"><?php echo $i ?></a></span>        
    <?php
             }
             ?>
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>   