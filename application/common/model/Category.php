<?php 

namespace app\common\model;
use think\Model;

class Category extends Model{
	protected $autoWriteTimestamp = true;
	public function add($data){
		
		$data['status'] = 1;
		// $data['create_time'] = time();
		// $data['update_time'] = time();
		return $this->save($data);

	}
	//一级栏目下拉选项数据
	public function getNormalFirstCategory(){
		$data = [
			'status' => 1,
			'parent_id' => 0,
		];
		$order = [
			'id' => 'asc',
		];

		return $this->where($data)->order($order)->select();
	}
	//一级栏目分页显示
	public function getFristCategorys($parent_id=0){
		$data = [
			'status' => ['neq',-1],
			'parent_id' => $parent_id,
		];
		$order = [
			'id' => 'asc',
		];
		//sql语句调试方法 echo $this->getLastSql();
		return $this->where($data)->order($order)->paginate(3);

	}


}


































 ?>