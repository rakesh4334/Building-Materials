<?php
ob_start();
// include header.php file
include ('header.php');
?>

<?php
// include cart item if it is not empty
count($product->getData(table:'cart')) ? include('Template/_cart-template.php'):include('Template/notFound/_cart_notFound.php');
count($product->getData(table:'wishlist')) ? include('Template/_wishlist-template.php'):include('Template/notFound/_wishlist_notFound.php');

 

// include top sale 
include('Template/_new-products.php');
 ?>


<?php
// include footer.php file
include ('footer.php');
?>

