<?php

	session_start();
	
	
	$servername = "localhost";
	$username = "root";
	$password = "";
	$db="quiz";

	// Create connection
	
	$conn = new mysqli($servername, $username, $password, $db);
	
	// Check connection

	//if ($conn->connect_error) {
	//die("Connection failed: " . $conn->connect_error);
	
	
	
?>

<html>
	<head>
		<title>Quiz</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		
		
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

		<!-- Popper JS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<script type="text/javascript">
		
			function timeout()
			{
				var minute=Math.floor(timeLeft/60);
				var second=timeLeft%60;
				var mint=checktime(minute);
				var sec=checktime(second);
				if(timeLeft<=0)
				{
					clearTimeout(tm);
					document.getElementById("form2").submit();
					
				}
				else
				{
					document.getElementById("time").innerHTML=mint+":"+sec;
				}
				timeLeft--;
				var tm= setTimeout(function(){timeout()},1000);
			}
		
		function checktime(msg)
		{
			if(msg<10)
			{
				msg="0"+msg;
			}
			return msg;
			
		}
		
		</script> 
		<!--<script src="timer/time.js"></script>-->
	</head>
	
	<body onload="timeout();">
		<div class="container">
			
			<h3 class="text-center text-primary">General Knowledge Quiz</h3>
			
			<h4 class="text-center text-success">Welcome the User
			
				<script type="text/javascript">
				
					var timeLeft=1*60;
				
				</script>
			
			<div id="time" style="float:right">timeout</div></h4>
			
			
		<div class="col-lg-12 m-auto d-block">
		
			<div class="card">
				<h5 class="text-center card-header">Welcome User you have to select only one out of 4. Best of Luck :</h5>
			</div><br>
			
			<form action="hardcheck.php" id="form2" method="POST">
			<!--Select the Data--> 
			
			<?php
				
				for($i=1;$i<6;$i++)
				{
				
				$q = "select * from hardques where h_qid= $i";
				$query = mysqli_query($conn,$q);
				
				while($rows = mysqli_fetch_array($query))
				{
					
			?>
				
				<div class="card">
				
					<h4 class="card-header"><?php echo $rows['h_question']?></h4>
				
					<?php
						
						$q = "select * from hardans where h_ans_id = $i";
						$query = mysqli_query($conn,$q);
				
						while($rows = mysqli_fetch_array($query))
						{
					?>
					
					<div class="card-body">
						
						<input type="radio" name="quizcheck[<?php echo $rows['h_ans_id'];?>]" value="<?php echo $rows['h_aid'];?>">
						
						<?php echo $rows['h_answer'];?>
						
					</div>
				
			<?php
			
			}
				}
				}
			?>
			
			<input type="submit" name="submit" value="Submit" class="btn btn-success m-auto d-block">
	</form>
	</div>
			
	</div>
				
			</div>
	</body>
</html>