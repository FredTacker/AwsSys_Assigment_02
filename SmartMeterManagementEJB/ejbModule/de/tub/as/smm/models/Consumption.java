package de.tub.as.smm.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Consumption")
public class Consumption implements Serializable {
    private static final long serialVersionUID = 1L;
 
    // Persistent Fields:
    @Id @GeneratedValue
    Long id;
	private String userID;
    private Double consumptionData;
    private Date signingDate;
 
    // Constructors:
    public Consumption(String userid, Double consumptiondata) {
    	this.userID = userid;
    	this.consumptionData = consumptiondata;
    	this.signingDate = new Date(System.currentTimeMillis());
    }
 
    public Consumption(String name) {
        this.userID = name;
    }
    
    @Column(name="userID") 
    public String getUserID() {
		return userID;
	}
	@Column(name="consumptionData") 
	public Double getConsumptionData() {
		return consumptionData;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public void setConsumptionData(Double consumptionData) {
		this.consumptionData = consumptionData;
	}
    
    // String Representation:
    @Override
    public String toString() {
        return userID + " (signed on " + signingDate + ")";
    }
}