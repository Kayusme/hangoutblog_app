<div class="jumbotron">
  <h1 class="display-3"><?php echo $post['title']; ?></h1>
  <button type="button" class="btn btn-info">Post Created On: <?php echo $post['created_on']; ?></button><br>
  <div class="">
	<img src="<?php echo base_url(); ?>assets/img/posts/<?php echo $post['post_image']; ?>">	
</div>
  <button type="button" class="btn btn-info">Author: <?php echo $post['user_name']; ?></button><br>
  <div class="">
  <p class="lead"><?php echo $post['body']; ?></p>
  <hr class="my-4">
  <p>
    <hr>
    <h3>Comments</h3> 
    <?php if($comments) : ?>
      <?php foreach($comments as $comment) : ?>
           <div class="card bg-light mb-3" style="max-width: 200rem;">
            <div class="card-header"><?php echo $comment['created_on']; ?></div>
            <div class="card-body">
              <h4 class="card-title"><strong><?php echo $comment['user_name']; ?></strong></h4>
              <p class="card-text"><h5><?php echo $comment['body']; ?></p>
            </div>
          </div>
      <?php endforeach; ?>
      <?php else : ?>
        <p>No Comments to Display Here!</p>
      <?php endif; ?>

  <?php if($this->session->userdata('user_id') == $post['user_id']) : ?>
      <hr>
      <a class="btn btn-primary pull-left" style="float: left;" href="edit/<?php echo $post['slug']; ?>">Edit</a>
      <?php echo form_open('/posts/delete/'.$post['id']); ?>
      <input type="submit"type="button" class="btn btn-danger" value="delete">
      </form>
<?php endif; ?>
  </p>
  <p class="lead">
    <a class="btn btn-primary btn-lg" href="#" role="button">Add Comment</a>
    <?php echo validation_errors(); ?>
    <?php echo form_open('comments/create/'.$post['id']); ?>
    <div class="form-group">
      <label>Name of User</label>
      <input type="text" name="user_name" class="form-control">
    </div>
    <div class="form-group">
      <label>Email of User</label>
      <input type="email" name="email" class="form-control">
    </div>
    <div class="form-group">
      <label>Body</label>
      <textarea name="body" class="form-control">
      </textarea>
    </div>
    <input type="hidden" name="slug" value="<?php echo $post['slug']; ?>">
    <button class="btn btn-primary" type="submit">Submit</button>
  </form>
  </p> 
</div>
