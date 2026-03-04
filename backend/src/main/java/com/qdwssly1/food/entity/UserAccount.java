package com.qdwssly1.food.entity;

import javax.persistence.*;

@Entity
public class UserAccount {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String username;
    private String password;

    // Getters and Setters
}