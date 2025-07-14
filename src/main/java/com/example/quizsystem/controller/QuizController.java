package com.example.quizsystem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
public class QuizController {

    @GetMapping("/quiz")
    public String startQuiz(@RequestParam("category") String category, HttpSession session, Model model) {
        String username = (String) session.getAttribute("username");

        if (username == null || username.trim().isEmpty()) {
            return "redirect:/";  // Redirect to login if username not in session
        }

        Map<String, List<String>> questions = new LinkedHashMap<>();

        if ("Java".equalsIgnoreCase(category)) {
            questions.put("Java supports multiple inheritance through?", List.of("Class", "Interfaces", "Objects", "Methods"));
            questions.put("What is JVM?", List.of("Java Virtual Machine", "Java Variable Method", "Java Verified Module", "None"));
            questions.put("Default value of boolean variable?", List.of("true", "false", "0", "null"));
            questions.put("Which package contains Scanner class?", List.of("java.lang", "java.io", "java.util", "java.net"));
            questions.put("Which keyword is used to inherit a class in Java?", List.of("implements", "inherits", "extends", "interface"));
            questions.put("What is the size of int in Java?", List.of("2 bytes", "4 bytes", "8 bytes", "Depends on system"));
            questions.put("Java language was initially called?", List.of("Oak", "Maple", "Pine", "C++"));
            questions.put("Which company developed Java?", List.of("Microsoft", "Sun Microsystems", "Google", "IBM"));
            questions.put("Java is a ___ language.", List.of("Compiled", "Interpreted", "Both", "None"));
            questions.put("Which method is entry point in Java application?", List.of("start", "main", "run", "init"));
        } else if ("Python".equalsIgnoreCase(category)) {
            questions.put("Python is created by?", List.of("Dennis Ritchie", "Guido van Rossum", "James Gosling", "Linus Torvalds"));
            questions.put("Which keyword is used for function in Python?", List.of("function", "fun", "def", "define"));
            questions.put("What is the output of print(2 ** 3)?", List.of("6", "8", "9", "Error"));
            questions.put("Which symbol is used for comments in Python?", List.of("//", "#", "/* */", "--"));
            questions.put("Python supports multiple inheritance? (Yes/No)", List.of("Yes", "No"));
            questions.put("Which data type is immutable in Python?", List.of("List", "Dictionary", "Tuple", "Set"));
            questions.put("What is the correct file extension for Python files?", List.of(".pt", ".pyt", ".py", ".python"));
            questions.put("What is the keyword to create a class in Python?", List.of("define", "function", "class", "object"));
            questions.put("Which method is used to add an item to a list in Python?", List.of("add()", "append()", "insert()", "push()"));
            questions.put("Which operator is used for floor division in Python?", List.of("/", "//", "%", "**"));

        } else {
            return "redirect:/home";  // Redirect if invalid category
        }

        model.addAttribute("questions", questions);
        model.addAttribute("username", username);
        model.addAttribute("category", category);

        return "quiz";  // Forward to quiz.jsp
    }
}
