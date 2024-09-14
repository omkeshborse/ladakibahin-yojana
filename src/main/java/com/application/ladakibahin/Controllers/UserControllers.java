package com.application.ladakibahin.Controllers;

import java.util.regex.Pattern;

import javax.servlet.http.HttpSession;

import java.util.Map;
import java.util.regex.Matcher;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.application.ladakibahin.Models.UserModel;
import com.application.ladakibahin.Models.AadharModel;
import com.application.ladakibahin.Repositories.AadharRepository;
// import com.application.ladakibahin.Repositories.aadharRepo;
import com.application.ladakibahin.Repositories.userRepository;
import com.application.ladakibahin.Services.userServices;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;

@Controller
public class UserControllers {

	@Autowired
	userServices userServices;

	@Autowired
	userRepository userRepository;

	@Autowired
	AadharRepository aadharRepository;
	// aadharRepo aadharRepo;

	@Autowired
	Cloudinary cloudinary;

	@PostMapping("/register")
	public String registerUser(@ModelAttribute UserModel user, Model model) {
		System.out.println("User model information: " + user.toString());
		System.out.println(user.getMobileNumber());
		// Check if user already exists
		if (userRepository.findByEmail(user.getEmail()) != null) {
			model.addAttribute("error", "Email is already registered");
			return "redirect:/register?message=Email is already registered";
		}
		if (userRepository.findByMobileNumber(user.getMobileNumber()) != null) {
			model.addAttribute("error", "Mobile number is already registered");
			return "redirect:/register?message=Mobile number is already registered";
		}

		// Validate email
		String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\\.)+[a-zA-Z]{2,7}$";
		Pattern emailPattern = Pattern.compile(emailRegex);
		Matcher emailMatcher = emailPattern.matcher(user.getEmail());

		if (!emailMatcher.matches()) {
			model.addAttribute("error", "Invalid email format");
			return "redirect:/register?message=Invalid email format";
		}

		// Validate mobile number
		String mobileNumberRegex = "^[6-9]\\d{9}$";
		Pattern mobilePattern = Pattern.compile(mobileNumberRegex);
		Matcher mobileMatcher = mobilePattern.matcher(user.getMobileNumber());

		if (!mobileMatcher.matches()) {
			model.addAttribute("error", "Invalid mobile number format");
			return "redirect:/register?message=Invalid mobile number format";
		}

		// Validate password
		String passwordRegex = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!@#&()–[{}]:;',?/*~$^+=<>]).{8,25}$";
		Pattern passwordPattern = Pattern.compile(passwordRegex);
		Matcher passwordMatcher = passwordPattern.matcher(user.getPassword());

		if (!passwordMatcher.matches()) {
			model.addAttribute("error",
					"Invalid password format. Must be 8-25 characters long, with at least one uppercase letter, one digit, and one special character.");
			return "redirect:/register?message=Invalid password format";
		}

		// Validate confirm password
		if (!user.getPassword().equals(user.getConfrim_password())) {
			model.addAttribute("error", "Password and confirm password do not match");
			return "redirect:/register?message=Password and confirm password do not match";
		}

		// Validate district, taluka, village, and municipal corporation fields
		if (user.getDistric().trim().isEmpty()) {
			return "redirect:/register?message=Please enter your district";
		}

		if (user.getTaluka().trim().isEmpty()) {
			return "redirect:/register?message=Please enter your taluka";
		}

		if (user.getVillage().trim().isEmpty()) {
			return "redirect:/register?message=Please enter your village";
		}

		if (user.getMunicipal_corporation().trim().isEmpty()) {
			return "redirect:/register?message=Please enter your municipal corporation";
		}

