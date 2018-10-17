<?php
	session_start();
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
		<form id="update" action="update.php" method="POST">
		<fieldset>
			<legend>Uppdatera</legend>
			<p>
				<label for="username">Användarnamn:</label>
				<input type="text" name="username" id="username">
			</p>
			<p>
				<label for="password">Lösenord:</label>
				<input type="password" name="password" id="password">
			</p>
			<p>
				<input type="submit" name="submit" id="submit" value="Logga in">
			</p>
		</fieldset>
	</form>
	<form id="create" action="create.php" method="POST">
		<fieldset>
			<legend>Skapa Användare</legend>
			<p>
				<label for="newUser" >Användarnamn:</label>
				<input type="text" name="username" id="username">
			</p>
			<p>
				<label for="newPass">Lösenord:</label>
				<input type="password" name="password" id="password">
			</p>
			<p>
				<label for="checkPass">Bekräfta lösenord:</label>
				<input type="password" name="checkPassword" id="checkPassword">
			</p>
			<p>
				<label for="newEmail">Email:</label>
				<input type="text" name="email" id="email">
			</p>
			<p>
				<input type="submit" name="create" id="create" value="Skapa">
			</p>

		</fieldset>
	</form>
	<form id="delete" action="" method="POST">
		<fieldset>
			<legend>Ta bort min användare tack</legend>
			<p>
				<label for="password">Lösenord:</label>
				<input type="password" name="password" id="password">
			</p>
			<p>
				<input type="submit" name="delete" id="delete" value="Ta bort">
			</p>
		</fieldset>
	</form>
	<?php
// TODO protect with your login
// add, edit, delete pages & events
// skriv ut en lista över sidor



?>
</main>
<script src="js/navbar.js"></script>
</body>
</html>