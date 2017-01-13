package com.niitBlogger.service;

import java.util.List;

import com.niitBlogger.model.Contact;

public interface ContactService {

		public void saveMessage(Contact contact);
		public List<Contact> getAllMessages();
		public void deleteMessage(int id);
}
