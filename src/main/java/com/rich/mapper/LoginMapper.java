package com.rich.mapper;
import com.rich.pojo.*;
import com.rich.vo.GoodsCarInfo;
import com.rich.vo.OrderInfoVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LoginMapper {

    int insertEvaluate(EvaluateInner evaluateInner);

    List<EvaluateInnerVO> selectEvaluate(EvaluateInner evaluateInner);

    int selectUserCount(SystemUser systemUser);

    SystemUser selectUserInfo(SystemUser systemUser);

    int insertUserInfo(SystemUser systemUser);

    int insertAddressInfo(AddressInfo addressInfo);

    int updateAddressInfo(AddressInfo addressInfo);

    int updateDefaultAddress(AddressInfo addressInfo);

    int deleteAddressInfo(AddressInfo addressInfo);

    List<AddressInfo> selectListAddress(int id);

    AddressInfo selectAddressInfo(AddressInfo addressInfo);

    AddressInfo selectAddressMyself(AddressInfo addressInfo);

    int cancelOrder(OrderInfo orderInfo);

    int updatePasswordInfo(SystemUser systemUser);

    List<Goods> selectAllProductInfo(Goods goods);

    int updateMyself(SystemUser systemUser);

    int insertGoodsCar(BuyCar buyCar);

    List<Goods> selectProductType();

    List<GoodsCarInfo> selectGoodsCarInfo(BuyCar buyCar);

    List<GoodsCarInfo> selectOrderDetail(BuyCar buyCar);

    List<OrderInfoVO> selectOrderInfo(BuyCar buyCar);

    int deleteGoodsCar(int id);

    int insertOrderInfo(OrderInfo orderInfo);

    int updateBatchList(@Param(value = "list") List<GoodsCarInfo> buyCars);
}
