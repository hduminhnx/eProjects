<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>University of HaiDuong</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<script language="javascript">
	function checkInput() {
		var txtName = document.frmMain.cmt;
		if (txtName.value == ""){
			alert("Thí sinh nhập chính xác số chứng minh nhân dân.");
			txtName.focus();		
			return false;
		}
	}
	function isNumberKey(evt){
       var charCode = (evt.which) ? evt.which : event.keyCode;
       if(charCode == 59 || charCode == 46)
        return true;
       if (charCode > 31 && (charCode < 48 || charCode > 57))
          return false;
       return true;
    }
</script>
<body>
<div id="web">
	<div id="header">
    	<div id="logo"><img src="logo.jpg" height="150px" width="150px"></div>
        <div id="school">
        	<font face="Tahoma, Geneva, sans-serif" size="+2" color="#0000FF"><strong>TRƯỜNG ĐẠI HỌC HẢI DƯƠNG</strong></font><br><br>
       <font face="Tahoma, Geneva, sans-serif" size="+1" color="#FF00FF"><strong>KẾT QUẢ TUYỂN SINH SAU ĐẠI HỌC 2016 (ĐỢT 1)</strong></font>
        </div>
    </div>
    <div id="center">
        	<form id="frmMain" name="frmMain" method="post" action="result.php">
            <div id="information">
        		  <div id="info"> Số chứng minh nhân dân </div>
                  <div id="personal">
                  	<input type="text" id = "cmt" name="cmt" onKeyPress="return isNumberKey(event)">
        		  </div>
                  <div id="lookup">
                    <input type="submit" id="submit" name="submit" value="Tra cứu" onClick="return checkInput()" class="button">
                    <input type="reset" id="reset" name="reset" value="Làm lại" class="button">
                  </div>
            </div>
       		</form>
        </div>
    <div id="footer">
    	Developed by Nguyen Xuan Minh, 2016, Unversity of Hai Duong, Tel: (03203)710.919, Email: uhdminhnguyenxuan.edu@gmail.com
        <div>
</div>
</body>
</html>
