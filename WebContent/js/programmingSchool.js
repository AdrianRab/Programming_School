$(document).ready(function(){
	var dropdownMenu = $("#dropdown");
	
	dropdownMenu.css('position', 'absolute');
	dropdownMenu.css('top', 100);
	dropdownMenu.css('right', 100);
	
	
	var listOfOptions = $('#dropdown-menu');
	var adminButtton = $("expandCollapse");
	
//	adminButtton.on('click', function(event){
//		dropdownMenu.classList.toggle('is-active');
//	});
	
	dropdownMenu.on('click',function(event){
		event.stopPropagation();
		dropdownMenu.toggleClass('is-active');
	});
		
});
