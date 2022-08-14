package com.example.rentcar.services;

import com.example.rentcar.entity.Car;
import com.example.rentcar.entity.Image;
import com.example.rentcar.repository.CarRepository;
import com.example.rentcar.repository.ImageRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
@RequiredArgsConstructor
public class CarService
{
    private final CarRepository carRepository;
    private final ImageRepository imageRepository;

    public List<Car> getAllCar()
    {
        return carRepository.findAll();
    }

    public Car getCarById(Long id)
    {
        return carRepository.findById(id).orElse(null);
    }


   public void addCar(Car car,MultipartFile file) throws IOException
   {
       Image image;
       if (file.getSize() !=0)
       {
           image=toImageEntity(file);
           image.setPreviewImage(true);
           car.addImageToCar(image);
       }
       Car carFromDb=carRepository.save(car);
       carFromDb.setPreviewImageId(carFromDb.getImages().get(0).getId());
       carRepository.save(car);
   }

//   public Car editCar(Long id,Car car,MultipartFile file){
//        carRepository.findById(id);
//   }


   private Image toImageEntity(MultipartFile file) throws IOException
   {
       Image image=new Image();
       image.setName(file.getName());
       image.setOriginalFileName(file.getContentType());
       image.setContentType(file.getContentType());
       image.setSize(file.getSize());
       image.setBytes(file.getBytes());
       return image;
   }
}
