<?php
//Initialize Magento
require_once '../app/Mage.php';
umask(0);
//
////Run Mage app
Mage::app('default');

$campaign = Mage::getModel('student/student');

echo 'Testing the model class: <br />';
echo get_class($campaign) . '<br />';

$resource = $campaign->getResource();
echo 'Testing the resource class: <br />';
echo get_class($resource) . '<br />';

echo 'Testing the table: <br />';
echo $resource->getMainTable() . '<br />';

echo 'Testing the primary key: <br />';
echo $resource->getIdFieldName() . '<br />';
echo 'Testing the save';
$campaign->setName('some name')
->setFirstname('Deepak')
->setLastname('Moktan')
->setAge(28)
->setRegisteredAt('2013-03-14 09:43:13')
->save();

$campaign = Mage::getModel('student/student')->load(1);


echo '<pre>';

$collection = $campaign->getCollection();

echo 'Testing the collection class: <br />';
echo get_class($collection) . '<br />';

echo 'Testing Collection data: <br />';
print_r($collection->getData()) . '<br />';

echo "Lets see if the collection knows about the model: <br />";

foreach ($collection as $model) {
	echo get_class($model) . '<br />';
}