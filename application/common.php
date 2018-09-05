<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
function status($data){
	switch ($data) {
		case -1:
			return '删除';
			break;
		case 1:
			return '正常';
			break;
		default :
			return '待审';
			break;
	}
}

function json($code,$msg="",$data=array()){  
  	$result = [
        'code' => intval($code),  
        'msg' => $msg, 
        'data' => $data   
    ]; 
            //输出json  
    echo json_encode($result);  
}
