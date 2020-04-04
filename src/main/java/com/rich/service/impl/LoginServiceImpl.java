package com.rich.service.impl;

import com.rich.mapper.LoginMapper;
import com.rich.pojo.*;
import com.rich.service.LoginService;
import com.rich.vo.GoodsCarInfo;
import com.rich.vo.OrderInfoVO;
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
     * @param user
     * @return
     */
    @Override
    public int selectUserCount(User user) {
        return loginMapper.selectUserCount(user);
    }

    @Override
    public User selectUserInfo(User user) {
        return loginMapper.selectUserInfo(user);
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
     * @param user
     * @return
     */
    @Override
    public int insertUserInfo(User user) {
        Date date = new Date();
        user.setCreateTime(date);
        user.setUpdateTime(date);
        user.setRoleId(3);
        return loginMapper.insertUserInfo(user);
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

    /***
     * 取消订单
     * @param orderInfo
     * @return
     */
    @Override
    public int cancelOrder(OrderInfo orderInfo) {
        return loginMapper.cancelOrder(orderInfo);
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
     * @param user
     * @return
     */
    @Override
    public int updateInfo(User user) {
        return loginMapper.updateMyself(user);
    }

    /***
     * 修改密码信息
     * @param user
     * @return
     */
    @Override
    public int updatePasswordInfo(User user) {
        return loginMapper.updatePasswordInfo(user);
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
    public List<Goods> selectProductType() {
        return loginMapper.selectProductType();
    }

    /***
     * 加入购物车
     * @param buyCar
     * @return
     */
    @Override
    public int insertGoodsCar(BuyCar buyCar) {
        Date date = new Date();
        buyCar.setCreateTime(date);
        buyCar.setUpdateTime(date);
        return loginMapper.insertGoodsCar(buyCar);
    }

    /***
     * 查询购物车详情
     * @param buyCar
     * @return
     */
    @Override
    public List<GoodsCarInfo> selectGoodsCarInfo(BuyCar buyCar) {
        return loginMapper.selectGoodsCarInfo(buyCar);
    }

    /***
     * 查看订单详情
     * @param buyCar
     * @return
     */
    @Override
    public List<GoodsCarInfo> selectOrderDetail(BuyCar buyCar) {
        return loginMapper.selectOrderDetail(buyCar);
    }

    /***
     * 查询订单信息
     * @param buyCar
     * @return
     */
    @Override
    public List<OrderInfoVO> selectOrderInfo(BuyCar buyCar) {
        return loginMapper.selectOrderInfo(buyCar);
    }

    /***
     * 计算购物车总金额
     * @param list
     * @return
     */
    @Override
    public String selectAllPrice(List<GoodsCarInfo> list) {
        if (null != list) {
            BigDecimal price = new BigDecimal("0.00");
            for (GoodsCarInfo vo : list) {
                if (null != vo.getProductPrice()) {
                    String money = vo.getProductPrice();
                    int num = vo.getBuyNum();
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
    public int deleteGoodsCar(int id) {
        return loginMapper.deleteGoodsCar(id);
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
        User user = (User) request.getSession().getAttribute("user");
        BuyCar buyCar = new BuyCar();
        int i = 0;
        buyCar.setUserId(user.getId());
        List<GoodsCarInfo> list = loginMapper.selectGoodsCarInfo(buyCar);
        if(list.size() > 0){
            orderInfo.setOrderStatus(1);
            orderInfo.setOrderCode(code);
            int id = loginMapper.insertOrderInfo(orderInfo);
            for(GoodsCarInfo vo : list){
                vo.setOrderId(orderInfo.getId());
            }
            i = loginMapper.updateBatchList(list);
        }
        return i;
    }
}
