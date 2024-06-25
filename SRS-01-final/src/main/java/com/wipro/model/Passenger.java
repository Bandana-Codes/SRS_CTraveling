package com.wipro.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="passengerdetails")
public class Passenger {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	private String PassengerName;
	
	private String Gender;
	
	
	
	private int SeatNumber;
	
	private String ShipName;
	
	private String  AdhaarNumber;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassengerName() {
		return PassengerName;
	}

	public void setPassengerName(String passengerName) {
		PassengerName = passengerName;
	}

	public String getGender() {
		return Gender;
	}

	public void setGender(String gender) {
		Gender = gender;
	}



	public int getSeatNumber() {
		return SeatNumber;
	}

	public void setSeatNumber(int seatNumber) {
		SeatNumber = seatNumber;
	}

	public String getShipName() {
		return ShipName;
	}

	public void setShipName(String shipName) {
		ShipName = shipName;
	}
	
	


	public String getAdhaarNumber() {
		return AdhaarNumber;
	}

	public void setAdhaarNumber(String adhaarNumber) {
		AdhaarNumber = adhaarNumber;
	}

	@Override
	public String toString() {
		return "Passenger [id=" + id + ", PassengerName=" + PassengerName + ", Gender=" + Gender + ", SeatNumber="
				+ SeatNumber + ", ShipName=" + ShipName + ", AdhaarNumber=" + AdhaarNumber + "]";
	}


	
	

}
