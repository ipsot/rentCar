package com.example.rentcar.controllers;


import com.example.rentcar.entity.Car;
import com.example.rentcar.entity.Record;
import com.example.rentcar.services.CarService;
import com.example.rentcar.services.RecordService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.io.Console;

@Controller
@RequiredArgsConstructor
public class RecordController {

    private final RecordService recordService;
    private final CarService carService;

    @PostMapping("/addRecord/{carId}")
    public String addRecord(Record record,Car car,Long carId){
        car.setId(carId);
        car.setIsBooking(true);
        record.setCar(car);
        recordService.createRecord(record);

        return "redirect:/records";
    }
    @GetMapping("/addRecord/{id}")
    public String seeCar(@PathVariable Long id, Model model){
        Car car=carService.getCarById(id);
        model.addAttribute("car",car);
        return "add-record";
    }

    @GetMapping("/records")
    public String getAllRecords(Model model){

        model.addAttribute("records",recordService.getAllRecords());

        return "records";
    }

    @PostMapping("/deleteRecord/{id}")
    public String deleteRecord(@PathVariable Long id){
        recordService.deleteRecord(id);

        return "redirect:/records";
    }
}
