package de.tub.as.smm.models;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
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
    
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "meter")
    private ArrayList<Consumption> consumptionList = new ArrayList<Consumption>(); 
    
    
	//Constructors
	/**
	 * Construktor for the Meter
	 * 
	 * @param deviceID
	 * @param maxLoad
	 * @param voltage
	 * @param amperage
	 */
    public Meter(String deviceID, Double maxLoad, Double voltage, Double amperage) {
		this.deviceID = deviceID;
		this.maxLoad = maxLoad;
		this.voltage = voltage;
		this.amperage = amperage;
	}

    //default constructor
    public Meter() {
		super();
	}
    
    //The Methods below are getter and setter
    
	public Long getId() {
		return id;
	}
    
    @Column(name="DeviceID") 
    public String getDeviceID() {
		return this.deviceID;
	}
    @Column(name="DeviceID") 
	public void setDeviceID(String deviceID) {
		this.deviceID = deviceID;
	}
    
    @OneToMany
    public ArrayList<Consumption> getConsumptionList() {
		return consumptionList;
	}
    

	@Column(name="MaxLoad") 
	public Double getMaxLoad() {
		return maxLoad;
	}

	@Column(name="MaxLoad") 
	public void setMaxLoad(Double maxLoad) {
		this.maxLoad = maxLoad;
	}

	@Column(name="Voltage") 
	public Double getVoltage() {
		return voltage;
	}

	@Column(name="Voltage") 
	public void setVoltage(Double voltage) {
		this.voltage = voltage;
	}

	@Column(name="Amperage") 
	public Double getAmperage() {
		return amperage;
	}

	@Column(name="Amperage") 
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