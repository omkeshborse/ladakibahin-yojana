package com.application.ladakibahin.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.application.ladakibahin.Models.AadharModel;
import com.application.ladakibahin.Services.AadharServices;
import com.application.ladakibahin.Repositories.AadharRepository;

@Service
@Transactional
public class AadharDao implements AadharServices {

    @Autowired
    private AadharRepository aadharRepository;

    @Override
    public AadharModel register(AadharModel aadhar) {
        AadharModel aadharUser = aadharRepository.save(aadhar);
        System.out.println("Printing from AadharDao");
        System.out.println(aadharUser);
        return aadharUser;
    }
}
