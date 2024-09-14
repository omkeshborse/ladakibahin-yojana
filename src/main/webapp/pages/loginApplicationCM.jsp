<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
    <link rel="stylesheet" href="./style/bootstrap1.css" />
    <!-- <link rel="stylesheet" href="./style/style1.css" />
     -->

    <!-- FontAwesome -->
    <script src="https://kit.fontawesome.com/e08babf8bc.js" crossorigin="anonymous"></script>

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

      .blue-color-dark {
        background-color: rgb(30, 47, 117);
      }

      @media (max-width: 768px) {
        .navbar-brand img {
          max-height: 6rem;
          /* Adjust for smaller screens */
        }
      }

      @media (max-width: 576px) {
        .navbar-brand img {
          max-height: 4rem;
          /* Adjust for extra small screens */
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

      .AadharNo {

        Display: grid;
        justify-content: center;
        align-content: center;
        margin-top: 50px;
      }

      .Pass {
        margin-top: 30px;
      }

      label {

        font-weight: 500;
        color: black;
        /* Or any other color for the label text */
      }

      input {
        margin-top: .25rem;
        width: 100%;
        border-radius: .25rem;
        border-width: 1px;
        --tw-border-opacity: 1;
        border-color: rgb(209 213 219);
        --tw-bg-opacity: 1;
        background-color: rgb(255 255 255);
        padding-left: .75rem;
        padding-right: .75rem;
        font-size: .875rem;
        font-weight: 300;
        line-height: 2rem;
        --tw-text-opacity: 1;
        color: rgb(55 65 81);
        outline: 2px solid transparent;
        outline-offset: 2px;
        transition-property: color, background-color, border-color, text-decoration-color, fill, stroke;
        transition-duration: .1s;
        transition-timing-function: cubic-bezier(.4, 0, .2, 1)
      }

      .g-recaptcha {
        margin-top: 20px;
      }

      .button-container {
        display: flex;
        justify-content: space-between;
      }

      button {
        padding: 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s;
        margin-top: 30px;
      }

      .validate-btn {
        background-color: rgb(235 125 30);
        color: #fff;
        margin-right: 10px;
      }

      .login-btn:hover {
        background-color: #0056b3;
      }

      .required-star {
        color: rgb(220 38 38);
      }
    </style>
  </head>

  <body>
    <!-- Header section -->
    <header>
      <!-- Contact in header -->
      <div class="card blue-color text-white flex-row align-items-center justify-content-between">
        <div class="d-flex flex-row align-items-center">
          <i class="fa-solid fa-phone-volume" style="color: #ffffff; margin-left: 1rem"></i>
          <p class="list-group fs-6 my-2 mx-3">
            हेल्पलाइन टोल फ्री संपर्क क्रमांक : १८१
          </p>
        </div>

        <p class="my-2 mr-2 position-relative end">त्रुटी नोंदवा</p>
      </div>

      <!-- Logo section header -->
      <nav class="navbar navbar-light bg-white">
        <div class="container-fluid d-flex align-items-center justify-content-between">
          <div class="d-flex align-items-center">
            <!-- <a class="navbar-brand" href="#">
              <img src="./assets/logo.png" alt="Logo 1" />
            </a> -->
            <a class="navbar-brand" href="#">
              <img src="./assets/logo-maha.png" alt="Logo 2" />
            </a>
          </div>
          <a class="navbar-brand" href="#">
            <img src="./assets/govEmblem.png" alt="Government Emblem" />
          </a>
        </div>
      </nav>

      <!-- Navigation links section -->
      <nav class="navbar navbar-expand-lg navbar-dark saffron-color">
        <div class="container-fluid">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse m-0" id="navbarNav">
            <ul class="navbar-nav text-center">
              <li class="nav-item border-bottom mx-4">
                <i class="fa-solid fa-house-user" style="color: #ffffff"></i>
                <a class="nav-link active d-inline-block" aria-current="page" href="./homepage">मुखपृष्ठ</a>
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-regular fa-file-lines"></i>
                <a class="nav-link d-inline-block" href="./loginApplicationCM">मुख्यमंत्री - माझी लाडकी बहीण योजनेचा
                  अर्ज</a>
              </li>
              <!-- <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-regular fa-calendar"></i>
                <a class="nav-link d-inline-block" href="./ApplicationsMadeEarlier">यापूर्वी केलेले अर्ज</a>
              </li> -->
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <i class="fa-solid fa-user"></i>
                <a class="nav-link d-inline-block" href="./profile">प्रोफाइल</a>
              </li>
              <li class="nav-item border-bottom mx-4" style="color: #ffffff">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                  class="bi bi-box-arrow-left" viewBox="0 0 16 16">
                  <path fill-rule="evenodd"
                    d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0z" />
                  <path fill-rule="evenodd"
                    d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708z" />
                </svg>
                <a class="nav-link d-inline-block" href="./logout">लॉगआउट</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

    <form action="/ValidateAadhar" method="post">
      <div class="AadharNo">
        <label for="Aadhar">Aadhar No. <span class="required-star">*</span></label>
        <input type="text" id="Aadhar" name="aadharNumber" minlength="12" maxlength="12" placeholder="Please provide Aadhar card No." required />

        <label for="pin" class="mt-2">Aadhar Pin</label>
        <input type="text" id="pin" name="pin" placeholder="Please Enter Aadhar card Pin." value="123456" required />


        <div class="g-recaptcha" data-sitekey="6Lf9yC0qAAAAAK_Em8szZePFkvbAxk7R1F1FRk1R"></div>
        <div class="button-container">
          <button type="submit" class="validate-btn">Validate Aadhar</button>
        </div>
      </div>
    </form>


    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
  </body>

  </html>