<?php include "../lib/Session.php";
Session::checkLogin();
?>
<?php include "../config/config.php";?>
<?php include "../lib/Database.php";?>
<?php include "../helpers/Format.php";?>

<?php
    $db = new Database();
    $fm = new Format();
?>

<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Password Recovery</title>
    <style>
        .error{
            color: red;
            font-size: 18px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css" media="screen" />
</head>
<body>
<div class="container">
	<section id="content">
        <?php 
            if($_SERVER['REQUEST_METHOD'] == 'POST'){
                $email = $fm->validation($_POST['email']);         
                $email = mysqli_real_escape_string($db->link,$email);
                
                if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
                    echo  "<span class='error'>Invalid Email Address!!</span>"; 
                }else{
                    $query = "select * from tbl_user where email='$email' limit 1;";
                    $mailcheck= $db->select($query);
                    if($mailcheck != false){
                        while($value = $mailcheck->fetch_assoc()){
                            $userid = $value['id'];
                            $username = $value['username'];
                        }
                        $text = substr($email, 0, 3);
                        $rand = rand(10000,99999);
                        $newpass = "$text$rand";
                        $password = md5($newpass);
                        
                        $updatequery = "update tbl_user 
                                        set password = '$password'
                                        where id = '$userid';";
                        $updated_row = $db->update($updatequery);
                        
                        $to = "$email";
                        $from = "liveproject@gmail.com";
                        $headers = "From: $from\n";
                        $headers .= 'MIME_Version: 1.0'."\r\n";
                        $headers .= 'Content-type: text/html; charset = iso-8859-1'."\r\n";
                        $subject = "Your New Password";
                        $message = "Your Username is ".$username."and Password is ".$newpass."Please visit website to login.";
                        
                        $sendmail = mail($to,$subject,$message,$headers);
                        if($sendmail){
                            echo "<span class='success'>Please check your email for new password!!</span>";
                        }else{
                            echo "<span class='error'>Email not sent!!</span>";
                        }
                    }else{
                    echo "<span class='error'>Email Don't Exist!!</span>";
                    }
                }
            }
        ?>
		<form action="" method="post">
			<h1>Password Recovery</h1>
			<div>
				<input type="text" placeholder="Enter Valid Email" required="" name="email"/>
            </div>
			<div>
				<input type="submit" value="Send Mail" />
			</div>
		</form><!-- form -->
        <div class="button">
			<a href="login.php">Login</a>
		</div>
		<div class="button">
			<a href="#">e-LEARN</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>