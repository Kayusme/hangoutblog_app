<?php echo form_open('users/login'); ?>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<h1 class="text-center"><?php echo $title; ?></h1>
			<div class="form-group">
				<label>username</label>
				<input type="text" name="username" class="form-control" placeholder="username" required="true" autofocus="true">
			</div>
			<div class="form-group">
				<label>password</label>
				<input type="password" name="password" class="form-control" placeholder="password" required="true" autofocus="true">
			</div>
			<button class="btn btn-primary btn-block" type="submit">login</button>
		</div>
	</div>
<?php echo form_close(); ?>