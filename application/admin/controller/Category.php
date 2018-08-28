<?php 


namespace app\admin\controller;
use think\Controller;

class Category extends Controller{
	//一级栏目首页数据显示
	public function index(){
		$parent_id = input('get.parent.id',0,'intval');
		$categorys = model('Category')->getFristCategorys($parent_id);
		foreach($categorys as $v){
			$v['create_time'] = date('Y-m-d H:i:s',$v['create_time']);
			$v['status'] = status($v['status']);
			echo json_encode($v->toArray());
		}
	} 
	//一级栏目下拉列表数据显示
	public function getFristDropCategory(){
		$categorys = model('Category')->getNormalFirstCategory();
		foreach($categorys as $v){
			echo json_encode($v->toArray());
		}
		
	}
	//栏目添加功能
	public function save(){
		if(!request()->isPost()){
			$this->error('请求失败');
		}
		$data = input('post.');
		$validate = validate('Category');
		if(!$validate->scene('add')->check($data)){
			$this->error($validate->getError());
		}

		$res = model('Category')->add($data);

		if($res){
			$this->success('添加成功');
		}else{
			$this->error('新增失败');
		}
	}

	//点击编辑
	public function edit(){
		$id = input('get.id',1,'intval');
		if($id<1){
			$this->error('参数不合法');
		}
		$category = model('Category')->field('name,parent_id,id')->find($id); 
		echo json_encode($category->toArray());	
	}
	
	//数据更新
	public function update(){
		if(!request()->isPost()){
			$this->error('请求失败');
		}
		$data = input('post.');
		$validate = validate('Category');
		if(!$validate->scene('add')->check($data)){
			$this->error($validate->getError());
		}
		$res = model('Category')->save($data,['id'=>intval($data['id'])]);
		if($res){
			$this->success('更新成功');
		}else{
			$this->error('更新失败'); 
		}	
	}

	//获取二级栏目数据
	public function getSecondCategorys(){
		$id = input('get.id',1,'intval');
		$res = model('Category')->select();
		foreach($res as $v){
			if($v['parent_id']==$id){
				echo json_encode($v->toArray());
			}
		} 
	}

	//数据删除
	public function statusChange(){
		$id = input('get.');
		$res = model('Category')->save(['status'=>-1],$id);
		if($res){
			$this->success('删除成功');
		}else{
			$this->success('删除失败');
		}

	}

}



























 ?>