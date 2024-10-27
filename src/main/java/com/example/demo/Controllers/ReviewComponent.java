package com.example.demo.Controllers;

import com.example.demo.Controllers.ClientService;
import com.example.demo.Model.Client;
import com.example.demo.Model.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.ui.Model;

import java.util.List;

@Configuration
public class ReviewComponent {

    @Autowired
    private Cservice ss;

    @Bean
    public List<Review> reviewList() {
        // Assuming ClientService is properly configured and autowired
        return ss.getReviews();
    }


    public List<Client>  ClientList() {
        List<Client> clientList = ss.getClients();

        return clientList;
    }

}


