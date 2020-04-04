package com.rich.controller;

import com.rich.pojo.ProductType;
import com.rich.pojo.User;
import com.rich.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：controller〉
 *
 * @author zzy
 * @create 2020/4/4
 * @since 1.0.0
 */
@RequestMapping("/product")
@Controller
public class ProductTypeController {

    @Autowired
    private ProductTypeService productTypeService;

    /**
     * 获取所有的手机分类类型
     *
     * @return
     */
    @RequestMapping("/product")
    public String product(Model model) {
        List<ProductType> list = productTypeService.getAllProduct();
        model.addAttribute("all", list);
        return "pages/back/productType";
    }

    /**
     * 获取一个手机分类类型
     *
     * @return
     */
    @RequestMapping("/getOneProduct")
    public String getOneProduct(Model model, int id) {
        ProductType productType = productTypeService.getOneProduct(id);
        List<ProductType> list = productTypeService.getAllProduct();
        List<ProductType> list1 = list.stream().filter(productType1 -> !Objects.equals(productType1.getId(), id)).collect(Collectors.toList());
        model.addAttribute("all", list1);
        model.addAttribute("productType", productType);
        return "pages/back/productType";
    }

    /**
     * 添加一个手机分类
     *
     * @return
     */
    @RequestMapping("/addProduct")
    public String addProduct(Model model, ProductType productType) {
        if (productType.getId() != null && productType.getId() != 0) {
            productTypeService.updateProduct(productType);
        } else {
            productTypeService.addProduct(productType);
        }
        return "redirect:product";
    }

    /**
     * 删除一个手机分类
     *
     * @return
     */
    @RequestMapping("/deleteProduct")
    public String deleteProduct(Model model, int id) {
        productTypeService.deleteProduct(id);
        return "redirect:product";
    }

}
