<div class="row">
	<?php 
		foreach ($demos as $k => $demo) 
		{
	?>
		<div class="col-md-4">
			<a class="demo_link" href="<?php echo base_url('showdemo'); ?>" data-id="<?php echo $demo['id']; ?>">
			<div>
				<img src="<?php echo site_url('public/assets/demo_images/').$demo['demo_image']; ?>" style="height: 188px;width:100%">
			</div>
			<div class="text-center">
				<?php echo $demo['demo_name']; ?>				
			</div>
			</a>
		</div>
	<?php
		}
	?>
	<form id="demo-frm" target="_blank" method="post">
		<input type="text" name="demo_id" id="demo_id">
	</form>
</div>