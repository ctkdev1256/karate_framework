package com.karate_api.crud;



import com.intuit.karate.junit5.Karate;
import com.intuit.karate.junit5.Karate.Test;

public class TestRunner {
	
	@Test
	public Karate testRun() {
		
		return Karate.run("getRequestDemo").relativeTo(getClass());
		
	}
	
//	@Test
//	public Karate testRunClassPath() {
//		
//		return Karate.run("classpath:com/karate_api/crud/getrequestdemo/getRequestDemo.feature");
//		
//	}
	
	

}
