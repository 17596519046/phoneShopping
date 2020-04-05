package com.rich.controller;
import com.rich.pojo.*;
import com.rich.service.LoginService;
import com.rich.util.FastDFSClient;
import com.rich.vo.GoodsCarInfo;
import com.rich.vo.OrderInfoVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/***
 * 登陆/注册
 */
@RequestMapping("/before/")
@Controller
public class BeforeController {

    @Autowired
    private LoginService loginService;

    /***
     * 跳转到主页,展示商品详情
     * @param model
     * @return
     */
    @RequestMapping("main")
    public String selectAll(Phone phone, Model model) {
        List<Phone> productList = loginService.selectAllProductInfo(phone);
        List<Phone> typeList = loginService.selectProductType();
        model.addAttribute("list",productList);
        model.addAttribute("typeList",typeList);
        model.addAttribute("name", phone.getProductName());
        model.addAttribute("typeId", phone.getTypeId());
        return "pages/before/main";
    }

    /***
     * 上传图片
     * @param file
     * @return
     */
    @RequestMapping("upload")
    @ResponseBody
    public String selectAll(@RequestBody MultipartFile file) throws Exception{
        FastDFSClient fastDFSClient=new FastDFSClient();
        String url = fastDFSClient.uploadFile(file.getBytes(), "jpg");
        return url;
    }

    /***
     * 查看商品详情
     * @param phone
     * @param model
     * @return
     */
    @RequestMapping("goodsDetail")
    public String goodsDetail(Phone phone, Model model) {
        model.addAttribute("po", phone);
        return "pages/before/productDetails";
    }

    /***
     * 购物车结算
     * @param orderInfo
     * @param model
     * @return
     */
    @RequestMapping("settle")
    public String settle(OrderInfo orderInfo, Model model,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        orderInfo.setUserId(user.getId());
        int i = loginService.settleOrderInfo(orderInfo,request);
        //查询订单列表信息
        BuyCar record = new BuyCar();
        record.setUserId(user.getId());
        List<OrderInfoVO> list = loginService.selectOrderInfo(record);
        //计算购物车总金额
        model.addAttribute("list",list);
        return "pages/before/buyOrderSelf";
    }

    /***
     * 加入购物车
     * @param buyCar
     * @param model
     * @return
     */
    @RequestMapping("user/addBuyCar")
    public String addBuyCar(BuyCar buyCar, Model model) {
        loginService.insertGoodsCar(buyCar);
        //查询购物车列表信息
        List<GoodsCarInfo> list = loginService.selectGoodsCarInfo(buyCar);
        //计算购物车总金额
        String price = loginService.selectAllPrice(list);
        AddressInfo addressInfo=new AddressInfo();
        addressInfo.setUserId(buyCar.getUserId());
        AddressInfo record = loginService.selectAddressMyselfInfo(addressInfo);
        model.addAttribute("address",record);
        model.addAttribute("list",list);
        model.addAttribute("price",price);
        return "pages/before/buyCarSelf";
    }

    /***
     * 查看购物车详情
     * @param buyCar
     * @param model
     * @return
     */
    @RequestMapping("selectMySelfBuyCarInfo")
    public String selectMySelfBuyCarInfo(BuyCar buyCar, Model model) {
        //查询购物车列表信息
        List<GoodsCarInfo> list = loginService.selectGoodsCarInfo(buyCar);
        //计算购物车总金额
        String price = loginService.selectAllPrice(list);
        AddressInfo addressInfo=new AddressInfo();
        addressInfo.setUserId(buyCar.getUserId());
        AddressInfo record = loginService.selectAddressMyselfInfo(addressInfo);
        model.addAttribute("address",record);
        model.addAttribute("list",list);
        model.addAttribute("price",price);
        return "pages/before/buyCarSelf";
    }

    /***
     * 查看订单基本信息
     * @param buyCar
     * @param model
     * @return
     */
    @RequestMapping("selectMySelfOrderInfo")
    public String selectMySelfOrderInfo(BuyCar buyCar, Model model) {
        //查询购物车列表信息
        List<OrderInfoVO> list = loginService.selectOrderInfo(buyCar);
        model.addAttribute("list",list);
        return "pages/before/buyOrderSelf";
    }

    /***
     * 查看订单详情
     * @param buyCar
     * @param model
     * @return
     */
    @RequestMapping("selectMyselfOrderInfoDetail")
    public String selectMyselfOrderInfoDetail(BuyCar buyCar, Model model,HttpServletRequest request) {
        List<GoodsCarInfo> list = loginService.selectOrderDetail(buyCar);
        model.addAttribute("list",list);
        return "pages/before/orderInfoDetail";
    }

