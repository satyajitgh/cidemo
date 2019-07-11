<div class="row">

	<?php
	$i=1;
		foreach ($demos as $k => $demo) 
		{
	?>
	<?php
	if($i%2==1){ ?>
		<div class="col-sm-12">
		<?php } ?>
		<div class="col-md-6">
			<div class="top-bar"><span></span><span></span><span></span> </div>
			<a class="demo_link" href="<?php echo base_url('showdemo'); ?>" data-id="<?php echo $demo['id']; ?>">
			<div class="listing-featuered-image" style="background-image:url(<?php echo site_url('public/assets/demo_images/').$demo['demo_image']; ?>);">
			</div>
			<div class="text-center demo-title">
				<?php echo $demo['demo_name']; ?>				
			</div>
			</a>
			
			<div class="text-center demo-desc">
				<?php echo $demo['demo_descriptions'];?>
			</div>
		</div>
		<?php
			$i++;	
			if($i%2==1){ ?>
				</div>
		<?php
			}

			}
			if($i%2==1){
				echo"</div>";
			}
		?>

	<form id="demo-frm" target="_blank" method="post">
		<input type="hidden" name="demo_id" id="demo_id">
	</form>
</div>