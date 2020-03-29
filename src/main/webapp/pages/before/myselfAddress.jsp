<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html class="root61">
<head>
  <style type="text/css">.protocol a {
    color: #c81623;
    text-decoration: underline;
  }</style>

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="Content-Type" content="text/html; charset=gbk">
  <title>收获地址</title>
  <link rel="icon" href="/img/image/fav.jpg"/>
  <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/jdf/1.0.0/unit/??ui-base/1.0.0/ui-base.css">
  <link type="text/css" rel="stylesheet" href="//misc.360buyimg.com/user/reg/3.0.0/css/tinyscrollbar-170524.css">
  <link source="widget" type="text/css" rel="stylesheet"
        href="//misc.360buyimg.com/user/reg/3.0.0/widget/??/header/header.css,/common/common.css,/progress-bar/progress-bar.css,/reg-steps/reg-steps.css,/foreign-number-layer-170524/foreign-number-layer-170524.css,/footer/footer.css">
  <link charset="utf-8" rel="stylesheet" href="https://misc.360buyimg.com/jdf/1.0.0/ui/dialog/1.0.0/dialog.css">
  <script type="text/javascript" src="../../js/jquery-3.3.1.js"></script>
  <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="../../js/vue.js"></script>
  <!-- 引入样式 -->
  <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
  <!-- 引入组件库 -->
  <script src="https://unpkg.com/vue/dist/vue.js"></script>
  <script src="https://unpkg.com/element-ui/lib/index.js"></script>
  <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body>
<div class="header">
  <div class="logo-con w clearfix">
    <a href="#" style="height: 60%;background-image: url('/img/image/yu.jpg');background-size: cover;background-position: 0px -50px"  class="logo ">
    </a>
    <div class="logo-title">收货地址</div>
  </div>
</div>
<div class="container w">
  <div id="banner">
    <el-form size="small" class="search-form" ref="searchForm" :model="form" label-width="">
      <el-row>
        <el-col :span="5">
          <el-form-item label="" prop="orderCode">
            <el-button type="primary" @click="addStu()">新增</el-button>
          </el-form-item>
        </el-col>
      </el-row>
    </el-form>
    <!-- 添加员工信息 -->
    <el-dialog  title="新增"  :visible.sync="addStuDisible"  width="30%" >
      <el-form ref="addform" :model="addform" label-width="150px" enctype="multipart/form-data">
        <el-row>
          <el-col >
            <el-form-item  label="手机号">
              <el-input v-model="addform.receivePhone"></el-input>
            </el-form-item>
          </el-col>
          <el-col>
            <el-form-item label="省">
              <el-input v-model="addform.province"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col>
            <el-form-item label="市">
              <el-input v-model="addform.city"></el-input>
            </el-form-item>
            <el-form-item label="区">
              <el-input v-model="addform.area"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-row>
            <el-form-item label="是否默认">
              <el-radio-group v-model="addform.isDefault" style="padding-top: 10px">
                <el-radio :label="1">是</el-radio>
                <el-radio :label="0">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-row>
        </el-row>
        <el-row>
          <el-row>
            <el-form-item label="地址标签">
              <el-radio-group v-model="addform.addressLabel" style="padding-top: 10px">
                <el-radio :label="0">家</el-radio>
                <el-radio :label="1">公司</el-radio>
                <el-radio :label="2">学校</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-row>
        </el-row>
        <el-row>
          <el-col>
            <el-form-item label="详情地址">
              <el-input v-model="addform.detailsAddress"></el-input>
            </el-form-item>
            <el-form-item label="自定义地址标签">
              <el-input v-model="addform.createAddressLabel"></el-input>
            </el-form-item>
          </el-col>
        </el-row>
      </el-form>
      <span slot="footer" class="dialog-footer">
		    	<el-button @click="cancel()">取 消</el-button>
		    	<el-button type="primary" @click="submit()">确 定</el-button>
		  	</span>
    </el-dialog>

    <el-dialog  title="修改"  :visible.sync="editStuDisible"  width="30%" >
      <el-form ref="form" :model="editform" label-width="150px">
        <el-form-item label="手机号">
          <el-input v-model="editform.receivePhone"></el-input>
        </el-form-item>
        <el-form-item label="省">
          <el-input v-model="editform.province"></el-input>
        </el-form-item>
        <el-form-item label="市">
          <el-input v-model="editform.city"></el-input>
        </el-form-item>
        <el-form-item label="区">
          <el-input v-model="editform.area"></el-input>
        </el-form-item>
        <el-row>
          <el-row>
            <el-form-item label="是否默认">
              <el-radio-group v-model="editform.isDefault" style="padding-top: 10px">
                <el-radio :label="1">是</el-radio>
                <el-radio :label="0">否</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-row>
        </el-row>
        <el-row>
          <el-row>
            <el-form-item label="地址标签">
              <el-radio-group v-model="editform.addressLabel" style="padding-top: 10px">
                <el-radio :label="0">家</el-radio>
                <el-radio :label="1">公司</el-radio>
                <el-radio :label="2">学校</el-radio>
              </el-radio-group>
            </el-form-item>
          </el-row>
        </el-row>
        <el-form-item label="详情地址">
          <el-input v-model="editform.detailsAddress"></el-input>
        </el-form-item>
        <el-form-item label="自定义地址标签">
          <el-input v-model="editform.createAddressLabel"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
		    	<el-button @click="cancelEdit()">取 消</el-button>
		    	<el-button type="primary" @click="submitEdit()">确 定</el-button>
		  	</span>
    </el-dialog>
    <!-- 标记类型信息显示 -->
    <el-table
            :data="addressList"
            border
            height="400px"
            size="mini"
            row-style="font-size:15px"
            cell-style="font-size:15px"
            v-loading="loading2"
            element-loading-text="拼命加载中"
            element-loading-spinner="el-icon-loading"
            element-loading-background="rgba(0, 0, 0, 0.8)"
            >
      <el-table-column
              prop="id"
              label="编号"
              min-width="50px"
      >
      </el-table-column>
      <el-table-column
              prop="receivePhone"
              label="收货手机号"
              min-width="120px"
      >
      </el-table-column>
      <el-table-column
              prop="province"
              label="省"
              min-width="80px"
      >
      </el-table-column>
      <el-table-column
              prop="city"
              label="市"
              min-width="80px"
      >
      </el-table-column>
      <el-table-column
              prop="area"
              label="区"
              min-width="80px"
      >
      </el-table-column>
      <el-table-column
              prop="detailsAddress"
              label="详情地址"
              min-width="150px"
              show-overflow-tooltip
      >
      </el-table-column>
      <el-table-column
              prop="isDefault"
              label="是否为默认地址"
              min-width="150px"
              :formatter="formatAddress"
      >
      </el-table-column>
      <el-table-column
              prop="addressLabel"
              label="地址标签"
              min-width="120px"
              :formatter="formatAddressLabel"
      >
      </el-table-column>
      <el-table-column
              prop="createAddressLabel"
              label="自定义地址标签"
              min-width="150px"
      >
      </el-table-column>
      <el-table-column
              label="操作"
              width="200"
              style="height:50px "
      >
        <template slot-scope="scope" style="text-align: center">
          <el-button @click="editStu(scope.row,scope.$index)"  type="primary" size="small">编辑</el-button>
          <el-button @click="delStu(scope.row,scope.$index)"   type="primary" size="small">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
  </div>
