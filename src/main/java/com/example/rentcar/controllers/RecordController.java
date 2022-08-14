package com.example.rentcar.controllers;


import com.example.rentcar.entity.Record;
import com.example.rentcar.services.RecordService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class RecordController {

    private final RecordService recordService;

    @PostMapping("/addRecord")
    public String addRecord(Record record){
        recordService.createRecord(record);
        return "add-record";
    }
}
