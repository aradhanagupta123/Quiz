<?php

	session_start();
	error_reporting(0);
	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$db="quiz";

	// Create connection
	
	$conn = new mysqli($servername, $username, $password, $db);
	
	// Check connection

	//if ($conn->connect_error) {
	//die("Connection failed: " . $conn->connect_error);
	
	mysqli_select_db($conn,'quizbase');
	
		if(isset($_POST['submit'])){
			
			if(!empty($_POST['quizcheck'])){
				
				$count = count($_POST['quizcheck']);
				
				echo "Out of 5, You have selected" .$count. "" ;
				
				$result = 0;
				$i = 1;
				
				$selected = $_POST['quizcheck'];
				//print_r($selected);
				
				$q = "select * from questions";
				$query = mysqli_query($conn,$q);
				
				while($rows = mysqli_fetch_array($query)){
					
				//print_r($rows['ans_id']);	
				
				$checked = $rows['ans_id'] == $selected[$i];
				
				
				if($checked)
				{
					
					$result++;
					
				}
				$i++;
				}
				echo"<br> Your total score is".$result;
			}
		}		
?>
<html>
	<body>
 <!-- Result Box -->
    <div class="result_box">
        <div class="icon">
            <i class="fas fa-crown"></i>
        </div>
        <div class="complete_text">You've completed the Quiz! </div>
        <div class="score_text">
            <!-- Here I've inserted Score Result from JavaScript -->
        </div>
		
	</div>
	</body>
</html>