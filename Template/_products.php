    <!-- Product-->
    <?php
     $item_id =$_GET['item_id']?? 1;
     foreach($product->getData() as $item) :
        if($item['item_id']==$item_id):
    ?>
    <section id="product" class="py-3">
          <div class="container">
              <div class="row">
                  <div class="col-sm-6">
                      <img src="<?php echo $item['item_image']??"./assets/products/59.png" ?>"alt="product" class="img-fluid" style="height: 450px;">
                      <div class="form-row pt-4 font-size-16 font-baloo">
                          <div class="col">
                              <button type="submit" class="btn btn-danger form-control">Proceed to Buy</button>
                          </div>
                          <div class="col">
                          <?php
                             if(in_array($item['item_id'],$Cart->getCartId($product->getData(table:'cart'))??[])){
                              echo'<button type="submit" disabled class="btn btn-success font-size-16 form-control">In the Cart</button>';
                             }else{
                              echo'<button type="submit" name="top_sale_submit" class="btn btn-warning font-size-14 form-control">Add to Cart</button>';
                             }
                          ?>
                              
                          </div>
                      </div>
                  </div>
                  <div class="col-sm-6 py-5">
                    <h5 class="font-baloo font-size-20"><?php echo $item['item_name']?? "Unknown"; ?></h5>
                    <small><?php echo $item['item_category']?? "Category"; ?></small>
                    <div class="d-flex">
                        <div class="rating text-warning font-size-12">
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="fas fa-star"></i></span>
                            <span><i class="far fa-star"></i></span>
                          </div>
                          <a href="#" class="px-2 font-rale font-size-14">2000 ratings | 100+ answered questions</a>
                    </div>
                    <hr class="m-0">

                    <!---    product price       -->
                        <table class="my-3">
                            <tr class="font-rale font-size-14">
                                <td>M.R.P:</td>
                                <td><strike>$120.00</strike></td>
                            </tr>
                            <tr class="font-rale font-size-14">
                                <td>Deal Price:</td>
                                <td class="font-size-20 text-danger">$<span><?php echo $item['item_price']?? 0; ?></span><small class="text-dark font-size-12">&nbsp;&nbsp;Inclusive of all taxes</small></td>
                            </tr>
                            <tr class="font-rale font-size-14">
                                <td>You Save:</td>
                                <td><span class="font-size-16 text-danger">$10.00</span></td>
                            </tr>
                        </table>
                    <!---    !product price       -->
                    <!-- product qty section -->  
                    <div class="qty d-flex">
                      <h6 class="font-baloo">Qty</h6>
                      <div class="px-1 d-flex font-rale">
                          <button class="qty-up border bg-light" data-id="pro1"><i class="fas fa-angle-up"></i></button>
                          <input type="text" data-id="pro1" class="qty_input border px-1 w-50 bg-light" disabled value="1" placeholder="1">
                          <button data-id="pro1" class="qty-down border bg-light"><i class="fas fa-angle-down"></i></button>
                      </div>
                  </div>
                  <hr>
                 <!-- !product qty section --> 
                     <!--    #policy -->
                        <div id="policy">
                            <div class="d-flex">
                                <div class="return text-center mr-5">
                                    <div class="font-size-20 my-2 color-second">
                                        <span class="fas fa-retweet border p-3 rounded-pill"></span>
                                    </div>
                                    <a href="#" class="font-rale font-size-12">15 Days <br> Replacement</a>
                                </div>
                                <div class="return text-center mr-5">
                                    <div class="font-size-20 my-2 color-second">
                                        <span class="fas fa-truck  border p-3 rounded-pill"></span>
                                    </div>
                                    <a href="#" class="font-rale font-size-12">Daily Tuition <br>Deliverd</a>
                                </div>
                                <div class="return text-center mr-5">
                                    <div class="font-size-20 my-2 color-second">
                                        <span class="fas fa-check-double border p-3 rounded-pill"></span>
                                    </div>
                                    <a href="#" class="font-rale font-size-12">3 Years <br>Warranty</a>
                                </div>
                            </div>
                        </div>
                      <!--    !policy -->
                      <!-- product qty section -->  
                      
                        <hr>

                    <!-- order-details -->
                        <div id="order-details" class="font-rale d-flex flex-column text-dark">
                            <small>Delivery by : Mar 29  - Apr 1</small>
                            <small>Sold by <a href="#">Daily Furniture </a>(4.5 out of 5 | 1000 ratings)</small>
                            <small><i class="fas fa-map-marker-alt color-primary"></i>&nbsp;&nbsp;Deliver to Customer - 424201</small>
                        </div>
                     <!-- !order-details -->

                     <div class="row">
                         <div class="col-6">
                                <!-- color -->
                                    <div class="color my-3">
                                      <div class="d-flex justify-content-between">
                                        
                                        </div>
                                    </div>
                                <!-- !color -->
                         </div>
                         <div class="col-6">
                            
                         </div>
                     </div>

                    


                </div>

               
            </div>
        </div>
    </section>
<!--   !product  -->

<?php
  endif;
  endforeach;
?>