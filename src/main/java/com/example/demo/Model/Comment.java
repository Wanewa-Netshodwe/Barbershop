package com.example.demo.Model;

import jakarta.persistence.*;

@Entity
@Table(name="Comment_Table")
public class Comment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne
    @JoinColumn(name = "customer_id")
    private Client client;

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    private String Message;
    @Temporal(TemporalType.TIMESTAMP)

    public void setId(Long id) {
        this.id = id;
    }

    public String getMessage() {
        return Message;
    }

    public void setMessage(String message) {
        Message = message;
    }

    public Long getId() {
        return id;
    }
}
