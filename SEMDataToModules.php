<?php
require_once ('./Lib/nusoap.php');
class SEMDataToModules {
	/* SugarCRM instance URL */
	public $sugar_soap_url = null;
	
	/* SugarCRM login : username */
	public $sugar_user = null;
	
	/* SugarCRM login : password */
	public $sugar_password = null;
	public function __construct() {
		$this->sugar_soap_url = $sugar_soap_url;
		$this->sugar_user = $sugar_user;
		$this->sugar_password = $sugar_password;
		$this->sugar_session = $this->loginToCRM ( $this->ugar_url, $this->sugar_user, $this->sugar_password );
	}
	private function loginToCRM($url, $user, $password) {
		$soapclient = new nusoapclient ( $url );
		$soapclient->call ( 'login', array (
				'user_auth' => array (
						'user_name' => $user,
						'password' => md5 ( $password ),
						'version' => '.01' 
				),
				'application_name' => 'GuruaidSEM' 
		) );
		return $result ['id'];
	}
}

$soap_url = "https://10.10.11.13/guruaidcrm/soap.php";
$user = "spawar";
$password = "Lester@10";
$semData = new SEMDataToModules ( $soap_url, $user, $password );