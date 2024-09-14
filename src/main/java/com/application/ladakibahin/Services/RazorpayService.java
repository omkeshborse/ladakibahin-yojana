package com.application.ladakibahin.Services;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import javax.annotation.PostConstruct;
import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

@Service
public class RazorpayService {
    @Value("${razorpay.api.key}")
    private String apiKey;

    @Value("${razorpay.secret.key}")
    private String secretKey;

    private RazorpayClient client;

    @PostConstruct
    private void init() throws RazorpayException {
        if (apiKey == null || secretKey == null) {
            throw new IllegalArgumentException("API key and Secret key must not be null");
        }
        this.client = new RazorpayClient(apiKey, secretKey);
    }

    public Order createOrder(int amount) throws RazorpayException {
        JSONObject options = new JSONObject();
        options.put("amount", amount * 100); // Amount in paise
        options.put("currency", "INR");
        options.put("receipt", "txn_123456");
        options.put("payment_capture", 1); // Auto capture payments
        Order order = client.orders.create(options);
        return order;
    }
}
