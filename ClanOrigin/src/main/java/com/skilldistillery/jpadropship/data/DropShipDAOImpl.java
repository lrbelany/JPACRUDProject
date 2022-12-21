package com.skilldistillery.jpadropship.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpadropship.entities.DropShip;

@Service
@Transactional
public class DropShipDAOImpl implements DropShipDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public DropShip findById(int id) {
		return em.find(DropShip.class, id);
	}

	@Override
	public List<DropShip> findAll() {

		String jpql = "SELECT d FROM DropShip d";
		return em.createQuery(jpql, DropShip.class).getResultList();
	}

	@Override
	public DropShip create(DropShip dship) {

		em.persist(dship);

		System.out.println("Dropship sortied:" + dship);

		em.close();
		return dship;
	}

	@Override
	public DropShip update(int id, DropShip dship) {

		DropShip model = em.find(DropShip.class, id);

		model.setClan(dship.getClan());
		model.setMech(dship.getMech());
		model.setPilot(dship.getPilot());
		model.setAerospaceFighter(dship.getAerospaceFighter());
		model.setCombatVehicle(dship.getCombatVehicle());

		em.close();
		return model;
	}

	@Override
	public boolean deleteId(int id) {

		DropShip dship = em.find(DropShip.class, id);

		em.remove(dship);

		em.close();
		return false;
	}
}
