<html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en"> 
<link rel="stylesheet" type="text/css" href="style.css" />
<head> 
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
     <title>Trường Đại học Hải Dương</title> 
     <style type="text/css"> 
            #wrapper {width: 1200;margin: 20px auto;} 
            table#user_info { 
				margin: 20px auto;
                font-family: Tahoma, Geneva, sans-serif; 
                font-size: 13px;text-align: left; line-height: 1.6em; 
                background: #fff; 
                width: 1180px; 
                border-collapse: collapse;   
				border:1px solid #DDDDDD;  
            } 
			p{color:#F94677;font-style:italic};
            th {padding: 10px 8px;border-bottom: 2px solid #6678b1;} 
            th a {font-size: 15px;font-weight: bold;color: #039; text-decoration: none; } 
            td {color: #669; padding: 9px 8px 0px 8px; margin:auto} 
            tbody tr:hover td { color: #009; } 
            ul.nav {overflow: hidden; padding: 0px;} 
            ul.nav li { display: inline; float: left;margin: 0px 5px;background: #8AB1FE;} 
            ul.nav li a {color: white;text-decoration: none;display: block; padding: 3px 8px;} 
            ul.nav li:hover {background: #3A7ABE;} 
            ul.nav li.current {font-weight: bold; padding: 3px 8px; } 
     </style> 
</head> 
<body>
<div id="web_result">
	<div id="header">
    	<div id="logo"><img src="logo.jpg" height="150px" width="150px"></div>
        <div id="school">
        	<font face="Tahoma, Geneva, sans-serif" size="+2" color="#0000FF"><strong>TRƯỜNG ĐẠI HỌC HẢI DƯƠNG</strong></font><br><br>
       <font face="Tahoma, Geneva, sans-serif" size="+1" color="#FF00FF"><strong>KẾT QUẢ TUYỂN SINH SAU ĐẠI HỌC 2016 (ĐỢT 1)</strong></font>
        </div>
    </div>
<div id="wrapper">
<?php
	$connection = mysqli_connect("localhost","root","","uhd_kqts");
	mysqli_query($connection,"SET NAMES UTF8");
	if (isset($_POST['submit'])){
		$cmt = isset($_POST['cmt']) ? $_POST['cmt'] : '';
	}else{
		if(isset($_GET['cmt'])){
			$cmt = $_GET['cmt'];
		}
		
	}
	// Sử dụng phân trang
	$display = 5;
	$trangthai = "HL";
	if(isset($_GET['page'])&&(int)$_GET['page']){
		$page = $_GET['page'];
	}else{
		$query = "SELECT COUNT(*) FROM caohoc WHERE cmt LIKE '%".$cmt."%' AND trangthai='".$trangthai."'";
		$res = mysqli_query($connection,$query) or die("Can't select information!");
		$rows = mysqli_fetch_array($res, MYSQLI_NUM);
		$record = $rows[0];
		if($record == 0){
			echo("<font color='#EE0000'>Không có thí sinh có số chứng minh thư này.</font>");
		}
		if($record > $display){
			$page = ceil($record/$display);
		}else{
			$page = 1;
		}
	}
	$start = (isset($_GET['start'])&&(int)$_GET['start']>=0)?$_GET['start']:0;
	$sql = "SELECT * FROM caohoc  WHERE cmt LIKE '%".$cmt."%' AND trangthai='".$trangthai."'LIMIT $start, $display";	
	$result = mysqli_query($connection, $sql) or die("Can't select information!".mysqli_error($connection));
?>
<div id="center_result">
<table id="candiate_info">
<thead>
	<tr height="40">
		<th>Số báo danh</th>
		<th>Họ và tên</th>
		<th>Ngày sinh</th>
		<th>Giới tính</th>
		<th>Ngành học</th>
		<th>Toán kinh tế</th>
		<th>Kinh tế học</th>
		<th>Tiếng anh</th>
		<th>Tổng điểm</th>
        <th>Trúng tuyển</th>
	</tr>
</thead>
<?php
		while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
			?>
				<tbody>
				<tr>
					<td><?php echo $row['sobaodanh'];?></td>
					<td><?php echo $row['hovaten'];?></td>
					<td> <?php echo $row['ngaysinh'];?></td>
					<td><?php echo $row['gioitinh'];?></td>
					<td><?php echo $row['nganhduthi'];?></td>
					<td><?php echo $row['toankinhte'];?></td>
					<td><?php echo $row['kinhtehoc'];?></td>
					<td><?php echo $row['tienganh'];?></td>
                    <td><?php echo $row['tongdiem'];?></td>
					<td><?php echo $row['trungtuyen'];?></td>
				</tr>
				</tbody>
		<?php
		}
	?>
	</table>
    <ul class="nav">
    	<?php
			if($page > 1){
				$next = $start + $display;
				$prev = $start - $display;
				$current = ($start/$display) + 1;
				if($current != 1){
					echo "<li><a href='result.php?start=$prev&cmt=$cmt'>Previous</a></li>";
				}
				for($i=1;$i<=$page;$i++){
					if($current != $i){
						echo "<li><a href='result.php?start=".($display*($i-1))."&cmt=$cmt'>$i</a>";
					}else
						echo "<li class='current'>$i</li>";
				}
				if($current != $page){
					echo "<li><a href='result.php?start=$next&cmt=$cmt'>Next</a></li>";
				}
			}
		?>
    </ul>
        </div>
        <div id="note">
        	<p>Ghi chú: </p>
            <p>1) Điểm trúng tuyển từ 10.0 điểm trở lên và không có môn thi nào dưới 5.0 điểm;</p>
            <p>2) Thí sinh trúng tuyển đến nhập học vào ngày 28 tháng 11 năm 2016 tại cơ sở Liên Hồng.</p>
        </div>
           <div id="footer_result">
    	Developed by Nguyen Xuan Minh, 2016, Unversity of Hai Duong, Tel: (03203)710.919, Email: uhdminhnguyenxuan.edu@gmail.com
        <div>
</body>
</html>

