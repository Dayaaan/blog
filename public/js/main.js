"use strict";

$(function() {


	var error;



	$('form').on("submit", function(event) {
		

		
		if ($('#pseudo').val() == "") {

			error = "Veuillez remplir le champ pseudo";

			$('.error1').html(error);
			event.preventDefault();
			// si il y'a une erreur il ne soumet pas le formulaire
			

		} else {

			$('.error1').html("");
		}

		if ($('#contents').val() == "") {

			error = "saissisez un texte";

			$('.error2').html(error);

			event.preventDefault();
			
		} else {
			
			$('.error2').html("");
		}

	})


	$('form').on("submit", function(event) {
		

		
		if ($('#title').val() == "") {

			error = "Veuillez mettre un titre";

			$('.error1').html(error);
			event.preventDefault();
			// si il y'a une erreur il ne soumet pas le formulaire
			
		} else {

			$('.error1').html("");

		}

		if ($('#contents').val() == "") {

			error = "saissisez un texte";

			$('.error2').html(error);

			event.preventDefault();
			
		} else {

			$('.error2').html("");

		}

	})
	



});