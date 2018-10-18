<?php
	session_start();
	include_once 'include/dbinfo.php';
?>
<!doctype html>
<html lang="se">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">  
	<title>Soloäventyr - Redigera</title>
	<link href="https://fonts.googleapis.com/css?family=Merriweather|Merriweather+Sans" rel="stylesheet"> 
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
<nav id="navbar">
	<a href="index.php">Hem</a>
	<a href="play.php?page=7">Spela</a>
	<a class="active" href="edit.php">Redigera</a>
</nav>	
<main class="content">
	<section>
		<h1>Redigera</h1>
			<table>
			<tr>
				<th>ID</th>
				<th>Text</th>
				<th>Place</th>
				<th></th>
			</tr>


	<section>
	<?php
// TODO protect with your login
// add, edit, delete pages & events
// skriv ut en lista över sidor
		$stmt = $dbh->prepare("SELECT * FROM story");
		$stmt->execute();
		$row = $stmt->fetchAll(PDO::FETCH_ASSOC);
		

		foreach ($row as $value) {
			echo "<tr>";
			echo "<td>" . $value['id'] . "</td>";
			echo "<td>" . substr($value['text'], 0,40) . "... </td>";
			echo "<td>" . $value['place'] . "</td>"; 
			echo "</tr>";
		}

		
		if (isset($_POST['create'])) {
			$filteredText = filter_input(INPUT_POST, "text", FILTER_SANITIZE_SPECIAL_CHARS);	
			$filteredPlace = filter_input(INPUT_POST, "place", FILTER_SANITIZE_SPECIAL_CHARS);

			$stmt = $dbh->prepare("INSERT INTO story (text, place) VALUES (:text, :place");
			$stmt->bindParam(':text', $filteredText);
			$stmt->bindParam(':place', $filteredPlace);
			$stmt->execute();
			//header('location:edit.php');
		}
	



?>
</section>
<section class="forms">
</table>
		<form id="create" action="" method="POST">
		<p>
			<label>Story</label><br>
			<textarea name="text"  rows="5" cols="40">
			</textarea>
		</p>
		<p>	
			<label>Place</label><br>
			<input type="text" name="place">
		</p>
		<p>
			<input type="submit" name="create" id="create" value="Skapa">
		</p>
		</form>
</section>
</main>
<script src="js/navbar.js"></script>
</body>
</html>