package cn.itcast.xzgl.action;

import cn.itcast.core.action.BaseAction;

public class Action extends BaseAction {

	public String frame(){
		System.out.println("yes");
		return "frame";
	}
	
	public String left(){
		return "left";
	}
	
	public String top(){
		return "top";
	}
	
	public String bj(){
		return "bj";
	}
	
}
