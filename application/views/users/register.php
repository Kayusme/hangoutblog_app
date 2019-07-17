

<?php echo validation_errors(); ?>

<?php echo form_open('users/register'); ?>
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<h2 class="text-center"><?= $title; ?></h2>
			<div class="form-group">
				<label>Name</label>
				<input type="text" class="form-control" name="name" placeholder="name">
			</div>
			<div class="form-group">
				<label>phone</label>
				<input type="text" class="form-control" name="phone" placeholder="phone">
			</div>
			<div class="form-group">
				<label>Email</label>
				<input type="email" class="form-control" name="email" placeholder="email">
			</div>
			<div class="form-group">
				<label>username</label>
				<input type="text" class="form-control" name="username" placeholder="username">
			</div>
			<div class="form-group">
				<label>password</label>
				<input type="password" class="form-control" name="password" placeholder="password">
			</div>
			<div class="form-group">
				<label>confirm password</label>
				<input type="password" class="form-control" name="password2" placeholder="confirm password">
			</div>
			<button type="submit" class="btn btn-primary btn-block">submit</button>
	</div>
	</div>
<?php echo form_close(); ?>