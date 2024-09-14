<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1.0" />
			<script src="https://kit.fontawesome.com/64d58efce2.js" crossorigin="anonymous"></script>
			<link rel="stylesheet" href="/style/login.css" />
			<title>Sign in & Sign up Form</title>


			<style>
				/* Popup container - can be anything you want */
				.popup {
					position: fixed;
					z-index: 9;
					left: 50%;
					top: 50%;
					transform: translate(-50%, -50%);
					background-color: white;
					padding: 20px;
					border: 1px solid #ccc;
					box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
					display: none;
					/* Hidden by default */
					width: 300px;
					text-align: center;
				}

				/* Popup close button */
				.popup p {
					color: black;
				}

				.popup .close-btn {
					background-color: #007bff;
					color: white;
					border: none;
					padding: 10px 20px;
					cursor: pointer;
					margin-top: 15px;
				}

				.popup .close-btn:hover {
					background-color: #0056b3;
				}

				.panel img {
					height: 400px;
				}
			</style>
			<script type="text/javascript">
				function showPopup(message) {
					if (message) {
						const popup = document.getElementById('customPopup');
						const popupMessage = document.getElementById('popupMessage');
						popupMessage.textContent = message;
						popup.style.display = 'block';
					}
				}

				function closePopup() {
					document.getElementById('customPopup').style.display = 'none';
				}
			</script>
		</head>

		<body onload="showPopup('${param.message}')">
			<div class="panels-container">
				<div class="panel left-panel">
					<img src="./assets/ldkb.png" class="image" alt="Background Image" />
				</div>
				<div class="panel right-panel">
					<div class="login">
						<form method="post" action="/checkCredentials">
							<h1 style="text-align: center;">Login</h1>
							<label for="email">Email</label>
							<input type="email" id="email" name="email" placeholder="Email">
							<label for="password">Password</label>
							<input type="password" id="password" name="password" placeholder="Password" minlength="8"
								maxlength="25">

							<div class="button-container">
								<button type="submit" class="login-btn">Login</button>
							</div>

							<p>
								<span class="text">Doesn't have an account?</span> <a href="./register"
									class="create-account-link">Create Account</a>
							</p>

							<p>
								<span class="text">Forgot Password?</span> <a href="./forgotPassword"
									class="create-account-link">Click
									here</a>
							</p>
						</form>
					</div>
				</div>
			</div>
			<!-- Custom Popup -->
			<div id="customPopup" class="popup">
				<p id="popupMessage"></p>
				<button class="close-btn" onclick="closePopup()">Close</button>
			</div>
		</body>

		</html>