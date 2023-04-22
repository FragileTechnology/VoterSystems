package com.votersystem.util;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class SqlQuerry {

	
	/*######################################## MSDefinitonDAO ####################################################################################################*/
	
	public static final String createDefinition = "insert into ms_definition(name,category,description,date_created)values(?,?,?,?)";
	
	public static final String updateDefinition = "update ms_definition set name=?,category=?,description=? where def_id=?";
	
	public static final String findByDefCategory = "select * from ms_definition where category=?";
	
	public static final String findByDefId = "select * from ms_definition where def_id=?";
	
	public static final String findByCustomN1ANDCategory="select * from ms_definition where category=? and custom_n1=? and status=1";
			
			
	
	/*######################################## Common ####################################################################################################*/
	public Date DateConversion()throws Exception{
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now();  
		String todaysDate = dtf.format(now);
		Date date1=new SimpleDateFormat("dd/MM/yyyy").parse(todaysDate);
		return date1;
		
	}
}
