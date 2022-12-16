package com.skilldistillery.dropship.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

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

	private DropShip dropship;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
	emf = Persistence.createEntityManagerFactory("JPAClanOrigin");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
	em = emf.createEntityManager();
	dropship = em.find(DropShip.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
	em.close();
	dropship = null;
	}

	@Test
	void test_dropship_mapping() {
		assertNotNull(dropship);
	
	assertEquals("thor", dropship.getMech());
	assertEquals("adam", dropship.getPilot());
}
}
