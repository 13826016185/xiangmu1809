<?php    
    //连接数据库
    include 'connect.php';    
    //接收数据
    $id=isset($_GET['id']) ? $_GET['id'] : '';
    $num=isset($_GET['nums']) ? $_GET['nums'] : '';
    $sql="UPDATE gouwuche SET nums='$num' where id='$id'"; 

    // echo $id;
    // echo $num;
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