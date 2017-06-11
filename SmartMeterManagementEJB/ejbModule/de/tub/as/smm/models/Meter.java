package de.tub.as.smm.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name="Meter")
public class Meter implements Serializable {
    private static final long serialVersionUID = 1L;
 
    // Persistent Fields:
    @Id @GeneratedValue
    Long id;

	private String deviceID;
    private Double maxLoad;
    private Double voltage;
    private Double amperage;
    private ArrayList<Consumption> consumptionList = null; 
 
	// Constructors:
    public Meter() {
    }
    public String getDeviceID() {
		return deviceID;
	}
    
    @OneToMany
    public ArrayList<Consumption> getConsumptionList() {
		return consumptionList;
	}
    

	public void setDeviceID(String deviceID) {
		this.deviceID = deviceID;
	}


	public Double getMaxLoad() {
		return maxLoad;
	}


	public void setMaxLoad(Double maxLoad) {
		this.maxLoad = maxLoad;
	}


	public Double getVoltage() {
		return voltage;
	}


	public void setVoltage(Double voltage) {
		this.voltage = voltage;
	}


	public Double getAmperage() {
		return amperage;
	}


	public void setAmperage(Double amperage) {
		this.amperage = amperage;
	}

 
    // String Representation:
    @Override
    public String toString() {
        return "Device ID=" + deviceID + 
        		";maxLoad=" + maxLoad +
        		";voltage=" + voltage+
        		"amperage=" + amperage +
        		"consumptionList=";
    }
    
}