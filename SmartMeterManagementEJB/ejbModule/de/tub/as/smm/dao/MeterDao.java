package de.tub.as.smm.dao;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import de.tub.as.smm.models.Meter;
import de.tub.as.smm.models.User;

/**
 * Session Bean implementation class UserDaoEJB
 */
@Stateless
public class MeterDao {

	// Injected database connection:
    @PersistenceContext private EntityManager em;
 
    // Stores a new user:
    public void persist(Meter meter) {
        em.persist(meter);
    }
 
    // Retrieves all the meters:
    public List<Meter> getAllMers() {
        TypedQuery<Meter> query = em.createQuery(
            "SELECT m FROM Meter m ORDER BY m.id", Meter.class);
        return query.getResultList();
    }
    public Meter getMeterByID(String id) {
        TypedQuery<Meter> query = em.createQuery(
            "SELECT m FROM Meter m WHERE m.id =" + id, Meter.class);
        return query.getSingleResult();
    }

}
