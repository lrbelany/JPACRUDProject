package com.skilldistillery.jpadropship.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import javax.transaction.Transactional;

import com.skilldistillery.jpadropship.entities.DropShip;


@Service
@Transactional
public class DropShipDAOImpl implements DropShipDAO {

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public DropShip findById(int dshipId) {
		return em.find(DropShip.class, dshipId);
	}

	@Override
	public List<DropShip> findAll() {

		String jpql = "SELECT d FROM DropShip d";
		return em.createQuery(jpql, DropShip.class).getResultList();
	}

	@Override
	public DropShip create(DropShip dship) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DropShip update(int dshipId, DropShip dship) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(int dshipId) {
		// TODO Auto-generated method stub
		return false;
	}

}
