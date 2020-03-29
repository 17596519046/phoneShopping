package com.rich.service.impl;

import com.rich.mapper.LoginMapper;
import com.rich.pojo.*;
import com.rich.service.LoginService;
import com.rich.vo.BuyCarInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginMapper loginMapper;
    SimpleDateFormat format = new SimpleDateFormat("yyyyMMddHHmmss");


    /***
     * 查询用户是否存在
     * @param systemUser
     * @return
     */
    @Override
    public int selectUserCount(SystemUser systemUser) {
        return loginMapper.selectUserCount(systemUser);
    }

    @Override
    public SystemUser selectUserInfo(SystemUser systemUser) {
        return loginMapper.selectUserInfo(systemUser);
    }

    /***
     * 添加评价
     * @param evaluateInner
     * @return
     */
    @Override
    public int insertEvaluate(EvaluateInner evaluateInner) {
        evaluateInner.setCreateTime(new Date());
        evaluateInner.setUpdateTime(new Date());
        return loginMapper.insertEvaluate(evaluateInner);
    }

    /***
     * 查询商品的评价内容
     * @param evaluateInner
     * @return
     */
    @Override
    public List<EvaluateInnerVO> selectListEvaluate(EvaluateInner evaluateInner) {
        return loginMapper.selectEvaluate(evaluateInner);
    }

    /***
     * 新增用户
     * @param systemUser
     * @return
     */
    @Override
    public int insertUserInfo(SystemUser systemUser) {
        Date date = new Date();
        systemUser.setCreateTime(date);
        systemUser.setUpdateTime(date);
        return loginMapper.insertUserInfo(systemUser);
    }

    @Override
    public int insertAddressInfo(AddressInfo addressInfo) {
        if(addressInfo.getIsDefault() == 1){
            loginMapper.updateDefaultAddress(addressInfo);
        }
        return loginMapper.insertAddressInfo(addressInfo);
    }

    @Override
    public int updateAddressInfo(AddressInfo addressInfo) {
        if(addressInfo.getIsDefault() == 1){
            loginMapper.updateDefaultAddress(addressInfo);
        }
        return loginMapper.updateAddressInfo(addressInfo);
    }

    @Override
    public int deleteAddressInfo(AddressInfo addressInfo) {
        return loginMapper.deleteAddressInfo(addressInfo);
    }

    @Override
    public List<AddressInfo> selectListAddressInfo(int id) {
        return loginMapper.selectListAddress(id);
    }

    @Override
    public AddressInfo selectAddressInfo(AddressInfo addressInfo) {
        return loginMapper.selectAddressInfo(addressInfo);
    }

    @Override
    public AddressInfo selectAddressMyselfInfo(AddressInfo addressInfo) {
        return loginMapper.selectAddressMyself(addressInfo);
    }

    /***
     * 修改个人信息
     * @param systemUser
     * @return
     */
    @Override
    public int updateInfo(SystemUser systemUser) {
        return loginMapper.updateMyself(systemUser);
    }

    /***
     * 修改密码信息
     * @param systemUser
     * @return
     */
    @Override
    public int updatePasswordInfo(SystemUser systemUser) {
        return loginMapper.updatePasswordInfo(systemUser);
    }

    /***
     * 查询商品详情
     * @param goods
     * @return
     */
    @Override
    public List<Goods> selectAllProductInfo(Goods goods) {
        return loginMapper.selectAllProductInfo(goods);
    }

    /***
     * 查询所有的特色产品的城市
     * @return
     */
    @Override
    public List<Goods> selectAllArea() {
        return loginMapper.selectCityInfo();
    }

    /***
     * 加入购物车
     * @param buyCar
     * @return
     */
    @Override
    public int insertBuyCar(BuyCar buyCar) {
        Date date = new Date();
        buyCar.setCreateTime(date);
        buyCar.setUpdateTime(date);
        return loginMapper.insertBuyCar(buyCar);
    }

    /***
     * 查询购物车详情
     * @param buyCar
     * @return
     */
    @Override
    public List<BuyCarInfo> selectBuyCarInfo(BuyCar buyCar) {
        return loginMapper.selectBuyCarInfo(buyCar);
    }

    @Override
    public List<BuyCarInfo> selectOrderInfo(BuyCar buyCar) {
        return loginMapper.selectOrderInfo(buyCar);
    }

    /***
     * 计算购物车总金额
     * @param list
     * @return
     */
    @Override
    public String selectAllPrice(List<BuyCarInfo> list) {
        if (null != list) {
            BigDecimal price = new BigDecimal("0.00");
            for (BuyCarInfo vo : list) {
                if (null != vo.getPrice()) {
                    String money = vo.getPrice();
                    int num = vo.getNum();
                    BigDecimal b = new BigDecimal(money);
                    BigDecimal number = new BigDecimal(num);
                    BigDecimal mon = number.multiply(b).setScale(2, BigDecimal.ROUND_HALF_UP);
                    price = price.add(mon).setScale(2, BigDecimal.ROUND_HALF_UP);
                }
            }
            return price.toString();
        }
        return "0.00";
    }

    /***
     * 删除购物车商品信息
     * @param id
     * @return
     */
    @Override
    public int deleteBuyCar(int id) {
        return loginMapper.deleteBuyCar(id);
    }

    /****
     * 购物车结算并生成订单
     * @param orderInfo
     * @param request
     * @return
     */
    @Override
    public int settleOrderInfo(OrderInfo orderInfo, HttpServletRequest request) {
        String code = "YU" + format.format(new Date()) + "" + String.valueOf(Math.random()).substring(2, 5);
        SystemUser systemUser = (SystemUser) request.getSession().getAttribute("user");
        BuyCar buyCar = new BuyCar();
        buyCar.setUserId(systemUser.getId());
        List<BuyCarInfo> list = loginMapper.selectBuyCarInfo(buyCar);
        orderInfo.setOrderStatus(1);
        orderInfo.setOrderCode(code);
        int id = loginMapper.insertOrderInfo(orderInfo);
        for(BuyCarInfo vo : list){
            vo.setOrderId(orderInfo.getId());
        }
        return loginMapper.updateBatchList(list);
    }
}
