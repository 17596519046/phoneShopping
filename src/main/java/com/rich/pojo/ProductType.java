package com.rich.pojo;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

import java.util.Date;

/**
 * 〈一句话功能简述〉<br>
 * 〈描述：pojo〉
 *
 * @author zzy
 * @create 2020/4/4
 * @since 1.0.0
 */
@Data
public class ProductType {

    private Integer id;

    private String name;

    private Date createTime;

    @TableField(exist = false)
    private String createDate;

}
