package com.wipro.dao;

import java.util.List;



import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;


import com.wipro.model.ScheduleAdmin;
import com.wipro.model.Ship;


@Repository
public class ScheduleAdminDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	
	
	@Transactional
	public void saveScheduleAdmin(ScheduleAdmin scheduleAdmin) {
		this.hibernateTemplate.saveOrUpdate(scheduleAdmin);
		
		
	}
	
	
	
	//get single product
	public ScheduleAdmin getScheduleAdmin(int id) {
		return this.hibernateTemplate.get(ScheduleAdmin.class,id);
	}
	
	
	//get all routes
	public List<ScheduleAdmin> getAllScheduleAdmins(){
		
		List<ScheduleAdmin> scheduleAdmins=this.hibernateTemplate.loadAll(ScheduleAdmin.class);
		return scheduleAdmins;
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	
		//delete student
		@Transactional
		public void deleteScheduleAdmin(int id) {

			ScheduleAdmin scheduleAdmin=this.hibernateTemplate.get(ScheduleAdmin.class, id);
			this.hibernateTemplate.delete(scheduleAdmin);
			
		}


	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void updateScheduleAdmin(ScheduleAdmin scheduleAdmin) {
		this.hibernateTemplate.update(scheduleAdmin);
		
		
	}
	
}
