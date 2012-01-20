<?php
	class User extends DataMapper {
		var $has_one = array('author','group');
		
		public function get_related_author() {
			return $this -> author -> get();
		}
		
		public function get_related_posts() {
			return $this -> get_related_author() -> posts -> get();
		}
		
		public function disable($id) {
			$this -> where('id',$id) -> get();
			$this -> is_enabled = 0;
			$this -> save();
		}
		
		public function enable($id) {
			$this -> where('id',$id) -> get();
			$this -> is_enabled = 1;
			$this -> save();
		}
		
		public function get_role() {
			return $this -> group -> get() -> title;
		}
	}
	
?>