<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
      rel="stylesheet"
    />
	
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="/style/bootstrap.css" />
    <!-- <link rel="stylesheet" href="./style/style1.css" />
     -->
	
    <!-- FontAwesome -->
    <script
      src="https://kit.fontawesome.com/e08babf8bc.js"
      crossorigin="anonymous"
    ></script>
    
    <style>
      /* Custom styles for responsive images */
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
      .blue-color-dark{
       background-color: rgb(30, 47, 117);
      }
      @media (max-width: 768px) {
        .navbar-brand img {
          max-height: 6rem; /* Adjust for smaller screens */
        }
      }

      @media (max-width: 576px) {
        .navbar-brand img {
          max-height: 4rem; /* Adjust for extra small screens */
        }
      }

      /* Center the links on larger screens */
      .navbar-nav {
        margin-left: auto;
        margin-right: auto;
      }

      /* Center the toggler button on small screens */
      @media (max-width: 768px) {
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
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
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
            /* gap: 15px; */
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
           
        .profile-info input[type="text"],
        .profile-info input[type="file"],
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
            background-color: rgb(235 125 30);
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            text-align: center;
            margin-top: 20px;
            margin-right:20px;
            width: 15%;
        }
        .save-button:hover {
            background-color: rgb(235 125 30);
        }
        
        img{
        	
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
    </style>
  </head>
  <body>
    <!-- Header section -->
    <header>
      <!-- Contact in header -->
      <div
        class="card blue-color text-white flex-row align-items-center justify-content-between"
      >
        <div class="d-flex flex-row align-items-center">
          <i
            class="fa-solid fa-phone-volume"
            style="color: #ffffff; margin-left: 1rem"
          ></i>
          <p class="list-group fs-6 my-2 mx-3">
            हेल्पलाइन टोल फ्री संपर्क क्रमांक : १८१
          </p>
        </div>

        <p class="my-2 mr-2 position-relative end"><a href="https://forms.gle/iFdtHvxBqxy2Wwor8" style="color: #ffffff;"> त्रुटी नोंदवा </a></p>
      </div>

      <!-- Logo section header -->
      <nav class="navbar navbar-light bg-white">
        <div
          class="container-fluid d-flex align-items-center justify-content-between"
        >
          <div class="d-flex align-items-center">
            <!-- <a class="navbar-brand" href="#">
              <img src="./assets/logo.png" alt="Logo 1" />
            </a> -->
            <a class="navbar-brand" href="#">
              <img src="/assets/logo-maha.png" alt="Logo 2" />
            </a>
          </div>
          <a class="navbar-brand" href="#">
            <img src="/assets/govEmblem.png" alt="Government Emblem" />
          </a>
        </div>
      </nav>

      <!-- Navigation links section -->
      <nav class="navbar navbar-expand-lg navbar-dark saffron-color">
        <div class="container-fluid">
          <button
            class="navbar-toggler"
            type="button"
            data-bs-toggle="collapse"
            data-bs-target="#navbarNav"
            aria-controls="navbarNav"
            aria-expanded="false"
            aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse m-0" id="navbarNav">
            <ul class="navbar-nav text-center">
              <li class="nav-item border-bottom mx-4">
                <i class="fa-solid fa-house-user" style="color: #ffffff"></i>
                <a
                  class="nav-link active d-inline-block"
                  aria-current="page"
                  href="/homepage"
                  >मुखपृष्ठ</a
                >
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-regular fa-file-lines"></i>
                <a class="nav-link d-inline-block" href="/loginApplicationCM">मुख्यमंत्री - माझी लाडकी बहीण योजनेचा अर्ज</a>
              </li>
              <!-- <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-regular fa-calendar"></i>
                <a class="nav-link d-inline-block" href="/ApplicationsMadeEarlier">यापूर्वी केलेले अर्ज</a>
              </li> -->
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-user"></i>
                <a class="nav-link d-inline-block" href="/profile">प्रोफाइल</a>
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
				  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0z"/>
				  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708z"/>
				</svg>
                <a class="nav-link d-inline-block" href="./logout">लॉगआउट</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>


<div class="profile-container">
        <h6>प्रोफाईल संपादित करा / Edit Profile</h6>
		<br>
        <!-- Profile Edit Form -->
        <form action="/saveprofile" method="post" class="profile-info" enctype="multipart/form-data">
        	
        	<div class="profile-picture-preview">
            <% 
                String profilePicture = (String) request.getAttribute("profilePicture");
                if (profilePicture != null && !profilePicture.isEmpty()) {
            %>
                <img src="<%= profilePicture %>" alt="Profile Picture">
            <% } else { %>
            	
              <img
                class="profile-picture"
                <c:choose>
                  <c:when test="${user.file != null && !user.file.isEmpty()}">
                    src="<c:url value='${user.file}'/>"
                  </c:when>
                  <c:otherwise>
                    src="https://res.cloudinary.com/dc80grfev/image/upload/v1725614834/tbugp3kbi5ybcgzepqlq.jpg"
                  </c:otherwise>
                </c:choose>
                alt="Profile Picture"
              />
            <% } %>
        </div>
        	
        <input type="hidden" name="id" value="${user.id}">

            <label for="fullName">पूर्ण नाव</label>
            <input type="text" id="fullName" name="full_name" value="${user.full_name}" required>
			<br>
            <label for="district">जिल्हा</label>
            <input type="text" id="district" name="distric" value="${user.distric}" required>
			<br>
            <label for="taluka">तालुका</label>
            <input type="text" id="taluka" name="taluka" value="${user.taluka}" required>
			<br>
            <label for="village">गाव</label>
            <input type="text" id="village" name="village" value="${user.village}" required>
			<br>
            <label for="municipality">महानगरपालिका / नगरपालिका</label>
            <input type="text" id="municipality" name="municipal_corporation" value="${user.municipal_corporation}" required>
			<br>
            <label	for="authorized-person" title="select kind of person you are.">Authorized Person<span class="required-star">*</span>	</label>
						<select id="authorized-person" name="authorized_Person" required>
						<option value="" selected>Select AuthorizedPerson</option>
						<option value="general_woman" >General Woman</option>
						<option value="cluster_resource_person" >Cluster Resource Person (CRP)</option>
						<option value="anganwadi_worker" >Anganwadi Worker</option>
						<option value="gram_sevak" >Gram Sevak</option>
						<option value="ward_officer" >Ward Officer</option>
						<option value="setu_center" >Setu Center</option>
						<option value="municipal_corporation_kindergarten_worker" >Municipal Corporation Kindergarten Worker</option>
						<option value="asha_worker" >ASHA Worker</option>
						<option value="government_service_center" >Government Service Center</option>
						<option value="city_mission_manager" >City Mission Manager (CMM)</option>
						<option value="help_desk_chief" >Help Desk Chief</option>
						<option value="supervisor" >Supervisor (Chief Worker)</option>
					</select>
			<br>
			
                <label for="profilePicture">Update Image</label>
                <input type="file" id="profilePicture" name="profilePicture">
            
            <button type="submit" class="save-button">Save</button>
       
        </form>
    </div>




    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>