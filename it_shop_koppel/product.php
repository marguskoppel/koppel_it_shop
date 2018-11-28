<?php include 'includes/session.php'; ?>
<?php
	$conn = $pdo->open();

	$slug = $_GET['product'];

	try{
		//to display slug in url 		
	    //$stmt = $conn->prepare("SELECT *, products.name AS prodname, category.name AS catname, products.id AS prodid FROM products LEFT JOIN category ON category.id=products.category_id WHERE slug = :slug");
            $stmt = $conn->prepare("SELECT *, products.name AS prodname, category.name AS catname, products.id AS prodid FROM products LEFT JOIN category ON category.id=products.category_id WHERE products.id = :id");
	    $stmt->execute(['id' => $slug]);
	    $product = $stmt->fetch();
		
	}
	catch(PDOException $e){
		echo "There is some problem in connection: " . $e->getMessage();
	}

	//page view
	$now = date('Y-m-d');
	if($product['date_view'] == $now){
		$stmt = $conn->prepare("UPDATE products SET counter=counter+1 WHERE id=:id");
		$stmt->execute(['id'=>$product['prodid']]);
	}
	else{
		$stmt = $conn->prepare("UPDATE products SET counter=1, date_view=:now WHERE id=:id");
		$stmt->execute(['id'=>$product['prodid'], 'now'=>$now]);
	}

?>
<?php include 'includes/header.php'; ?>
<!--<body class="hold-transition skin-blue layout-top-nav">-->
<body class="hold-transition skin-purple-light sidebar-mini">


<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
        <?php include 'includes/sidebar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<div class="callout" id="callout" style="display:none">
	        			<button type="button" class="close"><span aria-hidden="true">&times;</span></button>
	        			<span class="message"></span>
	        		</div>
		            <div class="row">
		            	<div class="col-sm-6">
		            		<img src="<?php echo (!empty($product['photo'])) ? 'images/'.$product['photo'] : 'images/noimage.jpg'; ?>" width="100%" class="zoom" data-magnify-src="images/large-<?php echo $product['photo']; ?>">
		            		<br><br>
                                          <?php
	        			if(isset($_SESSION['user'])){
	        				echo "
                                        
		            		<form class='form-inline' id='productForm'>
		            			<div class='form-group'>
			            			<div class='input-group col-sm-5'>
			            				
			            				<span class='input-group-btn'>
			            					<button type='button' id='minus' class='btn btn-default btn-flat btn-lg'><i class='fa fa-minus'></i></button>
			            				</span>
							          	<input type='text' name='quantity' id='quantity' class='form-control input-lg' value='1'>
							            <span class='input-group-btn'>
							                <button type='button' id='add' class='btn btn-default btn-flat btn-lg'><i class='fa fa-plus'></i>
							                </button>
							            </span>
                                                                    ";
                                                ?>
							            <input type="hidden" value="<?php echo $product['prodid']; ?>" name="id">
                                                                    <?php
                                                                    echo "
							        </div>
                                                  
			            			<button type='submit' class='btn btn-primary btn-lg btn-flat'><i class='fa fa-shopping-cart'></i> Add to Cart</button>
			            		</div>
                                                ";
                                        }
                                        else{
	        				echo "
	        					<h4>You need to <a href='login.php'>Login</a> to add item to cart.</h4>
                                                        <h4>Or <a href='signup.php'>Register</a> an account.</h4>
	        				";
	        			}
	        		?>
		            		</form>
		            	</div>
		            	<div class="col-sm-6">
		            		<h1 class="page-header"><?php echo $product['name']; ?></h1>
		            		<h3><b>&euro; <?php echo number_format($product['price'], 2); ?></b></h3>
		            		<p><b>Category:</b> <a href="category.php?category=<?php echo $product['id']; ?>"><?php echo $product['catname']; ?></a></p>
		            		<p><b>Description:</b></p>
                                        <p>
                                            <?php
                                        //print($row['Info']);
                                        $infoExploded = (explode(';', $product['description']));
                                        for ($i = 0; $i < count($infoExploded); $i++) {
                                            echo $infoExploded[$i] . '<br/>';
                                        }
                                        ?>
		            		<?php //echo $product['description']; ?></p>
		            	</div>
		            </div>
		            <br>
				     
	        	</div>
	        	
	        </div>
	      </section>
	     
	    </div>
	  </div>
  	<?php $pdo->close(); ?>
  	<?php include 'includes/footer.php'; ?>
        
</div>

<?php include 'includes/scripts.php'; ?>
<script>
$(function(){
	$('#add').click(function(e){
		e.preventDefault();
		var quantity = $('#quantity').val();
		quantity++;
		$('#quantity').val(quantity);
	});
	$('#minus').click(function(e){
		e.preventDefault();
		var quantity = $('#quantity').val();
		if(quantity > 1){
			quantity--;
		}
		$('#quantity').val(quantity);
	});
        $(document).on('click', '.desc', function(e){
                e.preventDefault();
                var id = $(this).data('id');
                getRow(id);
              });

});
</script>
</body>
</html>