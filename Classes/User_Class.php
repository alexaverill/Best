<?php 
class Users {
    /*
     *General user class, used for logins, and password resets.
     *Addition of teams and users is an administrator purpose, so it is going to be in that class.
     *Addition of teams is also going to be a seperate class, there will be a team class that can be initialized to edit team information/
     *
     *
     *
     */
    public function login($user,$password){
        global $dbh;
        try{
            $sql='SELECT * FROM users WHERE username=?';
            $query_user=$dbh->prepare($sql);
            $query_user->execute(array($user));
        }catch(PDOException $ex){
            echo $ex->getMessage();
        }
        //Compare stored Password to input password
        $stored_password=$user_information[0]['password'];
        if(password_verify($password,$stored_password)){
            //TODO:Log user login to file.
            	$_SESSION['name']=$user; 
		$_SESSION['install']=$install;
		$_SESSION['id']=$this->get_id($user);
                echo '<META HTTP-EQUIV=Refresh CONTENT=".5; URL=index.php">';
                echo '<h2>You have logged in!</h2>';
        }else{
            $log=new Logging();
	    $IP = $_SERVER['REMOTE_ADDR'];
	    $log->add_entry("INVALID LOGIN:", "$user attempted to login and failed. IP: $IP");
            echo '<h2>Wrong Username or password</h2>';
        }
        
    }
    private function update_password($username,$password){
	//reset password, force logout
    }
}
?>
