package com.raykim.dojosurvey.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DojoSurveyController {

	@RequestMapping("")
	public String index(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws ServletException, IOException {
		session.invalidate();
		return "index";
	}
	
	@RequestMapping(path="/process", method=RequestMethod.POST)
	public String process(HttpServletRequest request, HttpServletResponse response, HttpSession session, @RequestParam(value="name") String name, @RequestParam(value="location") String location, @RequestParam(value="lang") String lang, @RequestParam(value="comment") String comment) throws ServletException, IOException {
		session.setAttribute("name", name);
		session.setAttribute("location", location);
		session.setAttribute("lang", lang);
		session.setAttribute("comment", comment);
		return "redirect:/results";
	}
	
	@RequestMapping("/results")
	public String results(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws ServletException, IOException {
		model.addAttribute(session);
		return "results";
	}
}
