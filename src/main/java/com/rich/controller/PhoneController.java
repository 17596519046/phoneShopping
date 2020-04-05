package com.rich.controller;

import com.rich.pojo.Phone;
import com.rich.pojo.ProductType;
import com.rich.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@RequestMapping("/phone")
@Controller
public class PhoneController {

    @Autowired
    private ProductTypeService productTypeService;

    /***
     * 查看订单
     * @return
     */
    @RequestMapping("/phone")
    public String getAllPhone(Model model, String phoneName) {
        // 所有的手机
        List<Phone> list = productTypeService.getAllPhone(phoneName);
        model.addAttribute("all", list);
        // 跳到后台主页
        return "pages/back/phone";
    }

    /***
     * 跳到添加页面
     * @return
     */
    @RequestMapping("/toAddPhone")
    public String toAddPhone(Model model) {
        //所有的手机类型
        List<ProductType> list = productTypeService.getAllProduct();
        model.addAttribute("all", list);
        // 跳到添加手机页面
        return "pages/back/phone-update";
    }

    /***
     * 通过Id获取一个手机
     * @return
     */
    @RequestMapping("/getOnePhone")
    public String getOnePhone(Model model, int id) {
        // 所有的手机
        Phone phone = productTypeService.getOnePhone(id);
        model.addAttribute("phone", phone);
        //所有的手机类型
        List<ProductType> list = productTypeService.getAllProduct();
        model.addAttribute("all", list);
        // 跳到后台主页
        return "pages/back/phone-update";
    }

    /***
     * 通过Id删除一个手机
     * @return
     */
    @RequestMapping("/deletePhone")
    public String deletePhone(Model model, int id) {
        productTypeService.deletePhone(id);
        // 跳到后台主页
        return "redirect:phone";
    }

    /***
     * 通过Id删除一个手机
     * @return
     */
    @RequestMapping("/insertPhone")
    public String insertPhone(Model model, Phone phone) {
        if (phone.getId() != null && phone.getId() != 0) {
            productTypeService.updatePhone(phone);
        } else {
            productTypeService.insertPhone(phone);
        }
        // 跳到后台主页
        return "redirect:phone";
    }

}
