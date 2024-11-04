<?php
 $db = mysqli_connect('localhost', 'root', 'Danuki@123') or
        die ('Unable to connect. Check your connection parameters.');
        mysqli_select_db($db, 'miniproject' ) or die(mysqli_error($db));
        
?>
