/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.pojos;

import java.io.Serializable;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Phat Nguyen
 */
@Entity
@Table(name = "loai_thuoc")
public class LoaiThuoc implements Serializable{
    @Id
    @Column(name = "LOAITHUOC_ID")
    private String maLoaiThuoc;
    @Column(name = "TEN_LOAITHUOC")
    private String tenLoaiThuoc;
    @OneToMany(mappedBy = "loaiThuoc", fetch = FetchType.EAGER)
    private Set<Thuoc> thuoc; 

    public String getMaLoaiThuoc() {
        return maLoaiThuoc;
    }

    public void setMaLoaiThuoc(String maLoaiThuoc) {
        this.maLoaiThuoc = maLoaiThuoc;
    }

    public String getTenLoaiThuoc() {
        return tenLoaiThuoc;
    }

    public void setTenLoaiThuoc(String tenLoaiThuoc) {
        this.tenLoaiThuoc = tenLoaiThuoc;
    }

    public Set<Thuoc> getThuoc() {
        return thuoc;
    }

    public void setThuoc(Set<Thuoc> thuoc) {
        this.thuoc = thuoc;
    }

    
    
}
