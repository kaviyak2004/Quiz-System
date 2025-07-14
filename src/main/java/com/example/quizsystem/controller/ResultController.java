package com.example.quizsystem.controller;

import com.example.quizsystem.model.Result;
import com.example.quizsystem.repository.ResultRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class ResultController {

    @Autowired
    private ResultRepository resultRepo;

    @PostMapping("/submit")
    public String submitQuiz(@RequestParam String username, @RequestParam String category,
                             @RequestParam Map<String, String> params, Model model) {

        Map<String, String> correctAnswers = new HashMap<>();

        if (category.equalsIgnoreCase("Java")) {
            correctAnswers.put("q1", "Interfaces");
            correctAnswers.put("q2", "Java Virtual Machine");
            correctAnswers.put("q3", "false");
            correctAnswers.put("q4", "java.util");
            correctAnswers.put("q5", "extends");
            correctAnswers.put("q6", "4 bytes");
            correctAnswers.put("q7", "Oak");
            correctAnswers.put("q8", "Sun Microsystems");
            correctAnswers.put("q9", "Both");
            correctAnswers.put("q10", "main");
        } else if (category.equalsIgnoreCase("Python")) {
            correctAnswers.put("q1", "Guido van Rossum");
            correctAnswers.put("q2", "def");
            correctAnswers.put("q3", "8");
            correctAnswers.put("q4", "#");
            correctAnswers.put("q5", "Yes");
            correctAnswers.put("q6", "Tuple");
            correctAnswers.put("q7", ".py");
            correctAnswers.put("q8", "class");
            correctAnswers.put("q9", "append()");
            correctAnswers.put("q10", "//");

        }

        int score = 0;
        for (int i = 1; i <= correctAnswers.size(); i++) {
            String answer = params.get("q" + i);
            if (answer != null && answer.equals(correctAnswers.get("q" + i))) {
                score++;
            }
        }

        Result result = new Result();
        result.setUsername(username);
        result.setCategory(category);
        result.setScore(score);
        resultRepo.save(result);

        model.addAttribute("score", score);
        model.addAttribute("username", username);
        model.addAttribute("category", category);
        return "result";
    }
}
