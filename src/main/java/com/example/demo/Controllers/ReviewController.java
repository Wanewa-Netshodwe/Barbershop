package com.example.demo.Controllers;


import com.example.demo.Model.BankInformation;
import com.example.demo.Model.Client;
import com.example.demo.Model.Comment;
import com.example.demo.Model.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("Review")
@CrossOrigin(origins = "*")
public class ReviewController {
    @Autowired
    private ClientService ss;


    @PostMapping
    public String addStudent(@RequestParam String name, @RequestParam String message){
        Review r = new Review();
        r.setMessage(message);
        r.setName(name);
        r.setSent_review(new Date());
        ss.addComment(r);
        return "redirect:/updatedReviews";

    }
    @GetMapping
    public List<Review> getReview(){
        return  ss.getReviews();
    }


}
