package cn.itcast.xzgl.action;

import java.io.*;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import cn.itcast.core.action.BaseAction;

public class Action extends BaseAction {
	

	public String frame(){
		System.out.println("yes++");
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
	
	public String note(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String str = request.getParameter("tt");
		System.out.println(str);   
		
		BufferedWriter out = null;     
        try {     
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("D:\\java\\myeclipse\\workspace\\itcastTax\\WebRoot\\WEB-INF\\jsp\\xzgl\\bj.txt", true)));     
            out.write(str);     
        } catch (Exception e) {     
            e.printStackTrace();     
        } finally {     
            try {     
                if(out != null){  
                    out.close();     
                }  
            } catch (IOException e) {     
                e.printStackTrace();     
            }     
        }
		return "bj";
	}
	
	public String tw(){
		return "tw";
	}
	
	public String pro(){
		HttpServletRequest request = ServletActionContext.getRequest();
		String str = request.getParameter("tt");
		System.out.println(str);   
		
		BufferedWriter out = null;     
        try {     
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("D:\\java\\myeclipse\\workspace\\itcastTax\\WebRoot\\WEB-INF\\jsp\\xzgl\\tw.txt", true)));     
            out.write(str);     
        } catch (Exception e) {     
            e.printStackTrace();     
        } finally {     
            try {     
                if(out != null){  
                    out.close();     
                }  
            } catch (IOException e) {     
                e.printStackTrace();     
            }     
        }
		return "tw";
	}
	
	
}
