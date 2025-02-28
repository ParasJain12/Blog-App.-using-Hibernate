
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Registration</title>
</head>
<style>
body {
	padding-top: 50px;
}

fieldset {
	border: thin solid #ccc;
	border-radius: 4px;
	padding: 20px;
	padding-left: 40px;
	background: #fbfbfb;
}

legend {
	color: #678;
}

.form-control {
	width: 95%;
}

label small {
	color: #678 !important;
}

span.req {
	color: maroon;
	font-size: 112%;
}

legend {
	margin-top: 200px;
}
</style>
<script type="text/javascript">
	function checkPass() {
		//Store the password field objects into variables ...
		var pass1 = document.getElementById('pass1');
		var pass2 = document.getElementById('pass2');
		//Store the Confimation Message Object ...
		var message = document.getElementById('confirmMessage');
		//Set the colors we will be using ...
		var goodColor = "#66cc66";
		var badColor = "#ff6666";
		//Compare the values in the password field 
		//and the confirmation field
		if (pass1.value == pass2.value) {
			//The passwords match. 
			//Set the color to the good color and inform
			//the user that they have entered the correct password 
			pass2.style.backgroundColor = goodColor;
			message.style.color = goodColor;
			message.innerHTML = "Passwords Match"
		} else {
			//The passwords do not match.
			//Set the color to the bad color and
			//notify the user.
			pass2.style.backgroundColor = badColor;
			message.style.color = badColor;
			message.innerHTML = "Passwords Do Not Match!"
		}
	}
	function validatephone(phone) {
		var maintainplus = '';
		var numval = phone.value
		if (numval.charAt(0) == '+') {
			var maintainplus = '';
		}
		curphonevar = numval.replace(
				/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g, '');
		phone.value = maintainplus + curphonevar;
		var maintainplus = '';
		phone.focus;
	}
	//validate pincode
	function validatepincode(pincode) {

		var numval = pincode.value

		curphonevar = numval.replace(
				/[\\A-Za-z!"£$%^&\,*+_={};:'@#~,.Š\/<>?|`¬\]\[]/g, '');
		pincode.value = curphonevar;

		pincode.focus;
	}
	// validates text only
	function Validate(state) {
		state.value = state.value.replace(/[^a-zA-Z-\\s'\n\r.]+/g, '');
	}
	function Validate(city) {
		city.value = city.value.replace(/[^a-zA-Z-'\n\r.]+/g, '');
	}
	// validate email
	function email_validate(email) {
		var regMail = /^([_a-zA-Z0-9-]+)(\.[_a-zA-Z0-9-]+)*@([a-zA-Z0-9-]+\.)+([a-zA-Z]{2,3})$/;

		if (regMail.test(email) == false) {
			document.getElementById("status").innerHTML = "<span class='warning'>Email address is not valid yet.</span>";
		} else {
			document.getElementById("status").innerHTML = "<span class='valid'>Thanks, you have entered a valid Email address!</span>";
		}
	}
	// validate date of birth
	function dob_validate(dob) {
		var regDOB = /^(\d{1,2})[-\/](\d{1,2})[-\/](\d{4})$/;

		if (regDOB.test(dob) == false) {
			document.getElementById("statusDOB").innerHTML = "<span class='warning'>DOB is only used to verify your age.</span>";
		} else {
			document.getElementById("statusDOB").innerHTML = "<span class='valid'>Thanks, you have entered a valid DOB!</span>";
		}
	}
	// validate address
	function add_validate(address) {
		var regAdd = /^(?=.*\d)[a-zA-Z\s\d\/]+$/;

		if (regAdd.test(address) == false) {
			document.getElementById("statusAdd").innerHTML = "<span class='warning'>Address is not valid yet.</span>";
		} else {
			document.getElementById("statusAdd").innerHTML = "<span class='valid'>Thanks, Address looks valid!</span>";
		}
	}
	function user_validate(username) {
		var regUsername = /^[a-zA-Z0-9]+$/;
		if (regUsername.test(userName)) {
			document.getElementById("status").innerHTML = "<span class='warning'>UserNameis not valid yet.</span>";
		} else {
			document.getElementById("status").innerHTML = "<span class='valid'>Thanks, you have entered a valid Username</span>";
		}
	}
</script>
<body class="img js-fullheight"
	style="background-image: url(Assests/imgages/2.jpg);">

	<!------ Include the above in your HEAD tag ---------->

	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">

				<form action="RegisterUserServlet" method="post">
					<fieldset>
						<h2 align="center">
							Registrations<span class="req"><small></small></span>
						</h2>

						<div class="form-group">
							<label for="username"><span class="req">* </span> User
								name: <small>This will be your login user name</small> </label> <input
								class="form-control" type="text" name="username" id="username"
								onchange="user_validate(this.value)"
								; placeholder="minimum 6 letters" required />
							<div id="errLast"></div>
						</div>

						<div class="form-group">
							<label for="password"><span class="req">* </span>
								Password: </label> <input required name="password" type="password"
								class="form-control inputpass" minlength="4" maxlength="16"
								id="pass1" />
							</p>

							<label for="password"><span class="req">* </span>
								Password Confirm: </label> <input required name="password"
								type="password" class="form-control inputpass" minlength="4"
								maxlength="16" placeholder="Enter again to validate" id="pass2"
								onkeyup="checkPass(); return false;" /> <span
								id="confirmMessage" class="confirmMessage"></span>
						</div>
						<div class="form-group">
							<label for="email"><span class="req">* </span> Email
								Address: </label> <input class="form-control" required type="text"
								name="email" id="email" onchange="email_validate(this.value);" />
							<div class="status" id="status"></div>
						</div>

						<div class="form-group">
							<label for="age"><span class="req">* </span> Age : </label> <input
								required type="text" name="age" id="age"
								class="form-control phone" max="60" min="18"
								onkeyup="validatephone(this);" placeholder="Enter Your Age" />
						</div>



						<div class="form-group">
							<label for="phonenumber"><span class="req">* </span>
								Phone Number: </label> <input required type="text" name="phonenumber"
								id="phonenumber" class="form-control phone" maxlength="28"
								onkeyup="validatephone(this);" placeholder="Mobile no." />
						</div>

						<div class="form-group">
							<label for="state"><span class="req">* </span> State </label> <input
								class="form-control" type="text" name="state" id="state"
								onkeyup="Validate(this)" required />
							<div id="errFirst"></div>
						</div>

						<div class="form-group">
							<label for="city"><span class="req">* </span> City</label> <input
								class="form-control" type="text" name="city" id="city"
								onkeyup="Validate(this)" required />
							<div id="errLast"></div>
						</div>
						<div class="form-group">
							<label for="pincode"><span class="req">* </span> Pincode:
							</label> <input required type="text" name="pincode" id="pincode"
								class="form-control" maxlength="6"
								onkeyup="validatepincode(this);" placeholder="Pincode" />
						</div>







						<div class="form-group">


							<hr>

							<input type="checkbox" required name="terms"
								onchange="this.setCustomValidity(validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');"
								id="field_terms"> <label for="terms">I agree
								with the <a href="terms.php"
								title="You may read our terms and conditions by clicking on this link">terms
									and conditions</a> for Registration.
							</label><span class="req">* </span>
						</div>

						<div class="form-group">
							<input class="btn btn-success" type="submit" name="submit_reg"
								value="Register">
						</div>
						<h5>You will receive an email to complete the registration
							and validation process.</h5>
						<h5>Be sure to check your spam folders.</h5>


					</fieldset>
				</form>
				<!-- ends register form -->

				<script type="text/javascript">
					document
							.getElementById("field_terms")
							.setCustomValidity(
									"Please indicate that you accept the Terms and Conditions");
				</script>
			</div>
			<!-- ends col-6 -->



		</div>
	</div>
</body>

</html>