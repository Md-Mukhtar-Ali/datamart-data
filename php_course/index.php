<?php

include 'car.php';
$classes = get_declared_classes();
print_r($classes);

$obj = new car();
$obj->set_data("tata","SUV","white");
$obj->get_data();


?>
