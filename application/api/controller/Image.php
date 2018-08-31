<?php 
namespace app\api\controller;
use think\Controller;
use think\Request;
use think\File;
use think\Validate;

class Image extends Controller{
	//多文件上传
	public function upload(){
		$files = request()->file('image');
		$data = [];
		foreach($files as $k=>$v){
			$info = $v->validate(['size'=>1024*1024,'ext'=>'jpg,png,gif'])
			->move('upload');
			 $logo = str_replace('\\', '/', $info->getSaveName());
			 $data[] = $logo;
		}
		
	/*
		输出 jpg
        echo $info->getExtension();
        输出 20160820/42a79759f284b767dfcb2a0197904287.jpg
        echo $info->getSaveName();
        输出 42a79759f284b767dfcb2a0197904287.jpg
        echo $info->getFilename(); 
	*/
		if($data){
			return show(1,'success',$data);
		}else{
		 	return show(0,'upload error');
		}
		
	}
}




























 ?>