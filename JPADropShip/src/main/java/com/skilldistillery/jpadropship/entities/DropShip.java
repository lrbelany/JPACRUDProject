package com.skilldistillery.jpadropship.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "drop_ship")
public class DropShip {
@Id
@GeneratedValue (strategy = GenerationType.IDENTITY)
private	int id;
	
private String clan;

private String mech;

private String pilot;

@Column(name = "aerospace_fighter")
private String aerospaceFighter;

private String elemental;

@Column(name = "combat_vehicle")
private String combatVehicle;

public DropShip() {
	super();
}
public DropShip(int id, String clan, String pilot, String mech, String aerospaceFighter, String elemental, String combatVehicle) {
	this.id = id;
	this.clan = clan;
	this.mech = mech;
	this.pilot =pilot;
	this.aerospaceFighter = aerospaceFighter;
	this.elemental = elemental;
	this.combatVehicle = combatVehicle;
}
public DropShip(String clan, String pilot, String mech, String aerospaceFighter, String elemental, String combatVehicle) {
	this.clan = clan;
	this.mech = mech;
	this.pilot =pilot;
	this.aerospaceFighter = aerospaceFighter;
	this.elemental = elemental;
	this.combatVehicle = combatVehicle;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

public String getClan() {
	return clan;
}

public void setClan(String clan) {
	this.clan = clan;
}

public String getMech() {
	return mech;
}

public void setMech(String mech) {
	this.mech = mech;
}

public String getPilot() {
	return pilot;
}

public void setPilot(String pilot) {
	this.pilot = pilot;
}

public String getAerospaceFighter() {
	return aerospaceFighter;
}

public void setAerospaceFighter(String aerospaceFighter) {
	this.aerospaceFighter = aerospaceFighter;
}

public String getElemental() {
	return elemental;
}

public void setElemental(String elemental) {
	this.elemental = elemental;
}

public String getCombatVehicle() {
	return combatVehicle;
}

public void setCombatVehicle(String combatVehicle) {
	this.combatVehicle = combatVehicle;
}

@Override
public String toString() {
	StringBuilder builder = new StringBuilder();
	builder.append("DropShip [id=").append(id).append(", clan=").append(clan).append(", mech=").append(mech)
			.append(", pilot=").append(pilot).append(", aerospaceFighter=").append(aerospaceFighter)
			.append(", elemental=").append(elemental).append(", combatVehicle=").append(combatVehicle).append("]");
	return builder.toString();
}

}