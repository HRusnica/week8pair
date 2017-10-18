package com.techelevator.ssg.controller;

import java.time.LocalDateTime;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.techelevator.ssg.model.forum.ForumDao;
import com.techelevator.ssg.model.forum.ForumPost;

@Controller
public class ForumController {
	
	@Autowired
	ForumDao forumDao;
	
	@RequestMapping(path="/forumPost", method=RequestMethod.GET)
	public String showAllPosts(ModelMap modelHolder) {
		List<ForumPost> posts = forumDao.getAllPosts();
		modelHolder.put("allPosts", posts);
		return "forumPost";
	}
	
	@RequestMapping(path="/newForumPost", method=RequestMethod.GET)
	public String goToNewPage() {
		return "newForumPost";
	}
	
	@RequestMapping(path="/forumPost", method=RequestMethod.POST)
	public String savePostToOurDatabase(@ModelAttribute ForumPost post){
		post.setDatePosted(LocalDateTime.now());
		forumDao.save(post);
		return "redirect:/forumPost";
	}
	


	
}
