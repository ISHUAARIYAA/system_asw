<?php
 $stu_ndp = $_POST['sndp'];
 $stu_name = $_POST['sname'];
 $stu_address = $_POST['saddress'];
 $stu_class = $_POST['class'];
 $stu_phone = $_POST['sphone'];
 $stu_period = $_POST['speriod'];
 $stu_position = $_POST['sposition'];


$conn = mysqli_connect("localhost","root","","crud") or die("Connection Failed");

 $stu_ndp = $_POST['sndp'];
$sql = "INSERT INTO student(sndp,sname,saddress,sclass,sphone,speriod,sposition) VALUES ('{$stu_ndp }','{$stu_name}','{$stu_address}','{$stu_class}','{$stu_phone}','{$stu_period}','{$stu_position}')";
$result = mysqli_query($conn, $sql) or die("Query Unsuccessful.");

header("Location: http://localhost/system%20ASW/");

mysqli_close($conn);

?>
