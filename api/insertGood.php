<?php
    include "connect.php";

    //获取数据
    $gid = isset($_GET["gid"]) ? $_GET["gid"] : 4;
   
    $nums = isset($_GET["nums"]) ? $_GET["nums"] : 1;
    
    //sql语句
    //判断该商品是否在购物车内
    // $sql = "SELECT * from userlist where gid = $gid";
    // $res = $conn -> query($sql);
    // var_dump($res);
    // if($res -> num_rows <= 0){
        //信息插入userlist表
        $sql2 = "INSERT INTO gouwuche (nums,gid) VALUES ($nums,$gid)";
        //执行sql语句 获取结果集
        $res1 = $conn -> query($sql2);


        var_dump($res1);
        if($res1){
            $goodlist = array(
                "code" => 0,
                "gid" => $gid,
               
                "nums" => $nums,
                "message" => "加入成功"
                );
        }
        else{
           $goodlist = array(
            "code" => 2,
            "message" => "加入失败"
            ); 
        }
    // }
    // else {
    //     $goodlist = array(
    //         "code" => 1,
    //         "message" => "该商品已在购物车内"
    //         );
    // }
    
    //返回数据
    echo json_encode($goodlist,JSON_UNESCAPED_UNICODE);
?>