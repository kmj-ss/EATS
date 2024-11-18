package com.eats.controller.store;

import com.eats.store.model.StoreJoinDTO;
import com.eats.store.service.StoreJoinService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/store")
public class StoreJoinController {

    @Autowired
    private StoreJoinService storeJoinService;

    @PostMapping("/apply")
    public String applyForStore(StoreJoinDTO storeJoinDto, RedirectAttributes redirectAttributes) {
        int isSuccess = storeJoinService.applyStore(storeJoinDto);
        
        return "/store/join/storeJoin";

//        if (isSuccess == 1) {
//            // 저장 성공 시 storeEntryOkList로 이동
//            redirectAttributes.addFlashAttribute("message", "입점 신청이 성공적으로 접수되었습니다.");
//            return "redirect:/admin/storeEntryOkList";
//        } else {
//            // 저장 실패 시 에러 메시지와 함께 이전 페이지로 돌아감
//            redirectAttributes.addFlashAttribute("error", "입점 신청에 실패했습니다. 다시 시도해 주세요.");
//            return "redirect:/store/apply";
//        }
    }
    
    @GetMapping("/apply")
    public String IntoStore() {
    	return "/store/join/storeJoin";
    }
}
