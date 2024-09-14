package com.application.ladakibahin.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.application.ladakibahin.Models.AadharModel;
import com.application.ladakibahin.Services.AadharServices;

@Controller
public class AadharController {

    @Autowired
    AadharServices aadharServices;

    @GetMapping("/aadharForm")
    public String aadharForm() {
        return "aadharForm";
    }

    @PostMapping("/createAadhar")
    public String createAadhar(@ModelAttribute AadharModel aadharModel) {
        System.out.println(aadharModel);
        AadharModel registeredAadhar = aadharServices.register(aadharModel);
        System.out.println("Registered Aadhar: " + registeredAadhar);
        // Return a success page or redirect to another URL
        return "aadharForm"; // or redirect using "redirect:/successPage"
    }
}
