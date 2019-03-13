<?php 
session_start();
if (!isset($_SESSION['userName'])){
$uidUser = 'YOU HAVE NOT LOGIN!!';	
}

else{
	$uidUser = $_SESSION['userName'];
}
?>

<style>
a:visited{
	color:white;
	}
* {
	font-family:Comic Sans MS;
	
}

ul.nav {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: black;
  width:60%;
  margin-top:-21px;
}

li.nav {
  float: left;
  //padding: 0px 25px;
  //margin-left:7px;
  display:inline-block;
  color: white;
  text-decoration: none;
  font-size: 20px;
  border: 2px solid white;
  width:24.28%;
}

li a.nav {
  display:inline-block;
  color: white;
  text-align: center;
  padding: 5px 6px;
  text-decoration: none;
}

li a.nav:hover {
  background-color: #111;
  
}

.aaa {
text-align: center;
background-color:black;
color: white;
width: 59.6%;
font-size: 24px;
border: 2px solid white;
}

.qqq {
text-align:center;
margin-left:30%;
padding-top:200px;
z-index:1;
}


form{
	text-align:center;
	  max-width: 80%;
}
.lll {
	padding-top: 100px;
	padding-bottom: 100px;


}
fieldset{
		margin-left:25%;
		margin-top:40px;
		max-width:39%;
}
table{
	text-align:left;

}
.form-container{
margin-left:10%;
}

.right{
	float:right;
}

</style>
<div class="right">
<?php echo $uidUser; ?>
</div>
<div class="qqq">

<div class="aaa"><marquee>Police Emergency Service System</marquee></div>
<br>
<ul class="nav">
  <li class="nav"><a class="active" href="logcall.php">Log-Call</a></li>
  <li class="nav"><a class="active" href="update.php">Update</a></li>
  <li class="nav"><a href="signin.php">Sign-In</a></li>
  <li class="nav"><a href="logout.php">Sign-Out</a></li>
</ul>

</div>


