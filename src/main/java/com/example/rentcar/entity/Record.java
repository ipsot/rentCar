package com.example.rentcar.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.UniqueElements;

import javax.persistence.*;
import javax.validation.constraints.Min;
import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "records")
public class Record
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "rentalStartDate")
    private LocalDateTime rentalStartDate;
    @Column(name = "rentalFinishDate")
    private LocalDateTime rentalFinishDate;

    @Column(name = "name")
    private String name;

    @Column(name = "sureName")
    private String sureName;

    @Column(name = "age")
    @Min(value = 18)
    private Byte age;

    @Column(name = "driverLicense",unique = true)
    private String driverLicense;

    @OneToOne(cascade = CascadeType.REFRESH,fetch = FetchType.EAGER)
    @JoinColumn(name = "car_id")
    private Car car;

}
