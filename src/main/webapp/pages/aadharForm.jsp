<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            
            min-width: 320px;
        }

        h2 {
            text-align: center;
            margin: 50px 0;
            color: #386c3d;
            font-size: 47px;
            font-family: 'Quicksand', sans-serif;

            @media(max-width:540px) {
                font-size: 28px;
                margin: 30px 0;
            }
        }

        form {
            padding: 0 10%;

            section {
                width: calc(50% - 40px);
                padding: 20px;
                background: #8ed294;
                margin: 20px;
                border-radius: 5px;

                &.left {
                    float: left;
                }

                &.right {
                    float: right;
                }

                .input-container {
                    label {
                        display: block;
                        margin-bottom: 4px;
                        color: white;
                        font-size: 16px;
                        text-shadow: 0px 2px 1px #65ad6b;
                        font-family: 'Quicksand', sans-serif;
                    }

                    input,
                    textarea {
                        width: 100%;
                        padding: 5px 10px;
                        height: 40px;
                        border-radius: 5px;
                        border: none;
                        background: #d7ffdb;
                        box-shadow: 0 2px 0px #77bd7d;
                        font-family: 'Quicksand', sans-serif;
                        font-size: 16px;
                        color: #757575;

                        &:focus {
                            outline: none;
                            background: white;
                        }
                    }

                    textarea {
                        height: 122px;
                        padding: 15px 10px;
                        resize: none;
                    }

                    padding:10px;
                }
            }

            .send-container {
                float: right;
                width: 100%;
                text-align: right;
                margin-right: 20px;

                input {
                    background: #77bd7d;
                    border: none;
                    color: white;
                    padding: 15px 30px;
                    border-radius: 5px;
                    font-size: 16px;
                    cursor: pointer;

                    &:hover {
                        background: #8ed294;
                    }
                }
            }

            &:after {
                content: "";
                display: block;
                clear: both;
            }

            @media(max-width:992px) {
                padding: 0 5%;
            }

            @media(max-width:768px) {
                margin-bottom: 50px;

                section {
                    width: 100%;
                    margin: 0;

                    &.left {
                        margin-bottom: -30px;
                    }
                }

                .send-container {
                    margin-right: 0;
                    margin-top: 15px;

                    input {
                        width: 100%;
                    }
                }
            }
        }
    </style>
</head>

<body>
    <h2>Aadhar form</h2>
    <form action="/createAadhar" method="post">
        <section class="left">
            <div class="input-container">
                <label for="aadhar-number">Aadhar Number</label>
                <input type="text" id="aadhar-number" name="aadharNumber" minlength="12" maxlength="12" required />
            </div>
            <div class="input-container">
                <label for="name" required>Name</label>
                <input type="text" id="name" name="name" minlength="3" maxlength="300" required />
            </div>
            <div class="input-container">
                <label for="phone">Mobile Number</label>
                <input type="text" id="phone" name="mobileNumber" minlength="10" maxlength="10" required />
            </div>
            <div class="input-container">
                <label for="DOB">Date of Birth</label>
                <input type="date" id="DOB" name="DOB" required />
            </div>
        </section>
        <section class="right">
            <div class="input-container">
                <label for="address">Address </label>
                <input type="text" id="address" name="address" minlength="10" required />
            </div>
            <div class="input-container">
                <label for="pin">Aadhar Pin</span></label>
                <input type="text" id="pin" value="123456" name="pin" minlength="6" maxlength="6" required />
            </div>

        </section>
        <div class="send-container">
            <input type="submit" />
        </div>
    </form>
</body>

</html>