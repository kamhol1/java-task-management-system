package com.example.jtms.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;
import java.util.List;

@Entity
@Table(name = "tasks")
@NoArgsConstructor
@Getter
@Setter
public class Task {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String title;

    private String body;

    private LocalDateTime targetTime;

    @ManyToOne(targetEntity = Category.class)
    private Category category;

    @ManyToOne(targetEntity = Client.class)
    private Client client;

    @ManyToOne(targetEntity = Group.class)
    private Group assignedGroup;

    @ManyToOne(targetEntity = User.class)
    private User assignedUser;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "task")
    private List<Note> notes;

    @Embedded
    private Audit audit = new Audit();

}
