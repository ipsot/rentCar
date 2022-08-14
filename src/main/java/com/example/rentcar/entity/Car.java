package com.example.rentcar.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
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

    @NotNull(message = "Price may not be empty")
    private Integer priceForDay;

    private String carModel;

    @NotBlank(message = "Name may not be empty")
    private String carName;

    @NotBlank
    private String color;

    private Boolean isBooking;

    @OneToMany(cascade = CascadeType.ALL,fetch = FetchType.LAZY,mappedBy = "car")
    private List<Image> images=new ArrayList<>();

    private Long previewImageId;


    @PrePersist
    public void onCreate()
    {
        isBooking=false;
    }

    public void addImageToCar(Image image)
    {
        image.setCar(this);
        images.add(image);
    }

}
