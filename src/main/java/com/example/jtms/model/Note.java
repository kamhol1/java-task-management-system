package com.example.jtms.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "notes")
@NoArgsConstructor
@Getter
@Setter
public class Note {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String body;
    @ManyToOne(targetEntity = Task.class)
    private int task;
    @ManyToOne(targetEntity = User.class)
    private int user;
    @Embedded
    private Audit audit = new Audit();

}
