<?php    
    //连接数据库
    include 'connect.php';    
    //接收数据
    $id=isset($_GET['id']) ? $_GET['id'] : '';
    $sql="DELETE FROM gouwuche WHERE id='$id'"; 
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