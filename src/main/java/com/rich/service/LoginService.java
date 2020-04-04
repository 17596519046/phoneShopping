package com.rich.service;
import com.rich.pojo.*;
import com.rich.vo.GoodsCarInfo;
import com.rich.vo.OrderInfoVO;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface LoginService {

    int selectUserCount(SystemUser systemUser);

    SystemUser selectUserInfo(SystemUser systemUser);

    int insertEvaluate(EvaluateInner evaluateInner);

    List<EvaluateInnerVO> selectListEvaluate(EvaluateInner evaluateInner);

    int insertUserInfo(SystemUser systemUser);

    int insertAddressInfo(AddressInfo addressInfo);

    int updateAddressInfo(AddressInfo addressInfo);

    int deleteAddressInfo(AddressInfo addressInfo);

    List<AddressInfo> selectListAddressInfo(int id);

    int cancelOrder(OrderInfo orderInfo);

    AddressInfo selectAddressInfo(AddressInfo addressInfo);

    AddressInfo selectAddressMyselfInfo(AddressInfo addressInfo);

    int updateInfo(SystemUser systemUser);

    int updatePasswordInfo(SystemUser systemUser);

    List<Goods> selectAllProductInfo(Goods goods);

    List<Goods> selectProductType();

    int insertGoodsCar(BuyCar buyCar);

    List<GoodsCarInfo> selectGoodsCarInfo(BuyCar buyCar);

    List<GoodsCarInfo> selectOrderDetail(BuyCar buyCar);

    List<OrderInfoVO> selectOrderInfo(BuyCar buyCar);

    String selectAllPrice(List<GoodsCarInfo> list);

    int deleteGoodsCar(int id);

    int settleOrderInfo(OrderInfo orderInfo, HttpServletRequest request);

}
