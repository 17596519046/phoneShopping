package com.rich.util;

import javax.swing.filechooser.FileSystemView;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;

public class GenEntityTableUtil {

    /**
     * 这里是MySQL连接方法
     */
    private static final String driver="com.mysql.jdbc.Driver";
    private static final String pwd="TestBicon@123";
    private static final String user="root";
    private static final String url = "jdbc:mysql://47.101.145.236:3306/store" + "?user=" + user + "&password=" + pwd + "&useUnicode=true&characterEncoding=UTF-8";
    private static String tablename = "evaluate_inner";// 表名
    private static String setpackage="com.rich.pojo";//你的实体类所在的包的位置

    private static Connection getConnection=null;

    public static void main(String[] args) {
        FileSystemView fsv = FileSystemView.getFileSystemView();
        String path = fsv.getHomeDirectory().toString();//获取当前用户桌面路径
        getConnection=getConnections();
        try {
            DatabaseMetaData dbmd=getConnection.getMetaData();
            ResultSet resultSet = dbmd.getTables(null, "%", "%", new String[] { "TABLE" });
            while (resultSet.next()) {
                String tableName = resultSet.getString("TABLE_NAME");
                //System.out.println(tableName);
                //这里去掉IF可对库里面所有表直接生成
                if(tablename.equals(tableName)){
                    //其他数据库不需要这个方法的，直接传null，这个是oracle和db2这么用
                    //ResultSet rs =getConnection.getMetaData().getColumns(null, getXMLConfig.getSchema(),tableName.toUpperCase(), "%");
                    ResultSet rs1 = dbmd.getColumns(null, "%", tableName, "%");
                    ResultSet rs2 = dbmd.getColumns(null, "%", tableName, "%");
                    File directory = new File(path+"\\"+ camelName(tablename)+".java");
                    FileWriter fw = new FileWriter(directory);
                    PrintWriter pw = new PrintWriter(fw);
                    if(setpackage==null || setpackage==""){
                        pw.write("package com.sxdl.vo;\r\n");
                    }else{
                        pw.write("package "+setpackage+";\r\n");
                    }
                    pw.write("\r\n");
                    pw.write("   /**\r\n");
                    pw.write("    * " + tablename + " 实体类\r\n");
                    pw.write("    * " + getDate()+ "\r\n");
                    pw.write("   */ \r\n");
                    //Get和Set标签
                    pw.write("@Data");
                    pw.write("\r\npublic class " + camelName(tablename) + "{\r\n");
                    System.out.println();
                    System.out.println(tablename+"表信息：");
                    System.out.println();
                    while(rs1.next()){
                        System.out.println("private " +sqlType2JavaType(rs1.getString("TYPE_NAME"))+"	"+rs1.getString("COLUMN_NAME")+";");
//                        if (directory.exists()) {
//                        } else {
//                            directory.createNewFile();
//                        }
                        String type = sqlType2JavaType(rs1.getString("TYPE_NAME"));
                        String name = rs1.getString("COLUMN_NAME");
                        String remark = rs1.getString("REMARKS");
                        createPrtype(pw,type,name,remark);
                    }
                    //提供Get和Set方法
//                    pw.write("\r\n");
//                    while(rs2.next()){
//                        String name = rs2.getString("COLUMN_NAME");
//                        String type = rs2.getString("TYPE_NAME");
//                        createMethod(pw,type,name);
//                    }
                    pw.write("}\r\n");

                    pw.flush();
                    pw.close();
                    System.out.println();
                    System.out.println();
                    System.out.println("=====注意☆信息=====");
                    System.out.println();
                    if(setpackage==null || setpackage=="" ||setpackage.equals("com.sxdl.vo")){
                        System.out.println(" 生成成功、文件在你的桌面。但你没有设置你的实体类所在的包的位置，有可能package会出错！");
                        System.out.println("找到私有属性“setpackage”来设置，默认为：com.lw.vo;");
                        System.out.println();
                    }else{
                        System.out.println("	生成成功！文件在你的桌面。");
                        System.out.println();
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    /**生成属性*/
    public static void createPrtype(PrintWriter pw,String type,String name,String remark){
        if(remark!=null && !"".equals(remark)){
            pw.write("\t/**\r\n");
            pw.write("\t*"+remark+"\r\n");
            pw.write("\t*/\r\n");
        }else{
            pw.write("\t//"+name+"\r\n");
        }
        pw.write("\tprivate " +type+"	"+name+";\r\n");
    }

//    /**生成方法*/
//    public static void createMethod(PrintWriter pw,String type,String name){
//        pw.write("\tpublic void set" + initcap(name) + "("+ sqlType2JavaType(type) + " " + name+ "){\r\n");
//        pw.write("\t\tthis." + name + "=" + name + ";\r\n");
//        pw.write("\t}\r\n");
//        pw.write("\tpublic " + sqlType2JavaType(type) + " get"+ initcap(name) + "(){\r\n");
//        pw.write("\t\treturn " + name + ";\r\n");
//        pw.write("\t}\r\n");
//        pw.write("\r\n");
//    }


    // 创建数据库连接
    public static Connection getConnections() {
        try {
            Class.forName(driver);
            getConnection = DriverManager.getConnection(url, user, pwd);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return getConnection;
    }

    /**
     * 判断属性类型
      * @param sqlType
     * @return
     */
    public static String sqlType2JavaType(String sqlType) {
        String str = null;
        if (sqlType.equalsIgnoreCase("bit")) {
            str = "boolean";
        } else if (sqlType.equalsIgnoreCase("tinyint")) {
            str = "byte";
        } else if (sqlType.equalsIgnoreCase("smallint")) {
            str = "short";
        } else if (sqlType.equalsIgnoreCase("int")) {
            str = "int";
        } else if (sqlType.equalsIgnoreCase("bigint")) {
            str = "long";
        } else if (sqlType.equalsIgnoreCase("float")) {
            str = "float";
        } else if (sqlType.equalsIgnoreCase("decimal") || sqlType.equalsIgnoreCase("numeric")
                || sqlType.equalsIgnoreCase("real") || sqlType.equalsIgnoreCase("money")
                || sqlType.equalsIgnoreCase("smallmoney")) {
            str = "double";
        } else if (sqlType.equalsIgnoreCase("varchar") || sqlType.equalsIgnoreCase("char")
                || sqlType.equalsIgnoreCase("nvarchar") || sqlType.equalsIgnoreCase("nchar")
                || sqlType.equalsIgnoreCase("text")) {
            str = "String";
        } else if (sqlType.equalsIgnoreCase("datetime")) {
            str = "Date";
        } else if (sqlType.equalsIgnoreCase("image")) {
            str = "Blod";
        }
        return str;
    }



    // 获取格式化后的时间
    private static String getDate() {
        String time = null;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        time = sdf.format(new Date());
        return time;
    }

    /**
     * 将下划线大写方式命名的字符串转换为驼峰式。如果转换前的下划线大写方式命名的字符串为空，则返回空字符串。</br>
     * 例如：HELLO_WORLD->HelloWorld
     * @param name 转换前的下划线大写方式命名的字符串
     * @return 转换后的驼峰式命名的字符串
     */
    public static String camelName(String name) {
        StringBuilder result = new StringBuilder();
        // 用下划线将原始字符串分割
        String camels[] = name.split("_");
        for (String camel :  camels) {
            // 跳过原始字符串中开头、结尾的下换线或双重下划线
            if (camel.isEmpty()) {
                continue;
            }
            result.append(camel.substring(0, 1).toUpperCase());
            result.append(camel.substring(1).toLowerCase());

        }

        return result.toString();
    }


}
