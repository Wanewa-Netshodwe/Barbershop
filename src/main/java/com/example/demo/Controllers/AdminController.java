package com.example.demo.Controllers;


import com.example.demo.Model.Admin;
import com.example.demo.Model.BankInformation;
import com.example.demo.Model.Client;
import com.example.demo.Model.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("Admibbn")
@CrossOrigin(origins = "*")
public class AdminController {
    @Autowired
    private ClientService ss;
    @PostMapping
    public String getLogin(@RequestParam String username,@RequestParam String password){
        Admin a = new Admin();
        if(a.getUsername().equals(username) && a.getPassword().equals(password)){
            return "redirect:/dashboard";
        }
        return  "not found";
    }



}
