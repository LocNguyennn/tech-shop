package com.techshop.service;

import java.util.List;
import java.util.Set;

import org.springframework.data.domain.Page;

import com.techshop.dto.TaiKhoanDTO;
import com.techshop.entities.NguoiDung;
import com.techshop.entities.VaiTro;

public interface NguoiDungService {

	NguoiDung findByEmail(String email);

	NguoiDung findByConfirmationToken(String confirmationToken);

	NguoiDung saveUserForMember(NguoiDung nd);

	NguoiDung findById(long id);

	NguoiDung updateUser(NguoiDung nd);

	void changePass(NguoiDung nd, String newPass);

	Page<NguoiDung> getNguoiDungByVaiTro(Set<VaiTro> vaiTro, int page);

	List<NguoiDung> getNguoiDungByVaiTro(Set<VaiTro> vaiTro);
	
	NguoiDung saveUserForAdmin(TaiKhoanDTO dto);

	void deleteById(long id);

}
