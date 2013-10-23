<?php
 class Magentotutorial_Weblog_IndexController extends Mage_Core_Controller_Front_Action {
     public function testModelAction() {
    $params = $this->getRequest()->getParams();
    $blogpost = Mage::getModel('weblog/blogpost');
    echo("Loading the blogpost with an ID of ".$params['id']);
    $blogpost->load($params['id']);
   $blogpost->getData();
	/*echo '<br />';
	echo $blogpost->getData('title');
	$blogpost->getData('title');
	echo '<br />';
	echo $blogpost->getOrigData('title');
	$blogpost->setBlogpostId(9);
	$blogpost->setTitle("Latest Title");
	echo $blogpost->getBlogpostId();
	echo $blogpost->getPost();
	echo $blogpost->getDate();
	echo $blogpost->getTimestamp();
	$blogpost->title = "Oh lala title";
	$blogpost->save();
	echo '<pre>';
	print_r($blogpost);
	echo $blogpost->hasBlogpostId();*/

} 
 public function createNewPostAction() {
    $blogpost = Mage::getModel('weblog/blogpost');
    $blogpost->setTitle('Code Post!');
    $blogpost->setPost('This post was created from code!');
    $blogpost->save();
    echo 'post with ID ' . $blogpost->getId() . ' created';
} 
 public function editFirstPostAction() {
    $blogpost = Mage::getModel('weblog/blogpost');
    $blogpost->load(1);
    $blogpost->setTitle("Hey Hey post!");
    $blogpost->save();
    echo 'post edited';
}
 public function deleteFirstPostAction() {
    $blogpost = Mage::getModel('weblog/blogpost');
    $blogpost->load(1);
    $blogpost->delete();
    echo 'post removed';
}
 public function showAllBlogPostsAction() {
    $posts = Mage::getModel('weblog/blogpost')->getCollection();
	echo '<pre>';
    foreach($posts as $blogpost){
        echo '<h3>'.$blogpost->getTitle().'</h3>';
        echo nl2br($blogpost->getPost());
    }
} 

} 