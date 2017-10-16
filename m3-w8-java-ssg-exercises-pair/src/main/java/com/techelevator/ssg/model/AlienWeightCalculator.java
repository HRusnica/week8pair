package com.techelevator.ssg.model;

import java.util.HashMap;
import java.util.Map;

public class AlienWeightCalculator {

	
			private Double weight;
			private String planet;
			private Map<String, Double> planetMultiplier;
			
			
			public AlienWeightCalculator(Double weight, String planet) {
				this.weight = weight;
				this.planet = planet;
				
				planetMultiplier = new HashMap<String, Double>();
				planetMultiplier.put("Mercury", .378);
				planetMultiplier.put("Venus", 0.905);
				planetMultiplier.put("Mars", .379);
				planetMultiplier.put("Jupiter", 2.529);
				planetMultiplier.put("Saturn", 1.066);
				planetMultiplier.put("Uranus", .903);
				planetMultiplier.put("Neptune", 1.096);
				
			}
			
			public Double getAlienWeight() {
				return weight * planetMultiplier.get(planet);
			}
			
			
			public Double getWeight() {
				return weight;
			}
			public void setAge(Double weight) {
				this.weight = weight;
			}
			public String getPlanet() {
				return planet;
			}
			public void setPlanet(String planet) {
				this.planet = planet;
			}	
	}

