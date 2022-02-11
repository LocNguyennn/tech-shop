package com.techshop.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;


import com.techshop.entities.SanPham;

public interface SanPhamRepository extends JpaRepository<SanPham, Long>, QuerydslPredicateExecutor<SanPham>{

	
	List<SanPham> findFirst12ByDanhMucTenDanhMucContainingIgnoreCaseOrderByIdDesc(String dm);

	/*@Query(value = "SELECT * FROM san_pham WHERE ma_danh_muc = 1 ORDER BY don_vi_ban DESC LIMIT 3",nativeQuery = true)
	List<SanPham> findFirst3SanPham();*/
	List<SanPham> findByIdIn(Set<Long> idList);
}