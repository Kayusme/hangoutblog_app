<h2><?= $title ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('posts/update');?>
	<input type="hidden" name="id" value="<?php echo $post['id']; ?>">
	
	<div class="form-group">
      <label for="Title">Post Title</label>
      <input type="text" name="title" class="form-control" id="exampleInputEmail1" aria-describedby="post title" value="<?php echo $post['title']; ?>">
    </div>
	
	<textarea name="body">
		<?php echo $post['body']; ?>
		
	</textarea>
	
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
      <label for="Title">Comment</label>
      <input type="text" name="comment" class="form-control" id="exampleInputEmail1" aria-describedby="post title" value="<?php echo $post['comment']; ?>">
      <small id="emailHelp" class="form-text text-muted">If you got any remark, say it here....</small>
    </div>
	<button type="submit">submit</button>
</form>