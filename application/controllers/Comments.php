<?php 
	class Comments extends CI_Controller{

		public function create($post_id){
			$slug = $this->input->post('slug');
			$data['post'] = $this->post_m->get_posts($slug);

			$this->form_validation->set_rules('user_name','User Name', 'required');
			$this->form_validation->set_rules('email','Email', 'required');
			$this->form_validation->set_rules('body','comment body', 'required');

			if($this->form_validation->run() === FALSE){
				$this->load->view('templates/header');
				$this->load->view('posts/view', $data);
				$this->load->view('templates/footer');
			} else {
				$this->comment_m->create_comment($post_id);
				redirect('posts/'.$slug);
			}
		}
	}