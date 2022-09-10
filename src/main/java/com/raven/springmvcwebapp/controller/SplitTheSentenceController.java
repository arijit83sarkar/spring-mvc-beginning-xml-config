package com.raven.springmvcwebapp.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SplitTheSentenceController {

	@RequestMapping(value = "/showSplitTheSentenceForm", method = RequestMethod.GET)
	public String showSplitTheSentenceForm() {
		return "splitTheSentenceForm";
	}

	@RequestMapping(value = "/processSplitTheSentence", method = RequestMethod.GET)
	public String processSplitTheSentence(HttpServletRequest request, Model model) {
		String sentence = request.getParameter("sentence");
		String[] result = sentence.split(" ");
		model.addAttribute("splitedSentence", result);
		model.addAttribute("noOfWords", result.length);

		return "splitTheSentenceForm";
	}
}
