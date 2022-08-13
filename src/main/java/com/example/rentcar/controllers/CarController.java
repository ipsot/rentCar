package com.example.rentcar.controllers;

import com.example.rentcar.entity.Car;
import com.example.rentcar.services.CarService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class CarController
{

    private final CarService carService;

    @GetMapping("/")
    public String index(Model model)
    {
        model.addAttribute("cars",carService.getAllCar());
        return "main";
    }

    @GetMapping("/car/{id}")
    public String getCarById(Model model,@PathVariable Long id)
    {
        Car car=carService.getCarById(id);
        model.addAttribute("car",car);
        model.addAttribute("image",car.getImage());
        return "main";
    }


    @PostMapping("/admin/car/add")
    public String addCar(@RequestParam Car car,@RequestParam("file") MultipartFile file) throws IOException
    {
        carService.addCar(car,file);
        return "redirect:/admin/cars";
    }

//    @DeleteMapping("/car/delete/{id}")
//    public String deleteCar(@PathVariable Long id)
//    {
////        carService.deleteProduct(productService.getUserByPrincipal(principal),id);
////        return "redirect:/my/products";
//    }

    @GetMapping("/admin/cars")
    public String allCars(Model model)
    {
        model.addAttribute("cars",carService.getAllCar());
        return "admin-cars";
    }

}
