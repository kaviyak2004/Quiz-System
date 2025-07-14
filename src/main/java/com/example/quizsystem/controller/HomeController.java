package com.example.quizsystem.controller;

import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {

    @GetMapping("/")
    public String showLogin() {
        return "login";  // login.jsp
    }

    @PostMapping("/login")
    public String login(@RequestParam String username, HttpSession session) {
        if (username != null && !username.trim().isEmpty()) {
            session.setAttribute("username", username);
            return "redirect:/home";  // ✅ Redirect after login
        }
        return "redirect:/";  // ❗ Back to login if username invalid
    }

    @GetMapping("/home")
    public String showHome(HttpSession session) {
        String username = (String) session.getAttribute("username");
        if (username == null || username.trim().isEmpty()) {
            return "redirect:/";
        }
        return "home";  // home.jsp
    }
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";  // Redirect to login page after logout
    }
}
