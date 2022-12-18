package com.skilldistillery.jpadropship.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class DropShipTest {

	private static EntityManagerFactory emf;
	private EntityManager em;
	private DropShip dship;
	
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	emf = Persistence.createEntityManagerFactory("JPADropShip");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
	em = emf.createEntityManager();
    dship = em.find(DropShip.class, 1);			
	}

	@AfterEach
	void tearDown() throws Exception {
	em.close();
	dship = null;
	}

	@Test
	void test_dropship_mapping() {
	assertNotNull(dship);
	assertEquals("summoner", dship.getMech());
	assertEquals("elizabeth_hazen", dship.getPilot());
	
	
	}

}
