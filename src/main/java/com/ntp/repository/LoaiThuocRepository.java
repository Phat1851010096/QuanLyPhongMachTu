/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp.repository;

import com.ntp.pojos.LoaiThuoc;
import java.util.List;

/**
 *
 * @author Phat Nguyen
 */
public interface LoaiThuocRepository {
    List<LoaiThuoc> getLoaiThuoc();
}
