<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>मुख्यमंत्री - माझी लाडकी बहीण योजना</title>
<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Martel+Sans:wght@200;300;400;600;700;800;900&family=Martel:wght@200;300;400;600;700;800;900&display=swap"
	rel="stylesheet" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/style/bootstrap.css" />
<!-- FontAwesome -->
<script src="https://kit.fontawesome.com/e08babf8bc.js"
	crossorigin="anonymous"></script>
<style>
/* Custom styles */
.navbar-brand img {
	height: auto;
	max-height: 8rem;
	width: auto;
	max-width: 100%;
}

.saffron-color {
	background-color: rgba(44, 61, 131, 1);
}

.saffron-border-color {
	border-color: rgba(44, 61, 131, 1);
}

.blue-color {
	background-color: rgba(205, 54, 107);
}

.blue-color-dark {
	background-color: rgb(30, 47, 117);
}

@media ( max-width : 768px) {
	.navbar-brand img {
		max-height: 6rem;
	}
}

@media ( max-width : 576px) {
	.navbar-brand img {
		max-height: 4rem;
	}
}

.navbar-nav {
	margin-left: auto;
	margin-right: auto;
}

@media ( max-width : 768px) {
	.navbar-toggler {
		margin-left: auto;
		margin-right: auto;
	}
}

