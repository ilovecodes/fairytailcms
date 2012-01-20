<?php
	class Themes extends Application {
		public function __construct() {
			parent :: __construct();
			//$this -> ag_auth -> restrict('admin');
			$this -> load -> helper('theme');
		}
		
		public function configure() {
			authorize('manage', 'Theme', '', 'back');
			$form = load_edit_theme_form();
			$this -> mysmarty -> assign('form',$form);
			load_views(array('themes/edit'));
		}
		
		public function update_theme() {
			authorize('manage', 'Theme', '', 'back');
			$theme = new Theme();
			$theme -> switch_theme($this -> input -> post('theme'));
			$this -> session -> set_flashdata('notice',get_theme_name()." theme has been selected.");
			redirect('themes/configure');
		}
	}
?>