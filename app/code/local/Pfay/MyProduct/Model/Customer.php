<?php
class Pfay_MyProduct_Model_Customer extends Mage_Customer_Model_Customer {
	public function getName() {
		$name = '';
		if ($this->getPrefix ()) {
			$name .= $this->getPrefix () . ' ';
		}
		$name .= $this->getFirstname ();
		if ($this->getMiddlename ()) {
			$name .= ' ' . $this->getMiddlename ();
		}
		$name .= ' ' . $this->getLastname ();
		if ($this->getSuffix ()) {
			$name .= ' ' . $this->getSuffix ();
		}
		return $name . '22222222';
	}
}