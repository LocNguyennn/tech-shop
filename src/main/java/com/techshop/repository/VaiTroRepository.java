package com.techshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.techshop.entities.VaiTro;

public interface VaiTroRepository extends JpaRepository<VaiTro, Long> {

	VaiTro findByTenVaiTro(String tenVaiTro);
}
