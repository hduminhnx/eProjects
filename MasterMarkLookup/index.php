<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>University of HaiDuong</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<script language="javascript">
	function checkInput() {
		var txtName = document.MyForm.tttc;
		if (txtName.value == ""){
			alert("Bạn phải nhập họ tên hoặc số báo danh.");
			txtName.focus();		
			return false;
		}
	}
	function String sanitizing(String s){
		if(s == null){
			return null;
		}
		String str = new String();
        for (int i = 0; i < s.length(); i++) {
            switch (s.charAt(i)) {
            case '<':
                str += "&lt;"; 
                break;
            case '>':
                str += "&gt;";
                break;
            case '&':
                str += "&amp;";
                break;
            case '\'':
                str += "&#39;";
                break;
            case '\"':
                str += "&quot;";
                break;
            default:
                str += s.charAt(i);
            }
        }
        return str.toString();
	}
</script>
<body>
<div id="web">
	<div id="header">
    	<div id="logo">
        	<img src="logo.jpg" height="160" width="160"/>    	
        </div>
        <div id="info">
        	<h1 align="center">TRƯỜNG ĐẠI HỌC HẢI DƯƠNG</h1>
            <h3 align="center">KẾT QUẢ TUYỂN SINH LIÊN THÔNG CAO ĐẰNG - ĐẠI HỌC NĂM 2015</h3>
        </div>
    </div>
    <div id="center">
        	<form id="MyForm" name="MyForm" method="post" action="result.php">
        		  <div id="top1">
                  	<table align="center">
                        <tr>
                        	<td id="txt">Tra cứu thông tin theo</td>
                            <td>
                            	<SELECT name="sbdht" id="sbdht">
			  						<option value="1" selected>Số báo danh</option>
			  						<option value="2">Họ và tên</option>
								</SELECT>
                            </td>
                        </tr>
                        <tr>
                        	<td id="txt">Nhập thông tin tra cứu</td>
                            <td><input type="text" name="tttc" id="tttc"></td>
                        </tr>
                         <tr>
                            <td>&nbsp;</td>
                            <td align="center">
                            	<input type="submit" name="submit" id="txt" value="Tra Cứu" onClick="return checkInput()">
                            	<input type="reset" id="txt" name="reset" value="Làm lại">
                            </td>
                        </tr>
                    </table>
        		  </div>
       		</form>
        </div>
    <div id="footer">
    	Developed by Nguyễn Xuân Minh, 2016, Hai Duong Unversity, Tel:(03203)861.249, Fax: (03203)861.249, Email: uhdminhnguyenxuan.edu@@gmail.com
    <div>
</div>
</body>
</html>
