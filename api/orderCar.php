<?php
    //连接数据库
    include 'connect.php';
    //查询语句，查询整个数据表
    $sql='select * from gouwuche';
    //执行语句：得到一个结果集
    $res=$conn->query($sql); 
    $row=$res->fetch_all(MYSQLI_ASSOC);//只要内容部分
    // var_dump($row);//得到数组
    $res->close();//关闭结果集
    $conn->close();//关闭数据库

    //接收前端传来的数据，运用此方法可在本页面检查数据
    $page=isset($_GET['page']) ? $_GET['page'] : '1';
    $qty=isset($_GET['qty']) ? $_GET['qty'] : '6';
    //把从数据库得到的数组切割，以($page-1)*$qty开头，切割$qty个数据
    $res=array_slice($row,($page-1)*$qty,$qty);
    //把数据做成关联数组,能存储更多的数据
    $datalist=array(
        'list'=>$res,
        'total'=>count($row),//数组的长度就是总数据数
        'page'=>$page,
        'qty'=>$qty
    );
    echo json_encode($datalist,JSON_UNESCAPED_UNICODE);//数组转为字符串，输出到前端
?>