</div>
<script src="https://gia.jd.com/y.html?v=0.05015829629434576&amp;o=reg.jd.com/p/regPage"></script>
<script src="//gias.jd.com/js/td.js"></script>
<!-- 引入样式 -->
<link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
<!-- 引入组件库 -->
<script src="https://unpkg.com/element-ui/lib/index.js"></script>
<script type="text/javascript">
    new Vue({
        el:"#banner",
        data:{
            headers:{
                "Content-Type":"multipart/form-data"
            },
            addressList:[],
            addStuDisible:false,
            editStuDisible:false,
            addform:{
                receivePhone:'',
                province:'',
                city:'',
                area:'',
                detailsAddress:'',
                isDefault:'',
                createAddressLabel:'',
                addressLabel:'',
            },
            editform:{
                receivePhone:'',
                province:'',
                city:'',
                isDefault:'',
                area:'',
                detailsAddress:'',
                createAddressLabel:'',
                addressLabel:'',
            },
            form: {
                rows:10
            },
        },

        //加载页面时查询到的数据
        created(){
            var url="/before/selectListAddress";
            var _self=this;
            axios.post(url).then(function(response){
                var datas=response.data;
                _self.addressList=datas.data;
            })
        },

        methods:{
            formatAddress(row) {
                if(row.isDefault == 0){
                    return "否";
                }
                return "是";
            },
            formatAddressLabel(row){
                if(row.addressLabel == 0){
                    return "家";
                }
                if(row.addressLabel == 1){
                    return "公司";
                }
                if(row.addressLabel == 2){
                    return "学校";
                }
                return "";
            },
            //添加员工信息
            addStu(){
                this.addform.receivePhone="";
                this.addform.province="";
                this.addform.city="";
                this.addform.area="";
                this.addform.createAddressLabel="";
                this.addform.detailsAddress="";
                this.addform.isDefault=0;
                this.addform.addressLabel=0;
                this.addStuDisible = true;
            },

            //添加提交
            submit(){
                var url="/before/insertAddress";
                var _self=this;
                axios.post(url,this.addform).then(function(response){
                    //添加成功！
                    if(response.data.flag == '1'){
                        //关闭添加用户对话框
                        _self.addStuDisible = false;
                        //刷新界面
                        _self.loadingData();
                    }else{
//                        alert(response.data.flag);
                    }
                }).catch(function(error) {
                    console.log(error);
                });
            },

            //删除
            delStu(row,index){
                var url="/before/deleteAddress";
                var _self = this;
                axios.post(url,{"id":row.id}).then(function(response){
                    //删除成功 页面数据减去
                    if(response.data.flag == '1'){
                        _self.loadingData();
                    }else{
//                        alert(response.data.msg);
//                        alert(response.data.flag);
                    }
                    //删除失败 控制台打印错误信息
                }).catch(function(error) {
                    console.log(error);
                });

            },

            //编辑学生信息
            editStu(row,index){
                this.editStuDisible = true;
                this.editindex = index;
                //将选中行的数据填充到用户编辑对话框
                this.editform=row;
                this.editform=Object.assign({},row);
            },
            //添加取消
            cancel(){
                this.addStuDisible= false;
            },
            //修改取消
            cancelEdit(){
                this.editStuDisible = false;
            },

            //修改提交
            submitEdit(){
                var _self=this;
                var url="/before/updateAddress";
                axios.post(url,this.editform).then(function(response){
                    //添加成功！
                    if(response.data.flag == '1'){
                        //关闭添加用户对话框
                        _self.editStuDisible = false;
                        //刷新界面
                        _self.loadingData();
                    }else{
                        alert(response.data.flag);
                    }
                    //alert(response.data.message);
                }).catch(function(error) {
                    console.log(error);
                });
            },

            //表格重新加载数据
            loadingData(){
                var url="/before/selectListAddress";
                var _self=this;
                axios.post(url).then(function(response){
                    var datas=response.data;
                    _self.addressList=datas.data;
                })
            },
        }
    })
</script>
</body>
</html>
