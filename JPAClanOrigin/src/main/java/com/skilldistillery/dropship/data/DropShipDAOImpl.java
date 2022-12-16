package com.skilldistillery.dropship.data;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import javax.xml.ws.ServiceMode;

@ServiceMode
@Transactional
public class DropShipDAOImpl implements DropShipDAO {

	@PersistenceContext
	private EntityManager em;



public DropShip findById(int Id) {
	
}
}
