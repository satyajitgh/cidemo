<?php get_header(); ?>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
			<div class="page-header">
				<h1 class="banner-title">Find your website designs</h1>
				<div class="banner-desc"><div>What's the purpose of<div>
				your <span class="color-text">website?</span></div>
			</div>
		</div>
	</div>
	<div class="main-content">

	<div class="row">
		<?php get_sidebar(); ?>
		<div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 content-listing">
				<div class="cat-title"><?php echo $cat_name; ?></div>
				<?php  the_content($layout_content); ?>   
		</div>
	</div>
</div>
</div>
<?php get_footer(); ?>