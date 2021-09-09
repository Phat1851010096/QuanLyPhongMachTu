/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.service.impl;

import com.cloudinary.Cloudinary;
import com.ntp.pojos.Thuoc;
import com.ntp.repository.ThuocRepository;
import com.ntp.service.ThuocService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Phat Nguyen
 */
@Service
public class ThuocServiceImpl implements ThuocService{
    @Autowired
    private ThuocRepository thuocRepository;
    @Autowired
    private Cloudinary cloudinary;


    @Override
    public List<Thuoc> getThuoc(String kw, int page) {
        return this.thuocRepository.getThuoc(kw, page);
    }
    
    @Override
    public int countThuoc() {
        return this.thuocRepository.countThuoc();
    }

    @Override
    public Thuoc getThuocById(int id) {
        return this.thuocRepository.getThuocById(id);
    }
}
