package com.example.rentcar.services;


import com.example.rentcar.entity.Record;
import com.example.rentcar.repository.RecordRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class RecordService {

    private final RecordRepository recordRepository;

    public void createRecord(Record record){

        recordRepository.saveAndFlush(record);
    }
}
