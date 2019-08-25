package com.sshProject.dao.impl;

import com.sshProject.dao.PersonDao;
import com.sshProject.entity.Person;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class PersonDaoImpl implements PersonDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public Person getPerson(Long id) {
        String hql = "from Person p where p.id=?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setLong(0, id);
        return (Person)query.uniqueResult();
    }

    @Override
    public List<Person> getAllPerson() {
        String hql = "from Person";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
    }

    @Override
    public void addPerson(Person person) {
        sessionFactory.getCurrentSession().save(person);
    }

    @Override
    public boolean delPerson(Long id) {
        String hql = "delete Person p where p.id = ?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setLong(0, id);
        return (query.executeUpdate() > 0);
    }

    @Override
    public boolean updatePerson(Person person) {
        String hql = "update Person p set p.name = ?,p.email=?,p.status=? where p.id = ?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setString(0, person.getName());
        query.setString(1, person.getEmail());
        query.setInteger(2, person.getStatus());
        query.setLong(3, person.getId());
        return (query.executeUpdate() > 0);
    }
}
