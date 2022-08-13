package com.example.rentcar.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Type;

import javax.persistence.*;

@Entity
@Table(name = "images")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Image
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String originalFileName;
    private Long size;
    private String contentType;
    private boolean previewImage;

    //@Type(type="org.hibernate.type.BinaryType")
    @Lob
    private byte[] bytes;

    @ManyToOne(cascade = CascadeType.REFRESH,fetch = FetchType.EAGER)
    @JoinColumn(name = "car_id")
    private Car car;

}
