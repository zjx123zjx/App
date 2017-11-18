package cn.itcast.zxxx.entity;

import java.io.Serializable;
import java.util.Set;

public class Course implements Serializable {
	
	private String id1;
	private String name1;
	private String content1;
	public String getId1() {
		return id1;
	}
	public void setId1(String id1) {
		this.id1 = id1;
	}
	public String getName1() {
		return name1;
	}
	public void setName1(String name1) {
		this.name1 = name1;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public Course() {
		super();
	}
	public Course(String id1, String name1, String content1) {
		super();
		this.id1 = id1;
		this.name1 = name1;
		this.content1 = content1;
	}
	
	
}
