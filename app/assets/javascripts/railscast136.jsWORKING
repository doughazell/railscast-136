jQuery.ajaxSetup({
				 'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
				 })

jQuery.fn.submitWithAjax = function() {
	this.submit(function() {
				alert('submitWithAjax() in railscast136.js');
				$.post(this.action, $(this).serialize(), null, "script");
				return false;
				})
	return this;
};


$(document).ready(function() {
				  alert('$(document).ready javascript func in railscast136.js');
				  $("#new_review").submitWithAjax();
				  })