		// Proceed with registration if all validations pass
		UserModel registeredUser = userServices.register(user);
		model.addAttribute("email", registeredUser.getEmail());
		model.addAttribute("username", registeredUser.getFull_name());
		return "verify";
	}

	@PostMapping("/verify")
	public String verifyUser(@RequestParam String email, @RequestParam String otp, Model model) {
		String verificationResult = userServices.verifyUser(email, otp);
		System.out.println("Is verified in controllers: " + verificationResult);

		switch (verificationResult) {
			case "success":
				return "success"; // Redirect to the success page if OTP is correct
			case "expired":
				model.addAttribute("error", "OTP has expired. Please request a new OTP.");
				break;
			case "incorrect":
				model.addAttribute("error", "Invalid OTP. Please try again.");
				break;
			default:
				model.addAttribute("error", "An error occurred. Please try again.");
				break;
		}

		model.addAttribute("email", email); // Retain the email value for the retry
		model.addAttribute("username", "User");
		return "verify"; // Return to the OTP verification page
	}

	@GetMapping("/success")
	public String success() {
		return "success";
	}

	@RequestMapping("/homepage")
	public String home(HttpSession hs) {
		if (hs.getAttribute("temp") == null) {
			return "redirect:/";
		}
		return "homepage";
	}

	@GetMapping("/edit-profile/{id}")
	public String edit(@PathVariable long id, Model model) {

		UserModel um = userServices.getProfileInfo(id);
		model.addAttribute("user", um);
		return "edit-profile"; // The name of the JSP page
	}

	@PostMapping("/saveprofile")
	public String update(@ModelAttribute("user") UserModel user, @RequestParam("profilePicture") MultipartFile file)
			throws Exception {

		Map uploadResult = cloudinary.uploader().upload(file.getBytes(), ObjectUtils.emptyMap());

		// Get the URL of the uploaded file
		String fileUrl = (String) uploadResult.get("url");
		System.out.println("Get the URL of the uploaded file  " + fileUrl);

		System.out.println("user save modle in java");
		UserModel userUpdate = userRepository.findById(user.getId()).get();
		System.out.println("update user info in the Controller");
		System.out.println(userUpdate);
		userUpdate.setFull_name(user.getFull_name());
		System.out.println(user.getFull_name() + " update name");
		userUpdate.setDistric(user.getDistric());
		userUpdate.setTaluka(user.getTaluka());
		userUpdate.setVillage(user.getVillage());
		userUpdate.setMunicipal_corporation(user.getMunicipal_corporation());
		userUpdate.setAuthorized_Person(user.getAuthorized_Person());
		userUpdate.setFile(fileUrl);

		System.out.println("setting upated information in controllers");

		System.out.println(userUpdate);
		userServices.updateUserInfo(userUpdate);
		return "redirect:/profile";
	}

	@GetMapping("/generateIdCard/{id}")
	public String generateIdCard(@PathVariable long id, Model model) {

		UserModel um = userServices.getProfileInfo(id);
		model.addAttribute("user", um);
		return "cardPage"; // The name of the JSP page
	}

	@GetMapping("/loginApplicationCM")
	public String loginApplicationCM(HttpSession session) {
		Long userId = (Long) session.getAttribute("userId");
		System.out.println(userId);
		return "loginApplicationCM";
	}

	@RequestMapping("/ValidateAadhar")
	public String aadhar(@ModelAttribute AadharModel aadhar, HttpSession session) {
		System.out.println("AadharModel received: " + aadhar);
		System.out.println("Aadhar Number: " + aadhar.getAadharNumber());
		System.out.println("Validating Aadhar...");

		Long userId = (Long) session.getAttribute("userId");

		UserModel user = userRepository.findById(userId).get();
		System.out.println(user);
		AadharModel a = aadharRepository.findByAadharNumber(aadhar.getAadharNumber());

		if (a != null) {
			System.out.println("AadharModel found: " + a);
			if (a.getPin().equals(aadhar.getPin())) {
				System.out.println("aadhar validated sucessfully");
				userServices.updateAadharStatus(user);
			}
			return "aadharSuccess";
		} else {
			System.out.println("No AadharModel found for Aadhar Number: " + aadhar.getAadharNumber());

			return "aadharNotFound";
		}
	}

	@RequestMapping("/logout")
	public String logout(HttpSession hs) {

		hs.invalidate();
		return "redirect:/";
	}
}
