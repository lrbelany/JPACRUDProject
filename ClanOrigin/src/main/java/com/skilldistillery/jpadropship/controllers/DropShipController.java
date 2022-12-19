package com.skilldistillery.jpadropship.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.jpadropship.data.DropShipDAO;
import com.skilldistillery.jpadropship.entities.DropShip;

@Controller
public class DropShipController {

	@Autowired
	private DropShipDAO dao;

	@RequestMapping(path = { "/", "home.do" })
	public String goToHome(Model model) {

		model.addAttribute("dshipList", dao.findAll());

		return "home";
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

				model.addAttribute("dship", dship);

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

	@RequestMapping(path = "update.do")
	public String goToUpdatePage(@RequestParam int id, Model model) {
		DropShip dship = dao.findById(id);
		model.addAttribute("dship", dship);
		return "update";
	}
	
	@RequestMapping(path = "updated.do")
	public String updateBook(DropShip dship, Model model, RedirectAttributes redir) {
		dao.update(dship.getId(), dship);
		model.addAttribute("dship", dship);
		return "output";
	}
	

	@RequestMapping(path = "create.do")
	public String create(Model model, DropShip dship) {
		model.addAttribute("newDropShip", dao.create(dship));
		return "output";
		
	}
	
	@RequestMapping(path = "created.do")
	public String Created(Model model, DropShip dship) {
		
		List<DropShip> dshiplist = dao.findAll();
		model.addAttribute("dshipList", dshiplist);
		return "output";
	}
	
	@RequestMapping(path = "delete.do")
	public String delete(@RequestParam Model model, int id) {
		List<DropShip> dship = dao.delete(id);
		model.addAttribute("dshipList", dship);
		return "home";
	}
}
