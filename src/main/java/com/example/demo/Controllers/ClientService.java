package com.example.demo.Controllers;


import com.example.demo.Model.BankInformation;
import com.example.demo.Model.Client;
import com.example.demo.Model.Comment;
import com.example.demo.Model.Review;
import com.example.demo.Repository.BankRepository;
import com.example.demo.Repository.ClientRepository;
import com.example.demo.Repository.commentRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ClientService {

    @Autowired
    private ClientRepository sr;
    @Autowired
    private BankRepository br;
    @Autowired
    private commentRepository cr;


    @Transactional
    public void addClient(Client s){
        sr.save(s);
    }
    @Transactional
    public void addBank(BankInformation b){
        br.save(b);
    }
    @Transactional
    public void addComment(Review c){
        cr.save(c);
    }
    public List<Client> getClients(){
        return sr.findAll();
    }
    public List<Review> getReviews(){
        return cr.findAll();
    }

}

