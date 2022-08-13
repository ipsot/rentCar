package com.example.rentcar.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "cars")
public class Car
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotEmpty(message = "Price may not be empty")
    private Double priceForDay;

    private String carModel;

    @NotBlank(message = "Name may not be empty")
    private String carName;

    @NotBlank
    private String color;

    private Boolean isBooking;


    @OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER,mappedBy = "car")
    private List<Client> clients;

    @OneToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER,mappedBy = "car")
    private Image image;

    private Long previewImageId;


    @PrePersist
    public void onCreate()
    {
        isBooking=false;
    }

    public void addImageToCar(Image image)
    {
        image.setCar(this);
    }

}
