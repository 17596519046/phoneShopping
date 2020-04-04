package com.rich.service.impl;

import com.rich.mapper.ProductMapper;
import com.rich.pojo.ProductType;
import com.rich.service.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.List;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：impl〉
 *
 * @author zzy
 * @create 2020/4/4
 * @since 1.0.0
 */
@Service
public class ProductTypeServiceImpl implements ProductTypeService {

    @Autowired
    private ProductMapper productMapper;

    /**
     * 获取所有的手机分类
     * @return
     */
    @Override
    public List<ProductType> getAllProduct() {
        List<ProductType> list = productMapper.getAllProduct();
        // 格式化时间类型
        SimpleDateFormat format = new SimpleDateFormat("YY-MM-dd HH:mm:ss");
        for (ProductType productType : list) {
            String s = format.format(productType.getCreateTime());
            productType.setCreateDate(s);
        }
        return list;
    }

    /**
     * 获取一个手机分类
     * @param id
     * @return
     */
    @Override
    public ProductType getOneProduct(int id) {
        ProductType productType = productMapper.getOneProduct(id);
        return productType;
    }

    @Override
    public void addProduct(ProductType productType) {
        productMapper.addProduct(productType);
    }

    @Override
    public void deleteProduct(int id) {
        productMapper.deleteProduct(id);
    }

    @Override
    public void updateProduct(ProductType productType) {
        productMapper.updateProduct(productType);
    }
}
