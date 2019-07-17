<!DOCTYPE html>
<html>
<head>
  
	<title>The Home of Everyone</title>
	<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/css/styles.css">
	<script type="text/javascript" src="<?php echo base_url(); ?>assets/ckeditor/ckeditor.js"></script>
	<!-- <li><a href="<?php echo base_url(); ?>">Home</a></li>
	<li><a href="<?php echo base_url(); ?>about">About</a></li>
	<li><a href="<?php echo base_url(); ?>posts">Blog</a></li>
	<li><a href="<?php echo base_url(); ?>posts/create">create post</a></li> -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="<?php echo base_url();?>"><img src="<?php echo base_url();?>assets/img/logo_0.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor03" aria-controls="navbarColor03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarColor03">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<?php echo base_url(); ?>">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Features</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Pricing</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url();?>posts">Blog</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url(); ?>about">About</a>
      </li>
    </ul>
    <?php if($this->session->userdata('logged_in')) : ?>
            <ul class="nav navbar-nav navbar-right">
              <li class="nav-item">
               <a class="nav-link" href="<?php echo base_url();?>categories">categories</a>
              </li>
            	<li>
                <a class="nav-link" href="<?php echo base_url();?>posts/create">Create Post</a>
              </li>
              <li>
                <a class="nav-link" href="<?php echo base_url();?>categories/create">Create Categories</a>
              </li>
              <li>
        <a class="nav-link" href="<?php echo base_url();?>users/logout">logout</a>
             </li>
    <?php endif; ?>
      <?php if(!$this->session->userdata('logged_in')) : ?>
              <li>
                <a class="nav-link" href="<?php echo base_url();?>users/login">login</a>
              </li>
              <li>
                <a class="nav-link" href="<?php echo base_url();?>users/register">Register</a>
              </li>
     <?php endif; ?>
            </ul>
    <!-- <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="text" placeholder="Search">
      <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
    </form> -->
  </div>
</nav>
</head>
<div class="container">
   <!-- flash message -->
   <?php if($this->session->flashdata('user_registered')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>'; ?>
   <?php endif; ?>

    <?php if($this->session->flashdata('post_created')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>'; ?>
   <?php endif; ?>

    <?php if($this->session->flashdata('post_updated')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>'; ?>
   <?php endif; ?>

    <?php if($this->session->flashdata('category_created')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>'; ?>
   <?php endif; ?>

   <?php if($this->session->flashdata('post_deleted')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>'; ?>
   <?php endif; ?>

    <?php if($this->session->flashdata('category_deleted')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_deleted').'</p>'; ?>
   <?php endif; ?>

   <?php if($this->session->flashdata('user_loggedin')) : ?>
    <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</p>'; ?>
   <?php endif; ?>

   <?php if($this->session->flashdata('user_loggedout')) : ?>
   <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedout').'</p>'; ?>
   <?php endif; ?>

   <?php if($this->session->flashdata('login_failed')) : ?>
    <?php echo '<p class="alert alert-danger">'.$this->session->flashdata('login_failed').'</p>'; ?>
   <?php endif; ?>
   <div class="container">
<body>