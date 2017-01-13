package com.niitBlogger.service;

import java.util.List;

import com.niitBlogger.model.Post;

public interface PostService {

	public void addPost(Post user);
	public List<Post> getAllPosts();
}
