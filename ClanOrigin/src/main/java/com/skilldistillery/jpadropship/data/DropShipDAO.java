package com.skilldistillery.jpadropship.data;

import java.util.List;

import com.skilldistillery.jpadropship.entities.DropShip;

public interface DropShipDAO {

	

	DropShip findById(int id);
	
	List<DropShip> findAll();
	
	DropShip create (DropShip dship);
	
	DropShip update(int id, DropShip dship);
	
	boolean deleteId(int id);
}
