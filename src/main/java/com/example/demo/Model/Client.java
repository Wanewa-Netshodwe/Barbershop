package com.example.demo.Model;



import jakarta.persistence.*;

import java.util.Date;
import java.util.List;

@Entity
@Table(name="Customers")
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private  long id;
    private String Name;
    private String Surname;
    private String Haircut;

@Column(name = "amount_paid")
    private double AmountPaid;

    public Date getCreated_Date() {
        return created_Date;
    }


    public void setCreated_Date(Date created_Date) {
        this.created_Date = created_Date;
    }

    public Date getAppointment_Date() {
        return Appointment_Date;
    }

    public void setAppointment_Date(Date appointment_Date) {
        Appointment_Date = appointment_Date;
    }

    @Temporal(TemporalType.TIMESTAMP)
    private Date created_Date;

    private  Date Appointment_Date;
    @OneToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "back_info")
    private BankInformation bank_info;


    @OneToMany(mappedBy = "client", fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    private List<Comment> comments;


    public List<Comment> getComments() {
        return comments;
    }

    public void setComments(List<Comment> comments) {
        this.comments = comments;
    }

    public BankInformation getBank_info() {
        return bank_info;
    }

    public void setBank_info(BankInformation bank_info) {
        this.bank_info = bank_info;
    }



    public String getName() {
        return Name;
    }

    public String getSurname() {
        return Surname;
    }

    public void setSurname(String surname) {
        Surname = surname;
    }

    public String getHaircut() {
        return Haircut;
    }

    public void setHaircut(String haircut) {
        Haircut = haircut;
    }

    public double getAmountPaid() {
        return AmountPaid;
    }

    public void setAmountPaid(double amountPaid) {
        AmountPaid = amountPaid;
    }


    public void setName(String name) {
        Name = name;
    }





    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }
}

