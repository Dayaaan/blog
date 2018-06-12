"use strict";

$(function() {


	var error;



	$('#form').on("submit", function(event) {
		

		
		if ( ! $('#title').val() ) {

			error = "saissisez un texte";

			$('.errorTitle').html(error);

			event.preventDefault();
			
		} else {

			$('.errorTitle').html("");

		}

		if ( ! $('#contents').val() ) {

			error = "saissisez un texte";

			$('.errorContents').html(error);

			event.preventDefault();
			
		} else {

			$('.errorContents').html("");

		}

	})



});