package com.skilldistillery.dropship.data;

import com.skilldistillery.dropship.entities.DropShip;

public interface DropShipDAO {

	
	public DropShip findById(int Id);


public List<DropShip> findAll(){
	String jpql = "SELECT o FROM Omni o";
			return em.createQuery(jpql, DropShip.class).getResultList();
}

}
