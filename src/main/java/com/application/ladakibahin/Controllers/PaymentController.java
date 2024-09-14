package com.application.ladakibahin.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.application.ladakibahin.Services.RazorpayService;
import com.razorpay.Order;
import com.razorpay.RazorpayException;

@Controller
public class PaymentController {
    @Autowired
    private RazorpayService razorpayService;

    @GetMapping("/payment")
    public String showPaymentPage(Model model) throws RazorpayException {
        Order order = razorpayService.createOrder(500); // Example amount: 500 INR
        model.addAttribute("orderId", order.get("id"));
        model.addAttribute("amount", 500);
        return "payment"; // JSP page
    }

    @PostMapping("/charge")
    public String processPayment(@RequestParam("razorpay_payment_id") String paymentId,
            @RequestParam("razorpay_order_id") String orderId,
            @RequestParam("razorpay_signature") String signature,
            Model model) {

        model.addAttribute("paymentId", paymentId);
        model.addAttribute("orderId", orderId);
        model.addAttribute("message", "Payment Successful");
        return "successPayment"; 
    }

}