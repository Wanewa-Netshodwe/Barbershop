package com.example.demo.Controllers;


import com.example.demo.Model.BankInformation;
import com.example.demo.Model.Client;
import com.example.demo.Model.Comment;
import com.example.demo.Repository.ClientRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("delete")
@CrossOrigin(origins = "*")

public class deleteController {
    public Boolean de(Client c){
        cr.delete(c);
        return  true;
    }

@Autowired ClientRepository cr;
    @PostMapping
    @Transactional
    public String  DeleteUser(@RequestParam int cus_id){
        Long id = (long) cus_id;
        Client c = cr.getReferenceById(id);
        if(de(c)){
            return  "Customer Deleted";
        }

        else{
            return "";
        }

    }
}
