package com.example.rentcar.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.validation.annotation.Validated;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.time.LocalDateTime;
import java.util.List;

@Data
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "clients")
public class Client
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "Name may not be empty")
    private String name;
    @NotBlank(message = "Surname may not be empty")
    private String surname;
    private String patronymic;
    @NotEmpty(message = "Age may not be empty")
    @Size(min = 18,message = "Age must be 18 or elder")
    private Integer age;
    @Column(name = "driverLicense",unique = true)
    @NotBlank
    private String driverLicense;
    @NotBlank
    private String phoneNumber;

    @ManyToOne (cascade = CascadeType.REFRESH,fetch = FetchType.EAGER)
    @JoinColumn(name = "car_id")
    private Car car;


}
