<?php 
    $filepath = realpath(dirname(__FILE__));
	include_once ($filepath.'/inc/header.php');
	include_once ($filepath.'/../classes/Exam.php'); 
	$exm = new Exam();
?>

<style>
	.adminpanel{
		width: 550px; color: #999; margin: 20px auto 0; padding: 10px; border: 1px solid #ddd;
	}
</style>

<?php

  if($_SERVER['REQUEST_METHOD'] == 'POST'){    
     $addQue = $exm->addquestions($_POST);
    }

    //Get total 

    $total  = $exm->getTotalRows();

?>

<div class="main">
<h1>Admin Panel - Add Question</h1>

<?php 

if (isset($addQue)) {
	echo $addQue;
}

?>

<div class="adminpanel">    
        <form action="" method="POST"> 
        	<table>
        		<tr>
        			<td>Question No</td>
        			<td>:</td>
        			<td><input type="number" value="<?php echo ++$total; ?>" name="quesNo"/></td>
        		</tr>

        		<tr>
        			<td>Question</td>
        			<td>:</td>
        			<td><input type="text" value="" name="ques" placeholder="Enter question..." required></td>
        		</tr> 

        		<tr>
        			<td>Ans option no.1</td>
        			<td>:</td>
        			<td><input type="text" value="" name="ans1" placeholder="Enter ans option..." required></td>
        		</tr> 

        		<tr>
        			<td>Ans option no.2</td>
        			<td>:</td>
        			<td><input type="text" value="" name="ans2" placeholder="Enter ans option..." required></td>
        		</tr> 

        		<tr>
        			<td>Ans option no.3</td>
        			<td>:</td>
        			<td><input type="text" value="" name="ans3" placeholder="Enter ans option..." required></td>
        		</tr>

        		<tr>
        			<td>Ans option no.4</td>
        			<td>:</td>
        			<td><input type="text" value="" name="ans4" placeholder="Enter ans option..." required></td>
        		</tr> 

        		<tr>
        			<td>Correct ans no</td>
        			<td>:</td>
        			<td><input type="number" value="" name="rightAns" placeholder="Enter correct ans no" required></td>
        		</tr> 	

        		<tr>
        			<td colspan="3"  align="center">
        				<input type="submit" value="Add a question" >
        			</td>
        		</tr> 	


        	</table>
        </form>
    </div>


	
</div>
<?php include 'inc/footer.php'; ?>