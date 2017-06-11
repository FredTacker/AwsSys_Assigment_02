package de.tub.as.smm.models;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
    @ManyToOne(optional = false)
    @JoinColumn(name = "meter", referencedColumnName = "meter")
    private Meter meter;

	// Constructors:
    /**
     * Constructor for a new Consumption
     * 
     * @param userid
     * @param consumptiondata
     */
    public Consumption(Meter meter, String userid, Double consumptiondata) {
    	this.meter = meter;
    	this.userID = userid;
    	this.consumptionData = consumptiondata;
    	this.signingDate = new Date(System.currentTimeMillis());
    }
    @Column(name="meter") 
    public Meter getMeter() {
		return meter;
	}
    @Column(name="meter") 
	public void setMeter(Meter meter) {
		this.meter = meter;
	}
    
    public Consumption(String name) {
        this.userID = name;
    }
    //default constructor
    public Consumption() {
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
	
    public Date getSigningDate() {
		return signingDate;
	}

	public void setSigningDate(Date signingDate) {
		this.signingDate = signingDate;
	}
    
    // String Representation:
    @Override
    public String toString() {
        return userID + " (signed on " + signingDate + ")";
    }
}