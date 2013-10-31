<?php
class Pfay_Test_Block_Monblock extends Mage_Core_Block_Template {
	public function methodblock() {
		$helper = Mage::helper ( 'test' );
		return '2*2 = ' . $helper->bytwo ( 2 );
	}
}