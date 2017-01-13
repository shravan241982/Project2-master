package com.niitBlogger.dao;

import java.util.List;

import com.niitBlogger.model.Post;

public interface PostDAO {

	public void addPost(Post user);
	public List<Post> getAllPosts();
}
