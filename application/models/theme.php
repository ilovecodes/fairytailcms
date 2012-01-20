<?php
	class Theme extends DataMapper {
		var $selected_theme;
		
		public function __construct() {
			parent::__construct();
			$ci =& get_instance();
			$this -> get_selected_theme();
		}
		
		public function get_selected_theme() {
			$theme_name = $this -> selected_theme = $this -> where('is_selected', 1) 
			      -> get() -> name;
			return $theme_name;
		}
		public function get_all_themes($order_by = 'id', $order = 'asc') {
			return $this -> order_by($order_by, $order) -> get();
		}
		
		public function switch_theme($new_selected_theme_id) {
			$this -> where('is_selected', 1) -> get();
			$this -> is_selected = 0;
			$this -> save();
			$this -> where('id', $new_selected_theme_id) -> get();
			$this -> is_selected = 1;
			$this -> save();
		}
	}
?>