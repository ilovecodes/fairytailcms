<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Welcome extends Application {

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -  
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in 
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see http://codeigniter.com/user_guide/general/urls.html
	 */
	 
	public function __construct() {
		parent::__construct();
		$this -> load -> library('pagination');
		$this -> load -> helper(array('date','view','pagination','posts'));
	}
	
	public function index()
	{
				posts_index('welcome/index');
				load_header();
				load_flash();
				load_navigation();
				load_logo();
				load_sidebar();
				
				if(!logged_in()) {
					$this -> login();
				}
				
				close_sidebar();
				load_views(array('posts/index'),false,false,false,false,false,false);
				load_footer();
	}
	
	public function viewdashboard() {
			$this -> ag_auth -> restrict('user');
				$user = new User();
				$author = current_author();
				$name_present = $author -> get_author_full_name() != "first_name last_name"; 
				$id = $author -> id;
			
				if(!$name_present) {
					redirect('authors/edit_author/'.$id.'/');
				}
				
				$post = new Post();
				$posts = add_links_to_posts($post -> format_posts
				                            ($author -> get_all_posts()));
				                            
				$edit_author = array('link' => site_url('/').'authors/edit_author/'.$author->id,
				                     'label' => 'Edit Profile');                            
				$this -> mysmarty -> assign('edit_profile', $edit_author);
				$this -> mysmarty -> assign('posts',$posts);
				$this -> mysmarty -> assign('empty_posts', empty($posts));
				
				if(empty($posts)) {
					$this -> mysmarty -> assign('no_post_message','You have no posts.');
				}
				load_views(array('users/dashboard'));
	
	}
	
	public function register() {
		$this -> ag_auth -> restrict('admin',TRUE);
		parent::register();
	}
	
	public function login() {
		parent :: login();
	}
	
	public function access_denied() {
		load_message('Access Denied.');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */