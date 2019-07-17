<h2><?= $title ?></h2>
<div class="alert alert-dismissible alert-warning">
  <button type="button" class="close" data-dismiss="alert">&times;</button>
    <p class="mb-0"><?php echo validation_errors(); ?></a>.</p>
</div>
<?php echo validation_errors(); ?>

<?php echo form_open_multipart('posts/create');?>
	<div class="form-group">
      <label for="Title">Post Title</label>
      <input type="text" name="title" class="form-control" id="exampleInputEmail1" aria-describedby="post title" placeholder="Enter title of the post here">
      <small id="emailHelp" class="form-text text-muted">The title of your post goes here....</small>
    </div>
    <div class="form-group">
	<label for="Title">Post Body</label>
	<textarea class="editor1" name="body" cols="80" rows="10">
		Delete this and start typing...
	</textarea>
	<small id="emailHelp" class="form-text text-muted">The body of your post goes here....</small>
	</div>
  <div class="form-group">
      <label for="Title">Category</label>
      <select name="category_id" class="form-control">
        <?php foreach($categories as $category): ?>
          <option value="<?php echo $category['id']; ?>"><?php echo $category['cat_name']; ?></option>
      <?php endforeach; ?>
      </select>
      <small id="emailHelp" class="form-text text-muted">choose the category here....</small>
    </div>
	<div class="form-group">
    <label>Upload Image</label>
    <input type="file" name="userfile" size="20">
  </div>
  <div class="form-group">
      <label for="Title">Comment</label>
      <input type="text" name="comment" class="form-control" id="exampleInputEmail1" aria-describedby="post title" placeholder="Any Comment?">
      <small id="emailHelp" class="form-text text-muted">If you got any remark, say it here....</small>
    </div>
	
	<button class="btn btn-primary" type="submit">submit</button>
</form>
