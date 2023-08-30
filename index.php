<?php
include 'header.php';
?>
<div id="main-content">
    <h2>All Records</h2>
  
    <?php
      include 'config.php';

      $sql = "SELECT * FROM student JOIN studentclass WHERE student.sclass = studentclass.cid";
      $result = mysqli_query($conn, $sql) or die("Query Unsuccessful.");

      if(mysqli_num_rows($result) > 0)  {
    ?>
    <table cellpadding="7px">
        <thead>
        <th>Id</th>
        <th>Ndp</th>
        <th>Name</th>
        <th>Address</th>
        <th>Class</th>
        <th>Phone</th>
        <th>Period</th>
        <th>position</th>
        <th>Action</th>
        
        

        
        </thead>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <tbody>
          <?php
            while($row = mysqli_fetch_assoc($result)){
          ?>
            <tr>
                <td><?php echo $row['sid']; ?></td>
                <td><?php echo $row['sndp']; ?></td>
                <td><?php echo $row['sname']; ?></td>
                <td><?php echo $row['saddress']; ?></td>
                <td><?php echo $row['cname']; ?></td>
                <td><?php echo $row['sphone']; ?></td>
                <td><?php echo $row['speriod']; ?></td>
                <td><?php echo $row['sposition']; ?></td>
                <td>
                    <a href='edit.php?id=<?php echo $row['sid']; ?>'><i class="fa fa-edit" style="font-size:33px; color:black;padding:5px"></i></a>
                    <a href='delete-inline.php?id=<?php echo $row['sid']; ?>'><i class="material-icons" style="font-size:35px;color:black;padding:20px;padding-top: 5px;" >delete</i></a>
                </td>
            </tr>
          <?php } ?>
        </tbody>
    </table>
  <?php }else{
    echo "<h2>No Record Found</h2>";
  }
  mysqli_close($conn);
  ?>
</div>
</div>
</body>
</html>
