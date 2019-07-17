<?php
 class Categories extends CI_Controller{
 	public function index(){
 		$data['title'] = 'Categories';

 		$data['categories'] = $this->category_m->get_categories();

 		$this->load->view('templates/header');
 		$this->load->view('categories/index', $data);
 		$this->load->view('templates/footer');
 	}


 	public function create(){

 		if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}
 		$data['title'] = 'Create Category';


 		$this->form_validation->set_rules('cat_name','Name', 'Required');


 		if($this->form_validation->run() === FALSE){
 			$this->load->view('templates/header');
 			$this->load->view('categories/create', $data);
 			$this->load->view('templates/footer');
 		} else {
 			$this->category_m->create_category();

 			//set message
				$this->session->set_flashdata('category_created','the category has been created');

 			redirect('categories');
 		}
 	}
 	public function posts($id){
 		$data['title'] = $this->category_m->get_category($id)->cat_name;

 		$data['posts'] = $this->post_m->get_posts_by_category($id);

 			$this->load->view('templates/header');
 			$this->load->view('posts/index', $data);
 			$this->load->view('templates/footer');
 	}
 	public function delete($id){
			if(!$this->session->userdata('logged_in')){
				redirect('users/login');
			}

			$this->category_m->delete_category($id);

			//set message
				$this->session->set_flashdata('category_deleted','the category has been deleted');

			redirect('categories');
			}
 }