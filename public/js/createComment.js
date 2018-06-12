"use strict";

$(function() {


	var error;



	$('form').on("submit", function(event) {
		

		
		if ( ! $('#Pseudo').val() ) {

			error = "saissisez un texte";

			$('.error3').html(error);

			event.preventDefault();
			
		} else {

			$('.error3').html("");

		}

		if ( ! $('#contents').val() ) {

			error = "saissisez un texte";

			$('.error2').html(error);

			event.preventDefault();
			
		} else {

			$('.error2').html("");

		}

	})



});