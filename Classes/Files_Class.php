<?php
class Files{
    /*
     *File Class to handle uploads etc.
     *
     *
     */
    private $allowedTypes  = array("pdf");
    private $uploadLocation = "uploads";
     public function upload($file_name,$file_size,$file_tmp,$file_type){
        $errors= array(); 
        $file_ext=strtolower(end(explode('.',$file_name)));	
        if(in_array($file_ext,$this->allowedTypes )=== false){
         $errors[]="extension not allowed, please choose a pdf file.";
        }
        //hash the file name so that it gets a bit easier to handle, and becomes clean.
        $fileLocation=$this->uploadLocation."/".md5($file_name).'.'.$file_ext;
        if(empty($errors)==true){
            move_uploaded_file($file_tmp,$fileLocation);
            return $fileLocation;
        }else{
            print_r($errors);
            
        }
    }
}