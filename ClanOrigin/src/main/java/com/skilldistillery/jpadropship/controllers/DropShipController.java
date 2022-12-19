package com.skilldistillery.jpadropship.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.jpadropship.data.DropShipDAO;
import com.skilldistillery.jpadropship.entities.DropShip;

@Controller
public class DropShipController {

	@Autowired
	private DropShipDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String goToHome(Model model) {

//		model.addAttribute("dshipList", dao.findAll());

		return "home";
	}

	@RequestMapping("falcon.do")
	public String clanJadeFalcon() {

		// try {

//			List<DropShip> faction = dao.findByClan(clan);
//		model.addAttribute("clan", clan);
//		System.out.println("Test: "+ clan);
//
//		model.addAttribute("clan", faction);
//		model.addAttribute("WEB-INF/falcon.jsp");
//		} catch (NumberFormatException e) {
//			model.addAttribute("outputMessage", "No Drop Ship Id found, please try entering a valid number");
//			model.addAttribute("WEB-INF/errorpage.jsp");
//		}
		return "falcon";
	}

	@RequestMapping("wolf.do")
	public String clanWolf(String clan, Model model) {

		try {

			List<DropShip> faction = dao.findByClan(clan);

			model.addAttribute("clan", faction);

		} catch (NumberFormatException e) {
			model.addAttribute("outputMessage", "No Drop Ship Id found, please try entering a valid number");
			model.addAttribute("WEB-INF/errorpage.jsp");
		}
		return "wolf";
	}

	@RequestMapping("id.do")
	public String findById(@RequestParam int id, Model model) {

		DropShip dship = dao.findById(id);

		model.addAttribute("dship", dship);

		return "output";
	}

	@RequestMapping("gotoform.do")
	public String gotoForm() {

		return "findbyid";
	}

	@RequestMapping("output.do")
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
		return "/output";
	}

	@RequestMapping("getdropship.do")
	public String displayDropShip(@RequestParam int dshipId, Model model) {
		DropShip dship = dao.findById(dshipId);
		model.addAttribute("mech", dship);
		return "/getdropship";
	}

}
