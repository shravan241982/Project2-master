package com.niitBlogger.dao.impl;

import javax.persistence.PersistenceContext;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niitBlogger.dao.RolesDAO;
import com.niitBlogger.model.Roles;
@Repository
@PersistenceContext
public class RolesDAOImpl implements RolesDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addRole(Roles role) {
		sessionFactory.getCurrentSession().save(role);
		
	}

}
