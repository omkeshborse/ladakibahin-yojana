<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Payment Success</title>
    <style>
      body {
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        background-color: #eafaf1;
        display: flex;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        margin: 0;
        padding: 0;
      }

      .success-container {
        background-color: #ffffff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
        max-width: 500px;
        width: 100%;
      }

      .success-container h1 {
        color: #28a745;
        margin-bottom: 20px;
        font-size: 28px;
      }

      .success-container p {
        font-size: 18px;
        color: #555;
        margin: 10px 0;
        word-wrap: break-word;
      }

      .success-details {
        background-color: #f9f9f9;
        padding: 15px;
        border-radius: 8px;
        margin: 15px 0;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
      }

      .success-details p {
        margin: 5px 0;
        font-weight: bold;
      }

      .message {
        margin-top: 15px;
        color: #666;
        font-style: italic;
      }

      .home-button {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background-color: #28a745;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s;
      }

      .home-button:hover {
        background-color: #218838;
      }
    </style>
  </head>

  <body>
    <div class="success-container">
      <h1>Payment Successful!</h1>
      <div class="success-details">
        <p>Payment ID: <span>${paymentId}</span></p>
        <p>Order ID: <span>${orderId}</span></p>
      </div>
      <p class="message">${message}</p>
      <a href="/" class="home-button">Go to Home</a>
    </div>
  </body>
</html>
