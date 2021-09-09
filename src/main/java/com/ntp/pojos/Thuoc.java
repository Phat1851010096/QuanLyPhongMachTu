/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.pojos;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author Phat Nguyen
 */
@Entity
@Table(name = "thuoc")
public class Thuoc implements Serializable{
    @Id
    @Column(name = "THUOC_ID")
    private String THUOCID;
    private String TENTHUOC;
    private String HINHANH;
    @ManyToOne
    @JoinColumn(name = "LOAITHUOC_ID")
    private LoaiThuoc loaiThuoc;
    @Transient
    private MultipartFile file;

    public String getTHUOCID() {
        return THUOCID;
    }

    public void setTHUOCID(String THUOCID) {
        this.THUOCID = THUOCID;
    }

    public String getTENTHUOC() {
        return TENTHUOC;
    }

    public void setTENTHUOC(String TENTHUOC) {
        this.TENTHUOC = TENTHUOC;
    }

    public String getHINHANH() {
        return HINHANH;
    }

    public void setHINHANH(String HINHANH) {
        this.HINHANH = HINHANH;
    }

    public LoaiThuoc getLoaiThuoc() {
        return loaiThuoc;
    }

    public void setLoaiThuoc(LoaiThuoc loaiThuoc) {
        this.loaiThuoc = loaiThuoc;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }

    
    
}
