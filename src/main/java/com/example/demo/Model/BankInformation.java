package com.example.demo.Model;


import jakarta.persistence.*;

@Entity
@Table(name="Bank_Information")
public class BankInformation {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  long id;
    private String card_token;
    private String cvv;
    private String expiry_Date;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getCard_No() {
        return card_token;
    }

    public void setCard_No(String card_No) {
        card_token = card_No;
    }

    public String getCvv() {
        return cvv;
    }

    public void setCvv(String cvv) {
        this.cvv = cvv;
    }

    public String getExpiryDate() {
        return expiry_Date;
    }

    public void setExpiryDate(String expiryDate) {
        expiry_Date = expiryDate;
    }
}
