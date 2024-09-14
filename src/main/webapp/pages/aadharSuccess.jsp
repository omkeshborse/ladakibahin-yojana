<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        :root {
            --color-blue: #0094ff;
            --color-white: #fff;
        }

        *,
        *:before,
        *:after {
            box-sizing: border-box;
        }

        body {
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: var(--color-white);
        }

        .star {
            position: absolute;
            fill: var(--color-blue);
            opacity: 1;
            /* Set opacity to 1 to make stars visible */
        }

        .star:nth-child(1) {
            width: 12px;
            height: 12px;
            left: 12px;
            top: 16px;
        }

        .star:nth-child(2) {
            width: 18px;
            height: 18px;
            left: 168px;
            top: 84px;
        }

        .star:nth-child(3) {
            width: 10px;
            height: 10px;
            left: 32px;
            top: 162px;
        }

        .star:nth-child(4) {
            width: 20px;
            height: 20px;
            left: 82px;
            top: -12px;
        }

        .star:nth-child(5) {
            width: 14px;
            height: 14px;
            left: 125px;
            top: 162px;
        }

        .star:nth-child(6) {
            width: 10px;
            height: 10px;
            left: 16px;
            top: 16px;
        }

        .checkmark {
            position: relative;
            padding: 30px;
        }

        .checkmark__check {
            position: absolute;
            top: 50%;
            left: 50%;
            z-index: 10;
            transform: translate3d(-50%, -50%, 0);
            fill: var(--color-white);
        }

        .checkmark__background {
            fill: var(--color-blue);
        }

        .hover-effects-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
            padding: 20px;
            max-width: 1000px;
        }

        .effect-card {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .service-button {
            display: inline-block;
            width: 100%;
            padding: 15px 20px;
            font-size: 1rem;
            color: white;
            border: none;
            border-radius: 4px;
            text-decoration: none;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .service-button.grow {
            background-color: #33B5E5;
            /* Light blue */
        }
    </style>

</head>

<body>
    <div class="checkmark">
        <svg class="star" height="19" viewBox="0 0 19 19" width="19" xmlns="http://www.w3.org/2000/svg">
            <path
                d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
            </path>
        </svg>
        <svg class="star" height="19" viewBox="0 0 19 19" width="19" xmlns="http://www.w3.org/2000/svg">
            <path
                d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
            </path>
        </svg>
        <svg class="star" height="19" viewBox="0 0 19 19" width="19" xmlns="http://www.w3.org/2000/svg">
            <path
                d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
            </path>
        </svg>
        <svg class="star" height="19" viewBox="0 0 19 19" width="19" xmlns="http://www.w3.org/2000/svg">
            <path
                d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
            </path>
        </svg>
        <svg class="star" height="19" viewBox="0 0 19 19" width="19" xmlns="http://www.w3.org/2000/svg">
            <path
                d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
            </path>
        </svg>
        <svg class="star" height="19" viewBox="0 0 19 19" width="19" xmlns="http://www.w3.org/2000/svg">
            <path
                d="M8.296.747c.532-.972 1.393-.973 1.925 0l2.665 4.872 4.876 2.66c.974.532.975 1.393 0 1.926l-4.875 2.666-2.664 4.876c-.53.972-1.39.973-1.924 0l-2.664-4.876L.76 10.206c-.972-.532-.973-1.393 0-1.925l4.872-2.66L8.296.746z">
            </path>
        </svg>
        <svg class="checkmark__check" height="36" viewBox="0 0 48 36" width="48" xmlns="http://www.w3.org/2000/svg">
            <path
                d="M47.248 3.9L43.906.667a2.428 2.428 0 0 0-3.344 0l-23.63 23.09-9.554-9.338a2.432 2.432 0 0 0-3.345 0L.692 17.654a2.236 2.236 0 0 0 .002 3.233l14.567 14.175c.926.894 2.42.894 3.342.01L47.248 7.128c.922-.89.922-2.34 0-3.23">
            </path>
        </svg>
        <svg class="checkmark__background" height="115" viewBox="0 0 120 115" width="120"
            xmlns="http://www.w3.org/2000/svg">
            <path
                d="M107.332 72.938c-1.798 5.557 4.564 15.334 1.21 19.96-3.387 4.674-14.646 1.605-19.298 5.003-4.61 3.368-5.163 15.074-10.695 16.878-5.344 1.743-12.628-7.35-18.545-7.35-5.922 0-13.206 9.088-18.543 7.345-5.538-1.804-6.09-13.515-10.696-16.877-4.657-3.398-15.91-.334-19.297-5.002-3.356-4.627 3.006-14.404 1.208-19.962C10.93 67.576 0 63.442 0 57.5c0-5.943 10.93-10.076 12.668-15.438 1.798-5.557-4.564-15.334-1.21-19.96 3.387-4.674 14.646-1.605 19.298-5.003C35.366 13.73 35.92 2.025 41.45.22c5.344-1.743 12.628 7.35 18.545 7.35 5.922 0 13.206-9.088 18.543-7.345 5.538 1.804 6.09 13.515 10.696 16.877 4.657 3.398 15.91.334 19.297 5.002 3.356 4.627-3.006 14.404-1.208 19.962C109.07 47.424 120 51.562 120 57.5c0 5.943-10.93 10.076-12.668 15.438z">
            </path>
        </svg>
        <div class=""
            style="margin-top: 4rem; margin-left: -3rem; display: flex; flex-direction: column; justify-content: center; align-items: center;">
            <h1>Aadhar verified </h1>
            <a href="/profile" style="text-decoration: none; color: black;">
                <div class="effect-card">
                    <button class="service-button grow" >Profile</button>
                </div>
            </a>
        </div>
    </div>

</body>

</html>