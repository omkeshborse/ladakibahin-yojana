<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <html>

  <head>
    <title>Payment Page</title>
    <style>
      body {
        font-family: 'Roboto', sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: linear-gradient(135deg, #28a745 0%, #28a745 100%);
      }

      .container {
        background-color: #fff;
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
        text-align: center;
      }

      h1 {
        font-size: 28px;
        margin-bottom: 20px;
        color: #333;
        font-weight: 700;
      }

      .form-group {
        margin-bottom: 15px;
      }

      .form-group label {
        font-size: 16px;
        color: #666;
        display: block;
        margin-bottom: 8px;
      }

      input {
        padding: 12px;
        width: 100%;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 16px;
        color: #333;
        background-color: #f9f9f9;
        transition: border-color 0.3s ease;
      }

      input:focus {
        outline: none;
        border-color: #007bff;
      }

      .pay-button {
        background-color: #007bff;
        color: #fff;
        padding: 12px;
        border: none;
        border-radius: 50px;
        cursor: pointer;
        font-size: 18px;
        transition: background-color 0.3s;
        width: 100%;
      }

      .pay-button:hover {
        background-color: #0056b3;
      }

      .note {
        margin-top: 16px;
        font-size: 20px;
        color: #888;
      }
    </style>
  </head>

  <body>
    <div class="container">
      <h1>Donate to Mukhyamantri Majhi Ladki Bahin Yojana</h1>
      <form action="/charge" method="post">
        <script src="https://checkout.razorpay.com/v1/checkout.js" data-key="rzp_test_eM8dMnaKeXpKvF"
          data-amount="${amount * 100}" data-currency="INR" data-order_id="${orderId}" data-buttontext="Proceed to Pay"
          class="pay-button"></script>
        <input type="hidden" name="razorpay_payment_id" id="razorpay_payment_id" />
        <input type="hidden" name="razorpay_order_id" id="razorpay_order_id" />
        <input type="hidden" name="razorpay_signature" id="razorpay_signature" />
      </form>
      <h2 class="note">Your donation will support the Mukhyamantri Majhi Ladki Bahin Yojana fund.</h2>
    </div>
  </body>

  </html>