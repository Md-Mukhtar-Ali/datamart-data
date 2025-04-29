#!/usr/bin/php
<?php
class car{

	public $brand;
	public $model;
        public $color;


function set_data($brand, $model, $color)
{
   $this->brand=$brand;
   $this->model=$model;
   $this->color=$color;
}

function get_data()
{
	print("brand name is ".$this->brand."\n");
	print("model name is ".$this->model."\n");
	print("color name is ".$this->color."\n");
		
}
}

?>
