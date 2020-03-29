package com.rich.controller;
import com.rich.pojo.*;
import com.rich.service.LoginService;
import com.rich.util.FastDFSClient;
import com.rich.vo.BuyCarInfo;
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
    public String selectAll(Goods goods,Model model) {
        List<Goods> productList = loginService.selectAllProductInfo(goods);
        model.addAttribute("list",productList);
        model.addAttribute("name",goods.getProductName());
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
     * 跳转到商品详情界面
     * @param goods
     * @param model
     * @return
     */
    @RequestMapping("goodsDetail")
    public String goodsDetail(Goods goods,Model model) {
        List<Goods> areaList = loginService.selectAllArea();
        EvaluateInner evaluateInner = new EvaluateInner();
        evaluateInner.setGoodsId(goods.getId());
        List<EvaluateInnerVO> list = loginService.selectListEvaluate(evaluateInner);
        model.addAttribute("areaList",areaList);
        model.addAttribute("po",goods);
        model.addAttribute("list",list);
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
        SystemUser systemUser = (SystemUser) request.getSession().getAttribute("user");
        int i = loginService.settleOrderInfo(orderInfo,request);
        //查询订单列表信息
        BuyCar record = new BuyCar();
        record.setUserId(systemUser.getId());
        List<BuyCarInfo> list = loginService.selectOrderInfo(record);
        List<Goods> areaList = loginService.selectAllArea();
        model.addAttribute("areaList",areaList);
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
    @RequestMapping("addBuyCar")
    public String addBuyCar(BuyCar buyCar, Model model) {
        loginService.insertBuyCar(buyCar);
        //查询购物车列表信息
        List<BuyCarInfo> list = loginService.selectBuyCarInfo(buyCar);
        //计算购物车总金额
        String price = loginService.selectAllPrice(list);
        List<Goods> areaList = loginService.selectAllArea();
        AddressInfo addressInfo=new AddressInfo();
        addressInfo.setUserId(buyCar.getUserId());
        AddressInfo record = loginService.selectAddressMyselfInfo(addressInfo);
        model.addAttribute("address",record);
        model.addAttribute("areaList",areaList);
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
        List<BuyCarInfo> list = loginService.selectBuyCarInfo(buyCar);
        //计算购物车总金额
        String price = loginService.selectAllPrice(list);
        List<Goods> areaList = loginService.selectAllArea();
        AddressInfo addressInfo=new AddressInfo();
        addressInfo.setUserId(buyCar.getUserId());
        AddressInfo record = loginService.selectAddressMyselfInfo(addressInfo);
        model.addAttribute("address",record);
        model.addAttribute("areaList",areaList);
        model.addAttribute("list",list);
        model.addAttribute("price",price);
        return "pages/before/buyCarSelf";
    }

    /***
     * 查看订单详情
     * @param buyCar
     * @param model
     * @return
     */
    @RequestMapping("selectMySelfOrderInfo")
    public String selectMySelfOrderInfo(BuyCar buyCar, Model model) {
        //查询购物车列表信息
        List<BuyCarInfo> list = loginService.selectOrderInfo(buyCar);
        List<Goods> areaList = loginService.selectAllArea();
        model.addAttribute("areaList",areaList);
        model.addAttribute("list",list);
        return "pages/before/buyOrderSelf";
    }

    /***
     * 删除购物车商品信息
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("deleteBuyCar")
    public String deleteBuyCar(int id, Model model,HttpServletRequest request) {
        SystemUser systemUser = (SystemUser) request.getSession().getAttribute("user");
        loginService.deleteBuyCar(id);
        BuyCar buyCar =new BuyCar();
        buyCar.setUserId(systemUser.getId());
        //查询购物车列表信息
        List<BuyCarInfo> list = loginService.selectBuyCarInfo(buyCar);
        //计算购物车总金额
        String price = loginService.selectAllPrice(list);
        model.addAttribute("list",list);
        model.addAttribute("price",price);
        return "pages/before/buyCarSelf";
    }

    /***
     * 注册验证用户名是否已被注册
     * @param systemUser
     * @return
     */
    @RequestMapping("user/registerVerify")
    @ResponseBody
    public Map selectAll(SystemUser systemUser) {
        //初始化map
        HashMap map = new HashMap();
        int count = loginService.selectUserCount(systemUser);
        if (count == 1) {
            map.put("flag", 1);
        } else {
            map.put("flag", 0);
        }
        return map;
    }

    /***
     * 注册
     * @param systemUser
     * @return
     */
    @RequestMapping("user/register")
    public String selectAll(Model model,SystemUser systemUser) {
        loginService.insertUserInfo(systemUser);
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
        SystemUser systemUser = (SystemUser) request.getSession().getAttribute("user");
        evaluateInner.setUserId(systemUser.getId());
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
        SystemUser systemUser = (SystemUser) request.getSession().getAttribute("user");
        addressInfo.setUserId(systemUser.getId());
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
        SystemUser systemUser = (SystemUser) request.getSession().getAttribute("user");
        addressInfo.setUserId(systemUser.getId());
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
        SystemUser systemUser = (SystemUser) request.getSession().getAttribute("user");
        HashMap map = new HashMap();
        List<AddressInfo> list = loginService.selectListAddressInfo(systemUser.getId());
        map.put("data",list);
        return map;
    }

    /***
     * 修改个人信息
     * @param systemUser
     * @return
     */
    @RequestMapping("updateMyselfInfo")
    public String updateMyselfInfo(SystemUser systemUser,HttpServletRequest request) {
        loginService.updateInfo(systemUser);
        request.getSession().removeAttribute("user");
        return "pages/before/login";
    }

    /***
     * 修改密码
     * @param systemUser
     * @return
     */
    @RequestMapping("updatePasswordInfo")
    public String updatePasswordInfo(SystemUser systemUser) {
        loginService.updatePasswordInfo(systemUser);
        return "pages/before/login";
    }

    /***
     * 前台注销
     * @param request
     * @return
     */
    @RequestMapping("loginOut")
    @ResponseBody
    public String updatePasswordInfo(HttpServletRequest request) {
        request.getSession().removeAttribute("user");
        return "";
    }

    /***
     * 登陆
     * @param systemUser
     * @return
     */
    @RequestMapping("user/login")
    @ResponseBody
    public Map login(SystemUser systemUser, HttpServletRequest request) {
        //初始化map
        HashMap map = new HashMap();
        map.put("flag", 0);
        SystemUser user = loginService.selectUserInfo(systemUser);
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
