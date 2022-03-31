<?php include 'inc/header.php'; ?>
<?php
	Session::checkSession();
	$question = $exm->getQuestion();
	$total    = $exm->getTotalRows();

?>

<div class="main">
<h1>Welcome to Online Exam</h1>
	<div class="startest"> 
		<h2>Test your knowledge</h2>
		<p>This is multiple chice quiz to test your knowledge</p>
		<ul>
			<li><strong>Number of questions:</strong> <?php echo $total; ?></li>
			<li><strong>Question Type:</strong> Multiple Choice Question</li>
		</ul>
		<a href="test.php?q=<?php echo $question['quesNo']; ?>">Satrt Test</a>
	</div>
	
 </div>
<?php include 'inc/footer.php'; ?>