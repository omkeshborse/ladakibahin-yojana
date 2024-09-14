package com.application.ladakibahin.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.application.ladakibahin.Models.AadharModel;



public interface AadharRepository extends JpaRepository<AadharModel, Integer> {
    // public AdminModel findByAdminemail(String k) ; 
    public AadharModel findByAadharNumber(String aadharNumber);
}
