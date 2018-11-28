<?php include 'includes/session.php'; ?>
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
	        	<div class="col-sm-11">
                            <!--if there is an error with session-->
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active">
		                    <img src="images/notebook_banner2.jpg" alt="First slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/videocard_banner2.jpg" alt="Second slide">
		                  </div>
		                  <div class="item">
		                    <img src="images/ssd_banner2.jpg" alt="Third slide">
		                  </div>
                                    <div class="item">
		                    <img src="images/ram_banner2.jpg" alt="Fourth slide">
		                  </div>
                                    <div class="item">
                                        <img src="images/tablet_banner2.jpg" alt="Fifth slide">
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>
		            <h2>Checkout our products!</h2>
		       		<?php
		       			$month = date('m');
		       			$conn = $pdo->open();

		       			try{
		       			 	$inc = 3;	
						    
                                                    $stmt = $conn->prepare("SELECT * FROM products ORDER BY RAND() LIMIT 6");
						    $stmt->execute();
						    foreach ($stmt as $row) {
						    	$image = (!empty($row['photo'])) ? 'images/'.$row['photo'] : 'images/noimage.jpg';
						    	$inc = ($inc == 3) ? 1 : $inc + 1;
	       						if($inc == 1) echo "<div class='row'>";
	       						echo "
	       							<div class='col-sm-4'>
                                                                    <a href='product.php?product=".$row['id']."'>
	       								<div class='box box-solid'>
		       								<div class='box-body prod-body'>
		       									<img src='".$image."' width='100%' height='230px' class='thumbnail'>
		       									<h5>".$row['name']."</h5>
		       								</div>
		       								<div class='box-footer'>
		       									<b>&euro; ".number_format($row['price'], 2)."</b>
		       								</div>
	       								</div>
	       							</a></div>
	       						";
	       						if($inc == 3) echo "</div>";
						    }
						    if($inc == 1) echo "<div class='col-sm-4'></div><div class='col-sm-4'></div></div>"; 
							if($inc == 2) echo "<div class='col-sm-4'></div></div>";
						}
						catch(PDOException $e){
							echo "There is some problem in connection: " . $e->getMessage();
						}

						$pdo->close();

		       		?> 
	        	</div>
	        	<!--<div class="col-sm-3">
	        		
	        	</div>-->
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>