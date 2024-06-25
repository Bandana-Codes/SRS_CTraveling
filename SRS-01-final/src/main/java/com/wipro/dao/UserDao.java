package com.wipro.dao;

import java.util.List;


import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.wipro.model.Admin;
import com.wipro.model.Route;
import com.wipro.model.User;

import org.springframework.jdbc.core.*;


@Repository
public class UserDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	public UserDao() {
		super();
	}
	
	//verify login
	public int getLoginUser(String mail,String password) {
//		return this.hibernateTemplate.get(Admin.class,mail);
		int count=this.jdbcTemplate.queryForObject("select count(*) from user where emailID=? and password=?",Integer.class,mail,password);
		return count;
	}
	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void saveUser(User user) {
		this.hibernateTemplate.save(user);
		
		
	}

	
}
