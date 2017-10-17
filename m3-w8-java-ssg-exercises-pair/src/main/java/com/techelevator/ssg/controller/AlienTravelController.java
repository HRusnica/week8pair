package com.techelevator.ssg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.techelevator.ssg.model.AlienTravelCalculator;

@Controller
public class AlienTravelController {

	@RequestMapping("/alienTravel")
	public String travelInput() {
	return "alienTravelInput";
	}
	
	@RequestMapping("/alienTravelResult")
	public String travelResult(@RequestParam String planet, @RequestParam Long age, @RequestParam String transportationMode, ModelMap modelHolder){
		AlienTravelCalculator calc = new AlienTravelCalculator(age, planet, transportationMode);
		modelHolder.put("calculator", calc);
		
		return "alienTravelResult";
	}
	
}