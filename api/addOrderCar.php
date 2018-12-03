<?php    
    //连接数据库
   include 'connect.php';    
    //接收数据
    $gid=isset($_GET['gid']) ? $_GET['gid'] : '';
    $num=isset($_GET['nums']) ? $_GET['nums'] : '';

    $sale=isset($_GET['sale']) ? $_GET['sale'] : '';
    $imgurl=isset($_GET['imgurl']) ? $_GET['imgurl'] : '';

    $title=isset($_GET['title']) ? $_GET['title'] : '';
    
    // $title=isset($_GET['title']) ? $_GET['title'] : '';
    // echo $gid;

    $sql="INSERT INTO gouwuche(gid,nums,sale,imgurl,title) VALUES('$gid','$num','$sale','$imgurl','$title')"; 
    //执行语句
    $res=$conn->query($sql);//返回布尔值 
    // var_dump($res);
    if($res){
        echo 1;
    }else{
        echo 0;
    } 
    //关闭数据库
    $conn->close();
?>