package com.techshop.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techshop.entities.ChiMucGioHang;
import com.techshop.entities.GioHang;
import com.techshop.entities.SanPham;

public interface ChiMucGioHangRepository extends JpaRepository<ChiMucGioHang, Long>{
	
	ChiMucGioHang findBySanPhamAndGioHang(SanPham sp,GioHang g);
	
	List<ChiMucGioHang> findByGioHang(GioHang g);
}
