<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">	
	<div class="sidebar-menu-heading">Demo Listing </div>		
	<nav id="column_left">	
		<ul class="nav nav-list">
			<?php 
				$child_cat_nav_html='';
				$child_cat_html='';
				$flag=0;
				$sub_menu_class='';
				$menu_class='';
				foreach ($categories as $k => $cat) 
				{
					if(property_exists($cat,'child'))
					{
						$flag=1;
						$submenu_id='submenu'.$cat->id;
						$data_toggle=' data-toggle="collapse" ';
						$sub_menu_class='';
						if(isset($posts['parent_cat_id']))
						{
							if($cat->id==$posts['parent_cat_id'])
							{
								$data_toggle=' data-toggle="collapse"  ';
								$sub_menu_class=' in ';
							}
						}						
						
						$child_cat_nav_html='class="accordion-heading" '.$data_toggle.' data-target="#'.$submenu_id.'"';
						$child_cat_html='<span class="pull-right"><b class="caret"></b></span>';								
					}
					else
					{

						$flag=0;
						$child_cat_html='';
						$menu_class='';
						if(isset($posts['cat_id']))
						{
							if($cat->id==$posts['cat_id'])
							{								
								$menu_class=' active ';
							}
						}
						$child_cat_nav_html=' data-cat-id="'.$cat->id.'"  data-parent-id="'.$cat->parent_cat_id.'" class="menu-item '.$menu_class.'" ';
						$submenu_id='';
					}
			?>
				<li>
					<a <?php echo $child_cat_nav_html; ?>><?php echo $cat->name; ?><?php echo $child_cat_html; ?></a>
					<?php 
						if($flag==1)
						{
					?>
						<ul class="nav nav-list collapse <?php echo $sub_menu_class; ?>" id="<?php echo $submenu_id; ?>">
						<?php 
							foreach ($cat->child as $childk => $child_cat) 
							{
								$menu_class='';
								if($child_cat->id==$this->input->post('cat_id'))
								{
									$menu_class=' active ';
								}
						?>
						    <li>
						      	<a class="accordion-heading menu-item <?php echo $menu_class; ?>" data-toggle="collapse" data-cat-id="<?php echo $child_cat->id ?>" data-parent-id="<?php echo $child_cat->parent_cat_id ?>"><?php echo $child_cat->name; ?></a>						      
						    </li>
						<?php 
							}
						?>
					    </ul>
					<?php
						}	
					?>
				</li>
			<?php
				}
			?>
		</ul>
	</nav>
	<form id="cat-frm" method="post">
		<input type="hidden" name="parent_cat_id" id="parent_cat_id">
		<input type="hidden" name="cat_id" id="cat_id">
		<input type="hidden" name="cat_name" id="cat_name">
	</form>
</div>
<div class="col-lg-1 col-md-1 col-sm-12 col-xs-12">	
</div>