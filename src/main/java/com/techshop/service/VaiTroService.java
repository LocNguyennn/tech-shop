package com.techshop.service;

import java.util.List;

import com.techshop.entities.VaiTro;

public interface VaiTroService {

	VaiTro findByTenVaiTro(String tenVaiTro);

	List<VaiTro> findAllVaiTro();
}
