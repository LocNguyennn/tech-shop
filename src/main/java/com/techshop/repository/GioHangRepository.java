package com.techshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techshop.entities.GioHang;
import com.techshop.entities.NguoiDung;

public interface GioHangRepository extends JpaRepository<GioHang, Long>{
	
	GioHang findByNguoiDung(NguoiDung n);
	
}
