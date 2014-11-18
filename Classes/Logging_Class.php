<?php

class Logging{
    public function time_stamp(){
		$time= date("m-d-Y H:i:s");
		return $time;
	}
    public function add_entry($user,$message){
		//pass user and what happened to the log function
		//this function will add timestamp, and write to a file
		$file = fopen('logging.txt', 'a');
		$stamp=$this->time_stamp();
		$write=$stamp.' '.$user. ' '.$message."\n";
		fwrite($file,$write);
	}
}

?>