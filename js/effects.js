
jQuery.fn.deleteClicked = function(link) {
	$("#dialog").html("Are you sure?").dialog({ buttons: [
	                                                      {
	                                                          text: "Yes",
	                                                          click: function() {window.location = link}
	                                                      },
	                                                      {
	                                                    	  text: "No",
	                                                    	  click: function() { $(this).dialog("close"); }
	                                                      }
	                                                  ],
	                                            modal: true,
	                                            closeOnEscape:true,
	                                            resizable:true
	                                            });
}
$(document).ready(function(){

	$('.delete').click(function(){
		$(this).deleteClicked($(this).attr('rel'));
	});
	
	
});
