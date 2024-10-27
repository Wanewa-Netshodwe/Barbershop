package com.example.demo.Controllers;


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
@RequestMapping("Booking.api")
@CrossOrigin(origins = "*")
public class ClientController{
    @Autowired
    private ClientService ss;




    @PostMapping
    public void addStudent(@RequestParam String name, @RequestParam String surname,
                           @RequestParam String haircut,@RequestParam String price
            ,@RequestParam String bookDate
                          ){

        BankInformation b = new BankInformation();
        Client s =new Client();


        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        try {
            Date bd = sdf.parse(bookDate);
            s.setName(name);
            s.setAmountPaid(Double.parseDouble(price));
            s.setCreated_Date(new Date());
            s.setHaircut(haircut);
            s.setAppointment_Date(bd);
            s.setSurname(surname);
            ss.addClient(s);

        } catch (ParseException e) {
            throw new RuntimeException(e);
        }



    }
    @GetMapping
    public List<Client> getClients(){
        return  ss.getClients();
    }


}
