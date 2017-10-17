package com.techelevator.ssg.model;

import java.util.HashMap;
import java.util.Map;

public class AlienTravelCalculator {
	private Long age;
	private String transportationMode;
	private String planet;
	private Map<String, Long> planetDistance;
	private Map<String, Integer> transportationSpeed;
	
	
	public AlienTravelCalculator(Long age, String planet, String transportationMode) {
		this.planet = planet;
		this.age = age;
		
		planetDistance = new HashMap<String, Long>();
		planetDistance.put("Mercury", 56974146L);
		planetDistance.put("Venus", 25724767L);
		planetDistance.put("Mars", 48678219L);
		planetDistance.put("Jupiter", 390674710L);
		planetDistance.put("Saturn", 792248270L);
		planetDistance.put("Uranus", 1692662530L);
		planetDistance.put("Neptune", 2703959960L);
		
		this.transportationMode = transportationMode;
		
		transportationSpeed = new HashMap<String, Integer>();
		transportationSpeed.put("Walking", 3);
		transportationSpeed.put("Car", 100);
		transportationSpeed.put("Bullet Train", 200);
		transportationSpeed.put("Boeing 747", 570);
		transportationSpeed.put("Concorde", 1350);
		
	}
	
	public Long getTravelTime() {
		return (planetDistance.get(planet) / transportationSpeed.get(transportationMode))/8760;
	}
	
	public Long getSpaceAge() {
		return age + (planetDistance.get(planet) / transportationSpeed.get(transportationMode) / 8760);
	}
	
	public double getAlienAge() {
		return age / planetDistance.get(planet);
	}
	
	public Long getAge() {
		return age;
	}
	
	public void setAge(Long age) {
		this.age = age;
	}
	
	public String getPlanet() {
		return planet;
	}
	
	public void setPlanet(String planet) {
		this.planet = planet;
	}

	public String getTransportationMode() {
		return transportationMode;
	}

	public void setTransportationMode(String transportationMode) {
		this.transportationMode = transportationMode;
	}

	public Map<String, Long> getPlanetDistance() {
		return planetDistance;
	}

	public void setPlanetDistance(Map<String, Long> planetDistance) {
		this.planetDistance = planetDistance;
	}
	
}