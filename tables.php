<?php
    $arr = [];
    for($i=0; $i < 11; $i ++) {
      $arr["next" ]= $arr;
      $arr["value" ] = $i;
    }

    var_dump($arr);
    print_r($arr);
?>
