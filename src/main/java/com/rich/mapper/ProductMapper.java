package com.rich.mapper;

import com.rich.pojo.Phone;
import com.rich.pojo.ProductType;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：mapper〉
 *
 * @author zzy
 * @create 2020/4/4
 * @since 1.0.0
 */

public interface ProductMapper {

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

    void addProduct(ProductType productType);

    void deleteProduct(int id);

    void updateProduct(ProductType productType);

    List<Phone> getAllPhone(@Param("phoneName")String phoneName);

    Phone getOnePhone(int id);

    void deletePhone(int id);

    void updatePhone(Phone phone);

    void insertPhone(Phone phone);
}
