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
	<div id="header">
    	<div id="logo">
        	<img src="logo.jpg" height="160" width="160"/>    	
        </div>
        <div id="info">
        	<h1 align="center">TRƯỜNG ĐẠI HỌC HẢI DƯƠNG</h1>
            <h3 align="center">KẾT QUẢ TUYỂN SINH LIÊN THÔNG CAO ĐẰNG - ĐẠI HỌC NĂM 2015</h3>
        </div>
    </div>
<div id="wrapper">
<?php
	$connection = mysqli_connect("localhost","root","","uhd_kqts");
	mysqli_query($connection,"SET NAMES UTF8");
	
	if (isset($_POST['submit'])){
		$sbdht = isset($_POST['sbdht']) ? $_POST['sbdht'] : '';
		$tttc = isset($_POST['tttc']) ? $_POST['tttc'] : '';
	}else{
		if(isset($_GET['sbdht'])&& $_GET['tttc']){
			$sbdht = $_GET['sbdht'];
			$tttc =  $_GET['tttc'];
		}
	}
	if($sbdht == 1 && $tttc !=''){
		$querybysbd = "SELECT * FROM lt2015 WHERE SBD = '".$tttc."'";
		$result = mysqli_query($connection,$querybysbd);
	}else if ($sbdht == 2 && $tttc!=''){
		$display = 5;
		if(isset($_GET['page'])&&(int)$_GET['page']){
			$page = $_GET['page'];
		}else{
			$query = "SELECT count(*) FROM lt2015 WHERE Hovaten LIKE '%".$tttc."%'";
			$res = mysqli_query($connection,$query) or die("Cannot select information.");
			$rows = mysqli_fetch_array($res, MYSQLI_NUM);
			$record = $rows[0];
			if($record == 0){
				echo("<font color='#EE0000'>Không có dữ liệu thỏa mãn.</font>");
			}
			if($record > $display){
				$page = ceil($record/$display);
			}else{
				$page = 1;
			}
		}
		$start = (isset($_GET['start'])&&(int)$_GET['start']>=0)?$_GET['start']:0;
		$sql = "SELECT * FROM lt2015 WHERE Hovaten LIKE '%".$tttc."%'LIMIT $start, $display";	
		$result = mysqli_query($connection,$sql) or die("Cannot select data".mysqli_error($connection));
	}
	?>
	<table id="user_info">
	<thead>
        <tr height="40">
            <th>Số báo danh</th>
            <th>Họ và tên</th>
            <th>Giới tính</th>
            <th>Ngày sinh</th>
            <th>Nơi sinh</th>
            <th>Ngành học</th>
            <th>Toán cao cấp</th>
            <th>Cơ sở ngành</th>
            <th>Chuyên  ngành</th>
            <th>Trúng tuyển</th>
        </tr>
    </thead>
	<?php
		while($row = mysqli_fetch_array($result, MYSQL_ASSOC)){
			?>
				<tbody>
				<tr>
					<td><?php echo $row['SBD'];?></td>
					<td><?php echo $row['Hovaten'];?></td>
					<td> <?php echo $row['Gioitinh'];?></td>
					<td><?php echo $row['Ngaysinh'];?></td>
					<td><?php echo $row['Noisinh'];?></td>
					<td><?php echo $row['Nganh'];?></td>
					<td><?php echo $row['TOAN'];?></td>
					<td><?php echo $row['CSN'];?></td>
					<td><?php echo $row['CN'];?></td>
					<td><?php echo $row['TT'];?></td>
				</tr>
				</tbody>
		<?php
		}
	?>
	</table>
    <?php
		if($sbdht == 2 && $tttc !=''){
	?>
    <ul class="nav">
    	<?php
			if($page > 1){
				$next = $start+$display;
				$prev = $start - $display;
				$current = ($start/$display)+1;
				if($current != 1){
					echo "<li><a href='result.php?start=$prev&sbdht=$sbdht&tttc=$tttc'>Previous</a></li>";
				}
				for($i=1;$i<=$page;$i++){
					if($current != $i){
						echo "<li><a href='result.php?start=".($display*($i-1))."&sbdht=$sbdht&tttc=$tttc'>$i</a>";
					}else
						echo "<li class='current'>$i</li>";
				}
				if($current != $page){
					echo "<li><a href='result.php?start=$next&sbdht=$sbdht&tttc=$tttc'>Next</a></li>";
				}
			}
		?>
    </ul>
       <?php
		}
		?>
        <div>
        <div id="info">
        	<p>Ghi chú: </p>
            <p>1) Điểm trúng tuyển từ 15.0 điểm trở lên và không có môn thi nào dưới 5.0 điểm</p>
            <p>2) Thí sinh trúng tuyển đến nhập học vào ngày 17 tháng 02 năm 2016 tại cơ sở Hải Tân.</p>
        </div>
</body>
</html>

