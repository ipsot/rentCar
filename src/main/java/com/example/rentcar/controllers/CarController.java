package com.example.rentcar.controllers;

import com.example.rentcar.entity.Car;
import com.example.rentcar.services.CarService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.Banner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.transaction.Transactional;
import javax.validation.Valid;
import java.beans.Transient;
import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class CarController
{

    private final CarService carService;

    @GetMapping("/")
    public String index(Model model)
    {
        List<Car> cars=carService.getAllCar();
        model.addAttribute("cars",carService.getAllCar());
        return "main";
    }

    @GetMapping("/car/{id}")
    public String getCarById(Model model,@PathVariable Long id)
    {
        Car car=carService.getCarById(id);
        model.addAttribute("car",car);
        model.addAttribute("images",car.getImages());
        return "car-info";
    }

//    @PostMapping("/car/{id}/rent")
//    public String doRentThisCar(@PathVariable Long id, Model model){
//        Car car=carService.getCarById(id);
//        model.addAttribute("car",car);
//        model.addAttribute("images",car.getImages());
//        return "redirect:/addRecord/{carId}";
//    }


    @PostMapping("/admin/car/add")
    public String addCar(@Valid Car car, @RequestParam("file") MultipartFile file) throws IOException
    {
        carService.addCar(car,file);
        return "redirect:/admin/cars";
    }

    @GetMapping("/car/edit/{id}")
    public String editCar(@PathVariable Long id, Model model){

        Car car=carService.getCarById(id);
        model.addAttribute("car",car);
        model.addAttribute("images",car.getImages());

        return "editCar";

    }

    @PostMapping("/car/edit/{id}")
    public String updateCar(@Valid Car car,@PathVariable Long id){
        carService.editCar(id,car);
        return "redirect:/";
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
