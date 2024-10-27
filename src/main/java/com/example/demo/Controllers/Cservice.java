package com.example.demo.Controllers;

import com.example.demo.Model.Client;
import com.example.demo.Model.Review;
import com.example.demo.Repository.ClientRepository;
import com.example.demo.Repository.commentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class Cservice {

    // Assuming there is a repository or a data source to get the reviews
    // Autowire the repository here
     @Autowired
    commentRepository reviewRepository;

    @Autowired
    ClientRepository CRepository;

    public List<Review> getReviews() {
        // Fetch the reviews from the data source
         return reviewRepository.findAll();
        // Dummy implementation for illustrati
    }
    public List<Client> getClients() {
        // Fetch the reviews from the data source
        return CRepository.findAll();
        // Dummy implementation for illustrati
    }
}
