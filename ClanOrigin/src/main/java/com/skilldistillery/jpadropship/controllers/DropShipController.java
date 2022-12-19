package com.skilldistillery.jpadropship.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpadropship.data.DropShipDAO;
import com.skilldistillery.jpadropship.entities.DropShip;

@Controller
public class DropShipController {
	

	@Autowired
	private DropShipDAO dao;
	
	@RequestMapping(path = { "/", "home.do"} )
	public String goToHome(Model model) {
	
//		model.addAttribute("dshipList", dao.findAll());

		return "home";
	}

	
	@RequestMapping("/falcon.do" )
	public String clan(String clan) {
		ModelAndView mv = new ModelAndView();
		try {
		
		mv.addObject("clan", clan);
		System.out.println("Test: "+ clan);
		List<DropShip> faction = dao.findByClan(clan);

		mv.addObject("clan", faction);
		mv.setViewName("WEB-INF/falcon.jsp");
		} catch (NumberFormatException e) {
			mv.addObject("outputMessage", "No Drop Ship Id found, please try entering a valid number");
			mv.setViewName("WEB-INF/errorpage.jsp");
		}
		return "falcon";
	}
	@RequestMapping("/output.do")
	public String output(@RequestParam int id, Model model) {
		
		try {
		
		DropShip dship = dao.findById(id);
		List<DropShip> dsfa = dao.findAll();
		if (dship != null) {
		

			model.addAttribute("drop_ship", dship);
			
			model.addAttribute("WEB-INF/output.jsp");

		} else {
			model.addAttribute("outputMessage", "Drop Ship not found");

			model.addAttribute("WEB-INF/errorpage.jsp");

		}
		} catch (NumberFormatException e) {
			model.addAttribute("outputMessage", "No Drop Ship Id found, please try entering a valid number");
			model.getAttribute("WEB-INF/views/error.jsp");
		}
		return "output";
	}
	
	
	@RequestMapping("getdropship.do")
	public String displayDropShip(@RequestParam int dshipId, Model model) {
DropShip dship = dao.findById(dshipId);
model.addAttribute("mech", dship);		
return "getdropship";
	}

}
