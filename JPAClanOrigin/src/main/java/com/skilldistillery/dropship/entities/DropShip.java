package com.skilldistillery.dropship.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="omni")
public class DropShip {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String mech;

	private String pilot;

	public DropShip() {
	}

	public int getId() {
		return id;
	}

	public String getMech() {
		return mech;
	}

	public String getPilot() {
		return pilot;
	}

	@Override
	public String toString() {
		return "DropShip [id=" + id + ", mech=" + mech + ", pilot=" + pilot + "]";
	}

}
