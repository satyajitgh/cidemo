$(document).ready(function() {
 
			$('.menu-item').on('click',function()
			{
				var cat_id=$(this).data('cat-id');
				var cat_name=$(this).html();
				var parent_cat_id=$(this).data('parent-id');
				$('#cat-frm').find('#parent_cat_id').val(parent_cat_id);
				$('#cat-frm').find('#cat_id').val(cat_id);
				$('#cat-frm').find('#cat_name').val(cat_name);
				if(cat_id!='')
				{
					$('#cat-frm').submit();
				}
			});
});