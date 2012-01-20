<div id="container">
	<div id="login">
	
		<!--<h2>Login</h2>-->
		<div class="box">
				<form method="POST">
					Username/Email:
					<input type="text" name="username" value="{$username}" size="20" class="form" />
					<span id="error">{*$username_error*}</span>
					Password:
					<input type="password" name="password" value="{$password}" size="20" class="form" />
					<span id="error">{*$password_error*}</span>
					<input type="submit" value="Login" name="login" />
				</form>
		</div>
	
	</div>
</div>