package com.skilldistillery.dropship.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.dropship.data.DropShipDAO;

@Controller
public class DropShipController {

	@Autowired
	private DropShipDAO dao;
	
	@RequestMapping(path = {"/", "home.do"})
	public String goToHome(Model model) {
		return "home";
	}
}
