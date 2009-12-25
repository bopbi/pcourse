// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
jQuery(function(){
	jQuery('ul.sf-menu').superfish();
	$('a[rel*=facebox]').facebox();
	
	$(document).bind('reveal.facebox', function() {
	});
	
	$('.facebox_call').click(function() {
		$.facebox('<h1>Loading</h1>');
		$.get($(this).attr("href"), null, null,"script");
		return false;
	});
});