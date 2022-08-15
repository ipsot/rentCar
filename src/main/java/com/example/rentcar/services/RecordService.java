package com.example.rentcar.services;


import com.example.rentcar.entity.Car;
import com.example.rentcar.entity.Record;
import com.example.rentcar.repository.RecordRepository;
import jdk.management.jfr.RecordingInfo;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RecordService {

    private final RecordRepository recordRepository;

    public void createRecord(Record record){

        recordRepository.saveAndFlush(record);
    }

    public List<Record> getAllRecords(){
        return recordRepository.findAll();
    }
}
