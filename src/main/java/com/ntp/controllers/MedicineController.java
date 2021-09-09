/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.controllers;

import com.ntp.pojos.Thuoc;
import com.ntp.service.LoaiThuocService;
import com.ntp.service.ThuocService;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Phat Nguyen
 */
@Controller
public class MedicineController {
    
    @Autowired
    private LoaiThuocService loaiThuocService;
    @Autowired
    private ThuocService thuocService;

    
    @ModelAttribute
    public void commonAttr(Model model, HttpSession session){
        model.addAttribute("loaithuoc", this.loaiThuocService.getLoaiThuoc());
       
        
    }
    
    @GetMapping("/medicine")
    public String medicine(Model model,
            @RequestParam(value = "kw", required = false, defaultValue = "") String kw, 
            @RequestParam(value = "page", required = false, defaultValue = "1") String page){
        model.addAttribute("thuoc", this.thuocService.getThuoc(kw, Integer.parseInt(page))); 
        model.addAttribute("thuocCouter", this.thuocService.countThuoc());
        return "medicine";
    }
}
