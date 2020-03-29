
import java.io.IOException;

import org.csource.common.MyException;
import org.csource.common.NameValuePair;
import org.csource.fastdfs.ClientGlobal;
import org.csource.fastdfs.StorageClient1;
import org.csource.fastdfs.TrackerClient;
import org.csource.fastdfs.TrackerServer;

/****
 * 测试 fastDFS上传图片
 */
public class TestFastDFS {

    public static void main(String[] args) throws IOException, MyException {
        // 1. 加载配置文件
        ClientGlobal.init("fastdfs-client.properties");
        // 2. 创建管理端对象
        TrackerClient trackerClient = new TrackerClient();
        // 3. 通过管理端对象获取连接
        TrackerServer connection = trackerClient.getConnection();
        // 4. 创建存储端对象
        StorageClient1 storageClient = new StorageClient1(connection, null);

        // 创建文件属性信息对象数组
//		NameValuePair meta_list [] = new NameValuePair[]{
//
//				new NameValuePair("item_id", "100010"),
//                new NameValuePair("width", "80"),
//                new NameValuePair("height", "90")
//        };

        NameValuePair[] meta_list = new NameValuePair[1];
        meta_list[0] = new NameValuePair("fileName", "111.png");
        System.out.println(123);

        // 5. 上传文件
		/*
		 * 参数1:要上传的文件地址
		 * 参数2:要上传的文件类型
		 * 参数3:文件属性信息对象数组
		 * 返回值 : 存储在Storage中的地址
		 */
        String path = storageClient.upload_file1("C:\\Users\\sunbo\\Desktop\\111.png", "png", meta_list);
        System.out.println("path : "+ path);
        System.out.println("结束");
    }

}

