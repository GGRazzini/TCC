<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Servicos extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		$this->load->database();
		$this->load->helper('url');

		$this->load->library('grocery_CRUD');
	}

	public function _example_output($output = null)
	{
		$this->load->view('home_view.php',(array)$output);
	}

	public function _example_output1($output = null)
	{
		$this->load->view('cabecalho_view.php',(array)$output);
	}

	public function index()
	{
		$this->_example_output((object)array('output' => '' , 'js_files' => array() , 'css_files' => array()));
	}


	public function cadastrar_servicos()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('servico');
			$crud->set_subject('Serviços');
			$crud->required_fields('descricao', 'tipo_servico');
			$crud->columns('cod_servico','descricao','tipo_servico');
			$crud->set_language('pt-br.portuguese');

			$output = $crud->render();

			$this->_example_output1($output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}

	public function cadastrar_usuario()
	{
		try{
			$crud = new grocery_CRUD();

			$crud->set_theme('datatables');
			$crud->set_table('servico');
			$crud->set_subject('Serviços');
			$crud->required_fields('descricao', 'tipo_servico');
			$crud->columns('cod_servico','descricao','tipo_servico');
			$crud->set_language('pt-br.portuguese');

			$output = $crud->render();

			$this->_example_output1($output);

		}catch(Exception $e){
			show_error($e->getMessage().' --- '.$e->getTraceAsString());
		}
	}

	

}
