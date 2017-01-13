package com.niitBlogger.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niitBlogger.dao.RolesDAO;
import com.niitBlogger.model.Roles;
import com.niitBlogger.service.RolesService;

@Service
@Transactional
public class RolesServiceImpl implements RolesService{

	@Autowired
	private RolesDAO rolesDAO;
	
	public void addRole(Roles role) {
		rolesDAO.addRole(role);
		
	}



}
