package com.techshop.api.admin;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import com.techshop.entities.NguoiDung;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import com.techshop.dto.LienHeDTO;
import com.techshop.dto.SearchLienHeObject;
import com.techshop.entities.LienHe;
import com.techshop.dto.ResponseObject;
import com.techshop.service.LienHeService;
import com.techshop.service.NguoiDungService;
import com.techshop.ulti.EmailUlti;

@RestController
@RequestMapping("/api/lien-he")
public class LienHeApi {

    @Autowired
    private LienHeService lienHeService;

    @Autowired
    private NguoiDungService nguoiDungService;

    @Autowired
    private EmailUlti emailUlti;

    @GetMapping("/all")
    public Page<LienHe> getLienHeByFilter(@RequestParam(defaultValue = "1") int page,
                                          @RequestParam String trangThaiLienHe, @RequestParam String tuNgay, @RequestParam String denNgay)
            throws ParseException {

        SearchLienHeObject object = new SearchLienHeObject();
        object.setDenNgay(denNgay);
        object.setTrangThaiLienHe(trangThaiLienHe);
        object.setTuNgay(tuNgay);

        Page<LienHe> listLienHe = lienHeService.getLienHeByFilter(object, page);
        return listLienHe;
    }

    @GetMapping("/{id}")
    public LienHe getLienHeById(@PathVariable long id) {
        return lienHeService.findById(id);
    }

    // @Valid: đảm bảo dữ liệu trong đó  hợp lệ, nếu không hợp lệ thì method ko được gọi
    // lúc này sử dụng BindingResult: nếu validation fail thì method vẫn được gọi
    @PostMapping("/reply")
    public ResponseObject tradLoiLienHeProcess(@RequestBody @Valid LienHeDTO dto, HttpServletRequest request,BindingResult result) {

        ResponseObject ro = new ResponseObject();
        // @Valid: nếu validation của dto fail thì thực hiện if dưới
        if (result.hasErrors()) {

            Map<String, String> errors = result.getFieldErrors().stream()
                    .collect(Collectors.toMap(FieldError::getField, FieldError::getDefaultMessage));
            ro.setErrorMessages(errors);

            List<String> keys = new ArrayList<String>(errors.keySet());
            for (String key : keys) {
                System.out.println(key + ": " + errors.get(key));
            }

            ro.setStatus("fail");
        } else {
            System.out.println(dto.toString());

            emailUlti.sendEmail(dto.getDiaChiDen(), dto.getTieuDe(), dto.getNoiDungTraLoi());

            LienHe lienHe = lienHeService.findById(dto.getId());
            lienHe.setTrangThai("Đã trả lời");
            lienHe.setNgayTraLoi(new Date());
            lienHe.setNoiDungTraLoi(dto.getNoiDungTraLoi());
            NguoiDung currentUser = getSessionUser(request);
            lienHe.setNguoiTraLoi(currentUser);
            lienHeService.save(lienHe);
            ro.setStatus("success");
        }
        return ro;

    }

    @ModelAttribute("loggedInUser")
    public NguoiDung loggedInUser() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        return nguoiDungService.findByEmail(auth.getName());
    }

    public NguoiDung getSessionUser(HttpServletRequest request) {
        return (NguoiDung) request.getSession().getAttribute("loggedInUser");
    }
}