.profile-container {
	max-width: 600px;
	margin: 50px auto;
	padding: 20px;
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.profile-container h2 {
	text-align: center;
	margin-bottom: 20px;
	font-size: 24px;
	color: #333;
}

.profile-info {
	display: flex;
	flex-direction: column;
}

.profile-info label {
	font-size: 16px;
	color: #333;
	margin-bottom: 5px;
}

.profile-picture {
	width: 120px;
	height: 120px;
	border-radius: 4%;
	object-fit: cover;
	margin-bottom: 20px;
	text-align: left;
}

.profile-info input[type="text"], .profile-info input[type="file"],
	.profile-info select {
	padding: 10px;
	font-size: 16px;
	border: 1px solid #ccc;
	border-radius: 4px;
	width: 100%;
	box-sizing: border-box;
}

.profile-picture-preview {
	text-align: left;
	margin-bottom: 20px;
}

.save-button {
	display: inline-block;
	padding: 10px 20px;
	font-size: 16px;
	color: #ffffff;
	background-color: rgb(235, 125, 30);
	border: none;
	border-radius: 4px;
	cursor: pointer;
	text-decoration: none;
	text-align: center;
	margin-top: 20px;
	margin-right: 20px;
	width: 15%;
}

.save-button:hover {
	background-color: rgb(235, 125, 30);
}

img {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 50%;
}

.profile-picture-placeholder {
	width: 120px;
	height: 120px;
	border-radius: 50%;
	background-color: #ccc;
	display: flex;
	align-items: center;
	justify-content: center;
	font-size: 14px;
	color: #777;
	margin: 0 auto 10px;
}

body {
	font-family: Arial, sans-serif;
	margin: 0;
	background-color: #f4f4f4;
}

.card-header {
	background-color: #003366;
	color: white;
	padding: 10px;
}

.actions button {
	margin-left: 10px;
	padding: 5px 10px;
	background-color: #ff9900;
	border: none;
	color: white;
	border-radius: 4px;
	cursor: pointer;
}

.actions button:hover {
	background-color: #cc7a00;
}

.profile img {
	border-radius: 50%;
	object-fit: cover;
}

@media print {
	header, .navbar, .card-header, .actions {
        display: none !important; /* Ensure these elements are hidden when printing */
    }
    .card {
        box-shadow: none !important;
        border: none !important;
    }
    body {
        margin: 0 !important;
        padding: 0 !important;
    }
}
</style>
</head>
<body>
	<!-- Header section -->
	<header>
		<!-- Contact in header -->
		<div
			class="card blue-color text-white flex-row align-items-center justify-content-between">
			<div class="d-flex flex-row align-items-center">
				<i class="fa-solid fa-phone-volume"
					style="color: #ffffff; margin-left: 1rem"></i>
				<p class="list-group fs-6 my-2 mx-3">हेल्पलाइन टोल फ्री संपर्क
					क्रमांक : १८१</p>
			</div>
			<p class="my-2 mr-2 position-relative end"><a href="https://forms.gle/iFdtHvxBqxy2Wwor8" style="color: #ffffff;"> त्रुटी नोंदवा </a></p>
		</div>

		<!-- Logo section header -->
		<nav class="navbar navbar-light bg-white">
			<div
				class="container-fluid d-flex align-items-center justify-content-between">
				<div class="d-flex align-items-center">
					<a class="navbar-brand" href="#"> <img
						src="/assets/logo-maha.png" alt="Logo 2" />
					</a>
				</div>
				<a class="navbar-brand" href="#"> <img
					src="/assets/govEmblem.png" alt="Government Emblem" />
				</a>
			</div>
		</nav>

		<!-- Navigation links section -->
		<nav class="navbar navbar-expand-lg navbar-dark saffron-color">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse m-0" id="navbarNav">
					<ul class="navbar-nav text-center">
						<li class="nav-item border-bottom mx-4"><i
							class="fa-solid fa-house-user" style="color: #ffffff"></i> <a
							class="nav-link active d-inline-block" aria-current="page"
							href="/homepage">मुखपृष्ठ</a></li>
						<li class="nav-item border-bottom mx-4" style="color: #ffffff">
							<i class="fa-regular fa-file-lines"></i> <a
							class="nav-link d-inline-block" href="/loginApplicationCM">मुख्यमंत्री
								- माझी लाडकी बहीण योजनेचा अर्ज</a>
						</li>
						<!-- <li class="nav-item border-bottom mx-4" style="color: #ffffff">
							<i class="fa-regular fa-calendar"></i> <a
							class="nav-link d-inline-block" href="/ApplicationsMadeEarlier">यापूर्वी
								केलेले अर्ज</a>
						</li> -->
						<li class="nav-item border-bottom mx-4" style="color: #ffffff">
							<i class="fa-solid fa-user"></i> <a
							class="nav-link d-inline-block" href="/profile">प्रोफाइल</a>
						</li>
						<li class="nav-item border-bottom mx-4" style="color: #ffffff">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-arrow-right-square"
								viewBox="0 0 16 16">
                                <path fill-rule="evenodd"
									d="M10.146 11.354a.5.5 0 0 1 0-.708L12.793 8H4.5a.5.5 0 0 1 0-1h8.293l-2.647-2.646a.5.5 0 0 1 .708-.708l3.5 3.5a.5.5 0 0 1 0 .708l-3.5 3.5a.5.5 0 0 1-.708 0z" />
                                <path fill-rule="evenodd"
									d="M13 8a.5.5 0 0 1-.5.5H8v5a.5.5 0 0 1-1 0V8.5H3.5a.5.5 0 0 1 0-1H7V2.5a.5.5 0 0 1 1 0V7.5h4.5a.5.5 0 0 1 .5.5z" />
                            </svg> <a class="nav-link d-inline-block"
							href="/logout">बाहेर पडा</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- Card section -->
	<div class="card mx-auto my-5 shadow-sm" style="max-width: 600px;">
		<div
			class="card-header d-flex justify-content-between align-items-center">
			<div class="welcome">Welcome, ${user.full_name}</div>
			<div class="actions">
				<button class="btn btn-warning btn-sm" onclick="downloadCard()">Download
					Ladki Bahin card</button>
				<button class="btn btn-warning btn-sm" onclick="printCard()">Print
					Card</button>
				<button class="btn btn-warning btn-sm" onclick="printPVC()">Print
					PVC</button>
			</div>
		</div>
		<div id="card-content" class="card-body d-flex">
			<div class="profile d-flex flex-column align-items-start">
				<img src="${user.file}" alt="Profile Picture" class="img-fluid mb-3"
					style="width: 120px; height: 120px;" />
				<div class="details">
					<p>
						<strong>Name/नाम:</strong> ${user.full_name}
					</p>
					<p>
						<strong>Ladki Bahin number/लाडकी-संख्या:</strong> ${user.id}
					</p>
					<p style="text-transform: capitalize;">
						<strong>Address/पता:</strong> ${user.taluka}, ${user.taluka},
						Maharashtra
					</p>
					<p>
						<strong>Gender/लिंग:</strong> Female
					</p>
					<p>
						<strong>Email/ईमेल:</strong> ${user.email}
					</p>
					<p>
						<strong>Mobile/मोबाइल:</strong> ${user.mobileNumber}
					</p>
				</div>
			</div>
			<div class="ml-auto d-flex flex-column align-items-center mt-5">
				<img src="/assets/logo.png" alt="QR Code" class="img-fluid"
					style="width: 200px; height: 200px;" /> <img
					src="/assets/logo-maha.png" alt="" class="img-fluid mt-3"
					style="width: 200px;" />
			</div>
		</div>
	</div>

	<!-- Scripts -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
	<script>
        // Function to print the card
        function printCard() {
            window.print();
        }

        // Function to download the card as an image
        // Function to download the card as an image
    function downloadCard() {
        // Ensure the Cloudinary image URLs are correctly set in the HTML (use absolute URLs)
        html2canvas(document.querySelector("#card-content"), {
            useCORS: true, // This allows cross-origin images to be used in canvas
            logging: true, // Enable logging to see potential issues in the console
            allowTaint: true // This should be set if images might be tainted
        }).then((canvas) => {
            const link = document.createElement("a");
            link.href = canvas.toDataURL("image/png");
            link.download = "ABHA_Card.png";
            link.click();
        }).catch((error) => {
            console.error("Error downloading the card: ", error);
        });
    }

        // Function to print the PVC (can use the same print function or different layout if needed)
        function printPVC() {
            printCard(); // For simplicity, reusing the print function
        }
    </script>

	<!-- Optional Bootstrap JavaScript; choose one of the two! -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
