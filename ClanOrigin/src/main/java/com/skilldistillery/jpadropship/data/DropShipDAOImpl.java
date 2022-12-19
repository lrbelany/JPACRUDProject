package com.skilldistillery.jpadropship.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
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
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPADropShip");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();

		em.flush();
		System.out.println("Dropship sortied:" + dship);

		em.getTransaction().commit();

		em.close();
		return dship;
	}

	@Override
	public DropShip update(int id, DropShip dship) {

		EntityManagerFactory emf = Persistence.createEntityManagerFactory("JPADropShip");
		EntityManager em = emf.createEntityManager();

		em.getTransaction().begin();

		DropShip managed = em.find(DropShip.class, id);

		managed.setClan(dship.getClan());
		managed.setMech(dship.getMech());
		managed.setPilot(dship.getPilot());
		managed.setAerospaceFighter(dship.getAerospaceFighter());
		managed.setCombatVehicle(dship.getCombatVehicle());

		em.getTransaction().commit();

		em.close();
		return managed;
	}

	@Override
	public List<DropShip> delete(int id) {
	
		em.getTransaction().begin();

		DropShip dship = em.find(DropShip.class, id);

		em.remove(dship);

		em.getTransaction().commit();

		

		em.close();
		return this.findAll();
	}
}
