$(document).ready(function() {

	$('#email').focusout(function() {
		email_validate();
	});

	function email_validate() {

		var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
		var email = $('#email').val();

		if (email !== '') {
			if (pattern.test(email)) {
				$('#lbl').css('color', '#66ff33');
				$('#email').css('border', '2px solid #66ff33');
				$('#success').css('display', 'block');
				$('#error').css('display', 'none');
				$('#span1').css('display', 'none');
				$('#span2').css('display', 'none');
				$('#warning').css('display', 'none');
			}
			else {
				$('#lbl').css('color', 'red');
				$('#email').css('border', '2px solid red');
				$('#error').css('display', 'block');
				$('#success').css('display', 'none');
				$('#span1').css('display', 'block');
				$('#span2').css('display', 'none');
				$('#warning').css('display', 'none');
			}
		}
		else {
			$('#span2').css('display', 'block');
			$('#lbl').css('color', 'yellow');
			$('#email').css('border', '2px solid yellow');
			$('#error').css('display', 'none');
			$('#success').css('display', 'none');
			$('#warning').css('display', 'block');
			$('#span1').css('display', 'none');
		}
	}

	$('#password').focusout(function() {
		password_validate();
	});

	function password_validate() {


		var password = $('#password').val();

		if (password == '') {
			$('#span3').css('display', 'block');
			$('#lbl').css('color', 'yellow');
			$('#password').css('border', '2px solid yellow');
			$('#error').css('display', 'none');
			$('#success').css('display', 'none');
			$('#warning').css('display', 'block');
			$('#span1').css('display', 'none');

		}
		else {
			$('#span3').css('display', 'none');
			$('#lbl').css('color', '#66ff33');
			$('#password').css('border', '2px solid #66ff33');
			$('#error').css('display', 'none');
			$('#success').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span1').css('display', 'none');

		}


	};

	$('#confirmPassword').focusout(function() {
		confirmPassword_validate();
	});

	function confirmPassword_validate() {


		var password = $('#password').val();
		var confirmPassword = $('#confirmPassword').val();

		if (confirmPassword == password) {
			$('#lbl').css('color', '#66ff33');
			$('#confirmPassword').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span4').css('display', 'none');
		}
		else {
			$('#lbl').css('color', 'red');
			$('#confirmPassword').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span4').css('display', 'block');
			$('#warning').css('display', 'none');
		}




	};

	$('#phonenumber').focusout(function() {
		phonenumber_validate();
	});

	function phonenumber_validate() {

		var pattern = /^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$/;
		var phonenumber = $('#phonenumber').val();

		if (phonenumber !== '') {
			if (pattern.test(phonenumber)) {
				$('#lbl').css('color', '#66ff33');
				$('#phonenumber').css('border', '2px solid #66ff33');
				$('#success').css('display', 'block');
				$('#error').css('display', 'none');
				$('#span5').css('display', 'none');
				$('#span6').css('display', 'none');
				$('#warning').css('display', 'none');
			}
			else {
				$('#lbl').css('color', 'red');
				$('#phonenumber').css('border', '2px solid red');
				$('#error').css('display', 'block');
				$('#success').css('display', 'none');
				$('#span5').css('display', 'block');
				$('#span6').css('display', 'none');
				$('#warning').css('display', 'none');
			}
		}
		else {
			$('#span6').css('display', 'block');
			$('#lbl').css('color', 'yellow');
			$('#phonenumber').css('border', '2px solid yellow');
			$('#error').css('display', 'none');
			$('#success').css('display', 'none');
			$('#warning').css('display', 'block');
			$('#span5').css('display', 'none');
		}
	}

	$('#email1').focusout(function() {
		email1_validate();
	});

	function email1_validate() {

		var pattern = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
		var email1 = $('#email1').val();

		if (email1 !== '') {
			if (pattern.test(email1)) {
				$('#lbl').css('color', '#66ff33');
				$('#email1').css('border', '2px solid #66ff33');
				$('#success').css('display', 'block');
				$('#error').css('display', 'none');
				$('#span7').css('display', 'none');
				$('#span8').css('display', 'none');
				$('#warning').css('display', 'none');
			}
			else {
				$('#lbl').css('color', 'red');
				$('#email1').css('border', '2px solid red');
				$('#error').css('display', 'block');
				$('#success').css('display', 'none');
				$('#span7').css('display', 'block');
				$('#span8').css('display', 'none');
				$('#warning').css('display', 'none');
			}
		}
		else {
			$('#span8').css('display', 'block');
			$('#lbl').css('color', 'yellow');
			$('#email1').css('border', '2px solid yellow');
			$('#error').css('display', 'none');
			$('#success').css('display', 'none');
			$('#warning').css('display', 'block');
			$('#span7').css('display', 'none');
		}
	}
	$('#permanentAddress').focusout(function() {
		permanentAddress_validate();
	});

	function permanentAddress_validate() {


		var permanentAddress = $('#permanentAddress').val();

		if (permanentAddress == '') {
			$('#lbl').css('color', 'red');
			$('#permanentAddress').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span9').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#permanentAddress').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span9').css('display', 'none');

		}




	};
	$('#permanentCity').focusout(function() {
		permanentCity_validate();
	});

	function permanentCity_validate() {


		var permanentCity = $('#permanentCity').val();


		if (permanentCity == '') {
			$('#lbl').css('color', 'red');
			$('#permanentCity').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span10').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#permanentCity').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span10').css('display', 'none');

		}
		$('#currentAddress').focusout(function() {
			currentAddress_validate();
		});

		function currentAddress_validate() {


			var currentAddress = $('#currentAddress').val();

			if (currentAddress == '') {
				$('#lbl').css('color', 'red');
				$('#currentAddress').css('border', '2px solid red');
				$('#error').css('display', 'block');
				$('#success').css('display', 'none');
				$('#span50').css('display', 'block');
				$('#warning').css('display', 'none');

			}
			else {
				$('#lbl').css('color', '#66ff33');
				$('#currentAddress').css('border', '2px solid #66ff33');
				$('#success').css('display', 'block');
				$('#error').css('display', 'none');
				$('#warning').css('display', 'none');
				$('#span9').css('display', 'none');

			}




		};
		$('#currentCity').focusout(function() {
			currentCity_validate();
		});

		function currentCity_validate() {


			var currentCity = $('#currentCity').val();


			if (currentCity == '') {
				$('#lbl').css('color', 'red');
				$('#currentCity').css('border', '2px solid red');
				$('#error').css('display', 'block');
				$('#success').css('display', 'none');
				$('#span51').css('display', 'block');
				$('#warning').css('display', 'none');

			}
			else {
				$('#lbl').css('color', '#66ff33');
				$('#currentCity').css('border', '2px solid #66ff33');
				$('#success').css('display', 'block');
				$('#error').css('display', 'none');
				$('#warning').css('display', 'none');
				$('#span10').css('display', 'none');

			}





	};
	$('#state').focusout(function() {
		state_validate();
	});

	function state_validate() {


		var state = $('#state').val();


		if (state == '') {
			$('#lbl').css('color', 'red');
			$('#state').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span11').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#state').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span11').css('display', 'none');

		}




	};
	$('#zipCode').focusout(function() {
		zipCode_validate();
	});

	function zipCode_validate() {


		var zipCode = $('#zipCode').val();

		if (zipcode == '') {
			$('#lbl').css('color', 'red');
			$('#zipCode').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span12').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#zipCode').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span12').css('display', 'none');

		}




	};
	$('#schoolName').focusout(function() {
		schoolName_validate();
	});

	function schoolName_validate() {


		var schoolName = $('#schoolName').val();

		if (schoolName == '') {
			$('#lbl').css('color', 'red');
			$('#schoolName').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span13').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#schoolName').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span13').css('display', 'none');

		}




	};
	$('#collegeName').focusout(function() {
		collegeName_validate();
	});

	function collegeName_validate() {


		var collegeName = $('#collegeName').val();

		if (collegeName == '') {
			$('#lbl').css('color', 'red');
			$('#collegeName').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span14').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#collegeName').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span14').css('display', 'none');

		}




	};
	$('#firstName').focusout(function() {
		firstName_validate();
	});

	function firstName_validate() {


		var firstName = $('#firstName').val();

		if (firstName == '') {
			$('#lbl').css('color', 'red');
			$('#firstName').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span15').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#firstName').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span15').css('display', 'none');

		}




	};
	$('#lastName').focusout(function() {
		lastName_validate();
	});

	function lastName_validate() {


		var lastName = $('#lastName').val();

		if (lastName == '') {
			$('#lbl').css('color', 'red');
			$('#lastName').css('border', '2px solid red');
			$('#error').css('display', 'block');
			$('#success').css('display', 'none');
			$('#span16').css('display', 'block');
			$('#warning').css('display', 'none');

		}
		else {
			$('#lbl').css('color', '#66ff33');
			$('#lastName').css('border', '2px solid #66ff33');
			$('#success').css('display', 'block');
			$('#error').css('display', 'none');
			$('#warning').css('display', 'none');
			$('#span16').css('display', 'none');

		}
	
	});

});


