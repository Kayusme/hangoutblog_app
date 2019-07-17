<h2><?= $title ?></h2>
<?php foreach($posts as $post) : ?>
<div class="jumbotron">
  <h1 class="display-3"><?php echo $post['title']; ?></h1>
  	<p class="lead"><div class="row">
	<div class="col-md-3">
		<img class="post-thumb" src="<?php echo base_url(); ?>assets/img/posts/<?php echo $post['post_image']; ?>">	</p>
		</div>
	<div class="col-md-9">
			<div >
		 	 <button type="button" class="close alert alert-dismissible alert-light" data-dismiss="alert">&times;</button>
		 	 Posted On : <?php echo $post['created_on']; ?> in<strong> <?php echo $post['cat_name']; ?></strong><br>
			<?php echo word_limiter($post['body'], 100); ?></p>
  <hr class="my-4">
 	 <p>Remark from Author: <?php echo $post['comment']; ?></p>
  <p class="lead">
    <a class="btn btn-primary btn-lg" href="<?php echo site_url('/posts/'.$post['slug']);?>" role="button">Read More</a></p>
  </p>
</div>
</div>
</div>
</p>
</div>
	<?php endforeach; ?>
<div class="pagination page-link pagination-lg">
	<?php echo $this->pagination->create_links(); ?>
</div>