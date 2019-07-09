__HEADER__
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="page-header">
				<h2>Demo Listing</h2>
			</div>
		</div>
	</div>
	<div class="row">
		__SIDEBAR__
		<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12">
				<?php echo $cat_name; ?>
				<?php  echo (isset($layout_content)?$layout_content:''); ?>   
		</div>
	</div>
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="page-header">
			</div>
		</div>
	</div>

</div>

__FOOTER__