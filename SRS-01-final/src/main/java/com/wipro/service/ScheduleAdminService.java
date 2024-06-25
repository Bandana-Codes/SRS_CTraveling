package com.wipro.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.wipro.dao.ScheduleAdminDao;

import com.wipro.model.ScheduleAdmin;


@Service
public class ScheduleAdminService {

	@Autowired
	public ScheduleAdminDao scheduleAdminDao;
	
	
	public ScheduleAdmin getScheduleAdmin(int id) {
		return this.scheduleAdminDao.getScheduleAdmin(id);
	}
	
	
	
	public List<ScheduleAdmin> displayScheduleAdmins(){
		
		List<ScheduleAdmin> scheduleAdmins=this.scheduleAdminDao.getAllScheduleAdmins();
		return scheduleAdmins;
	}
	
	
	
	public void deleteScheduleAdmin(int id) {
		 this.scheduleAdminDao.deleteScheduleAdmin(id);
	}
	
	public void saveScheduleAdmin(ScheduleAdmin scheduleAdmin) {
		this.scheduleAdminDao.saveScheduleAdmin(scheduleAdmin);
	}

	
	public void updateScheduleAdmin(ScheduleAdmin scheduleAdmin) {
		this.scheduleAdminDao.updateScheduleAdmin(scheduleAdmin);
	}

	
	
}
