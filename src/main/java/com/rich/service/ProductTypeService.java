package com.rich.service;

import com.rich.pojo.ProductType;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：service〉
 *
 * @author zzy
 * @create 2020/4/4
 * @since 1.0.0
 */
public interface ProductTypeService {

    /**
     * 获取所有的手机分类
     * @return
     */
    List<ProductType> getAllProduct();

    /**
     * 获取一个手机分类
     * @param id
     * @return
     */
    ProductType getOneProduct(int id);

    /**
     * 添加一个手机分类
     * @param productType
     */
    void addProduct(ProductType productType);

    /**
     * 删除一个手机分类
     * @param id
     */
    void deleteProduct(int id);

    /**
     * 修改一个手机分类
     * @param productType
     */
    void updateProduct(ProductType productType);
}
