<?php
$stu_id = $_POST['sid'];
$stu_ndp = $_POST['sndp'];
$stu_name = $_POST['sname'];
$stu_address = $_POST['saddress'];
$stu_class = $_POST['sclass'];
$stu_phone = $_POST['sphone'];
$stu_period = $_POST['speriod'];
$stu_position = $_POST['sposition'];

include 'config.php';

$sql = "UPDATE student SET sndp = '{$stu_ndp}', sname = '{$stu_name}', saddress = '{$stu_address}', sclass = '{$stu_class}', sphone = '{$stu_phone}', speriod = '{$stu_period}', sposition = '{$stu_position}'  WHERE sid = {$stu_id}";
$result = mysqli_query($conn, $sql) or die("Query Unsuccessful.");

header("Location: http://localhost/system%20ASW/");

mysqli_close($conn);

?>
