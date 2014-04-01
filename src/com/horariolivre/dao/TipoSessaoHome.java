package com.horariolivre.dao;

// Generated 24/03/2014 06:50:21 by Hibernate Tools 3.4.0.CR1

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.horariolivre.entity.TipoSessao;

/**
 * Home object for domain model class TipoSessao.
 * @see com.horariolivre.dao.TipoSessao
 * @author Hibernate Tools
 */
@Repository
public class TipoSessaoHome {

	private static final Log log = LogFactory.getLog(TipoSessaoHome.class);

	@Autowired
	private SessionFactory sessionFactory;
	
	protected Session getCurrentSession() {
		return sessionFactory.getCurrentSession();
	}

	@Transactional
	public void persist(TipoSessao transientInstance) {
		log.debug("persisting TipoSessao instance");
		try {
			sessionFactory.getCurrentSession().persist(transientInstance);
			log.debug("persist successful");
		} catch (RuntimeException re) {
			log.error("persist failed", re);
			throw re;
		}
	}

	@Transactional
	public void remove(TipoSessao persistentInstance) {
		log.debug("removing TipoSessao instance");
		try {
			sessionFactory.getCurrentSession().delete(persistentInstance);
			log.debug("remove successful");
		} catch (RuntimeException re) {
			log.error("remove failed", re);
			throw re;
		}
	}

	@Transactional
	public TipoSessao merge(TipoSessao detachedInstance) {
		log.debug("merging TipoSessao instance");
		try {
			TipoSessao result = (TipoSessao) sessionFactory.getCurrentSession().merge(detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	@Transactional
	public TipoSessao findById(int id) {
		log.debug("getting TipoSessao instance with id: " + id);
		try {
			TipoSessao instance = (TipoSessao) sessionFactory.getCurrentSession().get(TipoSessao.class, id);
			log.debug("get successful");
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}
}
