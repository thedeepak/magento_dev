<?php
class Certification_Student_Model_Resource_Student_Collection extends Mage_Core_Model_Resource_Db_Collection_Abstract {
	/**
	 * This syntax is used in Mage::getModel()
	 */
	protected function _construct() {
		$this->_init ( 'student/student' );
	}
}