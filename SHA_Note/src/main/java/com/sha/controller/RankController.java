package com.sha.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sha.service.RankService;

@Controller
@RequestMapping("/rank")
public class RankController {

	@Autowired
	RankService rankService;

	@GetMapping("")
	public String ranking(Model model) {
		model.addAttribute("passwords", rankService.selectPasswordOrderByCount());
		return "04.rank";
	}
}
