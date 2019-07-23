<?php 

function pr($cont,$die=false)
{
	echo '<pre>';
	print_r($cont);
	if($die)
	{
		die();
	}
	echo '</pre>';
}
function get_sidebar()
{
	echo '__SIDEBAR__';
}
function get_footer()
{
	echo '__FOOTER__';
}
function get_header()
{
	echo '__HEADER__';	
}
function get_the_content($layout_content)
{
	return isset($layout_content)?$layout_content:'';
}
function the_content($layout_content)
{
	echo get_the_content($layout_content);
}