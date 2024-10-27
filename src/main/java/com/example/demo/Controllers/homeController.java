package com.example.demo.Controllers;


import com.example.demo.Model.Admin;
import com.example.demo.Model.Client;
import com.example.demo.Model.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@CrossOrigin(origins = "*")
public class homeController {
    @Autowired
    private Cservice ss;
    @GetMapping("/")
    public String HomePage(){
return "index";
    }
    @GetMapping("/reviews")
    public String ReviewPage(){
        return "reviews";
    }
    @GetMapping("/admin")
    public String AdminPage(){
        return "admin_index";
    }
    @GetMapping("/dashboard")
    public String ClientList(Model model) {
        List<Client> clientList = ss.getClients();
        model.addAttribute("ClientList", clientList);
        return "dashboard";

    }
    @GetMapping("/updatedReviews")
    public String IndexPage (Model model) {
        List<Review> ReviewList = ss.getReviews();
        model.addAttribute("ReviewList", ReviewList);
        return "updatedReviews";

    }
    @GetMapping("/wronglogin")
    public String ErrorLoginPage(){
        return "error_login";
    }
    @PostMapping("/admin")
    public String getLogin(@RequestParam String username,@RequestParam String password){
        Admin a = new Admin();
        if(a.getUsername().equals(username) && a.getPassword().equals(password)){
            return "redirect:/dashboard";
        }
        return  "redirect:/wronglogin";
    }





}
