package com.techshop.service;

import com.techshop.entities.GioHang;
import com.techshop.entities.NguoiDung;

public interface GioHangService {
	
	GioHang getGioHangByNguoiDung(NguoiDung n);
	
	GioHang save(GioHang g);
}
