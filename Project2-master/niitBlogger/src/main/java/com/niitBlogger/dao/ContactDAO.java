package com.niitBlogger.dao;

import java.util.List;

import com.niitBlogger.model.Contact;


public interface ContactDAO {

	public void saveMessage(Contact contact);
	public List<Contact> getAllMessages();
	
	public void deleteMessage(int id);
}
