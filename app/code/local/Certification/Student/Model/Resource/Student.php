<?php
class Certification_Student_Model_Resource_Student extends Mage_Core_Model_Resource_Db_Abstract {
	/**
	 * $this->_init('modelgroup/entity, primary_key')
	 */
	protected function _construct() {
		$this->_init ( 'student/student', 'student_id' );
	}
}