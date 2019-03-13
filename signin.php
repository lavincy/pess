<!DOCTYPE html>
<html>
<head>


</head>
<body>



<?php
include ('header.php');
//zhenquan

$con = mysql_connect("localhost","zhenquan","65648439Cc");
if(!$con)
    {
    die('Cannot connect to database :'.mysql_error());
    }

mysql_select_db("01_zhenquan_pessdb",$con);

$con = mysql_connect("localhost","zhenquan","65648439Cc");


mysql_select_db("01_zhenquan_pessdb",$con);

	if(isset($_POST['login'])){

		$nameid = $_POST['name'];
		$passid = $_POST['pass'];
		
		if(empty($nameid) || empty($passid)){
			echo '<script>alert("please fill up both username and password!");</script>';
			
		}
		
		else{
			$sql = "SELECT * FROM account WHERE username='$nameid' OR password='$passid';";
			$result = mysql_query($sql,$con);
			$num = mysql_num_rows($result);
			
			if($num == 1){
				echo '<script>alert("Welcome Agent!");</script>';
				session_start();
					$_SESSION['userId'] = $_POST['name'];
					$_SESSION['userName'] = 'CPL POH Z.Q';
					header("Location: logcall.php");
			}
			else{
				echo '<script>alert("Log-in Error!! User or pw is wrong!");</script>';
				
			}
			
		}
	}
	




?>

<fieldset>
  <legend>Sign-in</legend>
<form method="POST" action="<?php echo $_SERVER['PHP_SELF'] ?>">
<table>
	<tr>
	<p><td>User Name:</td>
	<td><input type="text" name="name"</td></p>


	</tr>

	<tr>
	<p><td>Password:</td>
	<td><input type="password" name="pass"</td></p>
	</tr>

	<tr>
	<td><input type="submit" name="login" value='login'></td>
	</tr>
			

	

</table>
</form>
</fieldset>

</body>
</html>