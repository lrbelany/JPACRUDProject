package com.skilldistillery.jpadropship.data;

import java.util.List;

import com.skilldistillery.jpadropship.entities.DropShip;

public interface DropShipDAO {

	DropShip findById(int dshipId);
	
	List<DropShip> findAll();
	
	DropShip create (DropShip dship);
	
	DropShip update(int dshipId, DropShip dship);
	
	boolean delete(int dshipId);
}
