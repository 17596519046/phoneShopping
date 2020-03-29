package com.rich.mapper;
import com.rich.pojo.*;
import com.rich.vo.BuyCarInfo;
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

    int updatePasswordInfo(SystemUser systemUser);

    List<Goods> selectAllProductInfo(Goods goods);

    List<Goods> selectCityInfo();

    int updateMyself(SystemUser systemUser);

    int insertBuyCar(BuyCar buyCar);

    List<BuyCarInfo> selectBuyCarInfo(BuyCar buyCar);

    List<BuyCarInfo> selectOrderInfo(BuyCar buyCar);

    int deleteBuyCar(int id);

    int insertOrderInfo(OrderInfo orderInfo);

    int updateBatchList(@Param(value = "list") List<BuyCarInfo> buyCars);
}