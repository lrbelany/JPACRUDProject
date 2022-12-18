package com.skilldistillery.jpadropship.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpadropship.data.DropShipDAO;

@Controller
public class DropShipController {

	@Autowired
	private DropShipDAO dao;
	
	@RequestMapping(path = { "/", "home.do"} )
	public ModelAndView goToHome(Model model) {
		ModelAndView mv = new ModelAndView();
	
		model.addAttribute("dshipList", dao.findAll());
		mv.setViewName("home");
		return mv;
	}
}
