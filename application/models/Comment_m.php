<?php
	class Comment_m extends CI_Model{
		public function __construct(){
			$this->load->database();
		}
		public function create_comment($post_id){
			$data = array(
				'post_id' => $post_id,
				'user_name' => $this->input->post('user_name'),
				'email' => $this->input->post('email'),
				'body' => $this->input->post('body')
			);

			return $this->db->insert('comments', $data);
		}
		public function get_comments($post_id){
			$query = $this->db->get_where('comments',array('post_id' => $post_id));
			return $query->result_array();
		}
	}