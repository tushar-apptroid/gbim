<?php

class Assets {
    
    static public function js($filename = null)
    {
        if($filename != null){
			return '<script type="text/javascript" src="'.base_url()."resources/js/".$filename.'"></script>';
		}
    }
    
    static public function css($filename = null)
    {
        if($filename != null){
			return '<link rel="stylesheet" href="'.base_url()."resources/css/".$filename.'" />';
		}
    }

	static public function img($filename,$params=array(),$tag=true)
	{
		if($tag == true)
		{
			$params_str = "";
			foreach($params as $key=>$param)
			{
				$params_str .= $key.'="'.$param.'" ';
			}
			return '<img src="'.base_url()."resources/member/img/".$filename.'" '.$params_str.' alt="" />';
		}
		else
			return base_url()."resources/member/img/".$filename;
	}
    
}