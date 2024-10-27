package com.example.demo.Model;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "reviews")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  long id;

    private String name;
    private String message;

    private Date sent_review;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getSent_review() {
        return sent_review;
    }

    public void setSent_review(Date sent_review) {
        this.sent_review = sent_review;
    }
}