    /***
     * 删除购物车商品信息
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("deleteBuyCar")
    public String deleteBuyCar(int id, Model model,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        loginService.deleteGoodsCar(id);
        BuyCar buyCar =new BuyCar();
        buyCar.setUserId(user.getId());
        //查询购物车列表信息
        List<GoodsCarInfo> list = loginService.selectGoodsCarInfo(buyCar);
        //计算购物车总金额
        String price = loginService.selectAllPrice(list);
        model.addAttribute("list",list);
        model.addAttribute("price",price);
        return "pages/before/buyCarSelf";
    }

    /***
     * 注册验证用户名是否已被注册
     * @param user
     * @return
     */
    @RequestMapping("user/registerVerify")
    @ResponseBody
    public Map selectAll(User user) {
        //初始化map
        HashMap map = new HashMap();
        int count = loginService.selectUserCount(user);
        if (count == 1) {
            map.put("flag", 1);
        } else {
            map.put("flag", 0);
        }
        return map;
    }

    /***
     * 注册
     * @param user
     * @return
     */
    @RequestMapping("user/register")
    public String selectAll(Model model, User user) {
        loginService.insertUserInfo(user);
        return "pages/before/login";
    }

    /***
     * 添加评价内容
     * @param evaluateInner
     * @return
     */
    @RequestMapping("insertEvaluate")
    @ResponseBody
    public Map insertEvaluate(EvaluateInner evaluateInner,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        evaluateInner.setUserId(user.getId());
        HashMap map = new HashMap();
        int i = loginService.insertEvaluate(evaluateInner);
        map.put("flag",i);
        return map;
    }

    /***
     * 新增地址信息
     * @param addressInfo
     * @return
     */
    @RequestMapping("insertAddress")
    @ResponseBody
    public Map insertAddress(@RequestBody AddressInfo addressInfo,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        addressInfo.setUserId(user.getId());
        HashMap map = new HashMap();
        int i = loginService.insertAddressInfo(addressInfo);
        map.put("flag",i);
        return map;
    }

    /***
     * 修改地址信息
     * @param addressInfo
     * @return
     */
    @RequestMapping("updateAddress")
    @ResponseBody
    public Map updateAddress(@RequestBody AddressInfo addressInfo,HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        addressInfo.setUserId(user.getId());
        HashMap map = new HashMap();
        int i = loginService.updateAddressInfo(addressInfo);
        map.put("flag",i);
        return map;
    }

    /***
     * 删除地址信息
     * @param addressInfo
     * @return
     */
    @RequestMapping("deleteAddress")
    @ResponseBody
    public Map deleteAddress(@RequestBody AddressInfo addressInfo) {
        HashMap map = new HashMap();
        int i = loginService.deleteAddressInfo(addressInfo);
        map.put("flag",i);
        return map;
    }

    /***
     * 查询地址信息列表
     * @return
     */
    @RequestMapping("selectListAddress")
    @ResponseBody
    public Map selectListAddress(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        HashMap map = new HashMap();
        List<AddressInfo> list = loginService.selectListAddressInfo(user.getId());
        map.put("data",list);
        return map;
    }

    /***
     * 取消订单
     * @param orderInfo
     * @return
     */
    @RequestMapping("cancelOrder")
    @ResponseBody
    public String cancelOrder(Model model,OrderInfo orderInfo) {
        loginService.cancelOrder(orderInfo);
        return "";
    }

    /***
     * 修改个人信息
     * @param user
     * @return
     */
    @RequestMapping("updateMyselfInfo")
    public String updateMyselfInfo(User user, HttpServletRequest request) {
        loginService.updateInfo(user);
        request.getSession().removeAttribute("user");
        return "pages/before/login";
    }

    /***
     * 修改密码
     * @param user
     * @return
     */
    @RequestMapping("updatePasswordInfo")
    public String updatePasswordInfo(User user) {
        loginService.updatePasswordInfo(user);
        return "pages/before/login";
    }

    /***
     * 前台注销
     * @param request
     * @return
     */
    @RequestMapping("loginOut")
    public String updatePasswordInfo(HttpServletRequest request) {
        request.getSession().removeAttribute("user");
        return "pages/before/login";
    }

    /***
     * 登陆
     * @param systemUser
     * @return
     */
    @RequestMapping("user/login")
    @ResponseBody
    public Map login(User systemUser, HttpServletRequest request) {
        //初始化map
        HashMap map = new HashMap();
        map.put("flag", 0);
        User user = loginService.selectUserInfo(systemUser);
        if (null == user) {
            map.put("flag", 1);
            map.put("msg","用户不存在");
        } else {
            if(!systemUser.getLoginPassword().equals(user.getLoginPassword())){
                map.put("flag", 1);
                map.put("msg","密码错误");
            }else{
                request.getSession().setAttribute("user",user);
            }
        }
        return map;
    }
}
