  <!-- Categories -->

  <?php
   $category = array_map(function($pro){return $pro['item_category'];}, $product_shuffle);
   $unique = array_unique($category);
   sort($unique);
   shuffle($product_shuffle);
//request method post
if($_SERVER['REQUEST_METHOD']=="POST"){
  if(isset($_POST['categories_submit'])){
    // call method addToCart
  $Cart->addToCart($_POST['user_id'],$_POST['item_id']);
   }
}

$in_cart = $Cart->getCartId($product->getData(table:'cart'));
  ?>

  <section id="#Categories">
            <div class="container">
              <h4 class="font-rubik font-size-20">Categories</h4>
              <div id="filters" class="button-group text-left font-baloo font-size-16">
                <button class="btn is-checked" data-filter="*">All Products</button>
                <?php
                array_map(function($category){
                  //printf('<button class="btn" data-filter=".%s">Cement & Masonry</button>', $category);
                  
                },$unique);
                ?>
                
                <button class="btn" data-filter=".Cement">Cement & Masonry</button>
                <button class="btn" data-filter=".Wall">Drywall</button>
                <button class="btn" data-filter=".Hardware">Hardware</button>
                <button class="btn" data-filter=".Framing">Framing Lumber & Steel Stud</button>
                <button class="btn" data-filter=".Plywood">Plywood</button>
                <button class="btn" data-filter=".Flooring">Flooring & Tiles</button>
                <button class="btn" data-filter=".Insulation">Insulation</button>
                <button class="btn" data-filter=".Electricals">Electricals</button>
                <button class="btn" data-filter=".Paint">Paint & Adhesives</button>
                <button class="btn" data-filter=".Tools">Tools & Accessories</button>
                <button class="btn" data-filter=".Furniture">Furniture</button>
              </div>

              <div class="grid">
                <?php array_map(function($item) use($in_cart) { ?>
                <div class="grid-item border <?php echo $item['item_category'] ?? "Category"; ?>">
                 <div class="item py-2" style="width: 200px;">
                  <div class="product font-rale">
                    <a href="<?php printf('%s?item_id=%s','product.php',$item['item_id'])?>"><img src="<?php echo $item['item_image'] ?? "./assets/products/3.png"; ?>"alt="product1" class="img-fluid"></a>
                    <div class="text-center">
                      <h6><?php echo $item['item_name']?? "Unknown"; ?></h6>
                      <div class="rating text-warning font-size-12">
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="fas fa-star"></i></span>
                        <span><i class="far fa-star"></i></span>
                      </div>
                      <div class="price py-2">
                        <span>$<?php echo $item['item_price'] ?? 0 ?></span>
                      </div>
                      <form method="post">
                          <input type="hidden" name="item_id" value="<?php echo $item['item_id']?? '1'; ?>">
                          <input type="hidden" name="user_id" value="<?php echo 1; ?>">
                          <?php
                             if(in_array($item['item_id'],$in_cart??[])){
                              echo'<button type="submit" disabled class="btn btn-success font-size-12">In the Cart</button>';
                             }else{
                              echo'<button type="submit" name="top_sale_submit" class="btn btn-warning font-size-12">Add to Cart</button>';
                             }
                          ?>
                         
                  </form>
                    </div>
                  </div>
                </div>
                </div>
              <?php },$product_shuffle) ?>
              </div>
            </div>
          </section>
        <!-- !Categories -->