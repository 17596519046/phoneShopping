package com.rich.service;

import com.rich.pojo.Phone;
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

    /**
     * 获取所有的手机
     * @param phoneName
     * @return
     */
    List<Phone> getAllPhone(String phoneName);

    /**
     * 根据Id获取一个手机
     * @param id
     * @return
     */
    Phone getOnePhone(int id);

    /**
     * 添加一个新手机
     * @param id
     */
    void deletePhone(int id);

    /**
     * 修改手机信息
     * @param phone
     */
    void updatePhone(Phone phone);

    /**
     * 添加手机信息
     * @param phone
     */
    void insertPhone(Phone phone);
}
