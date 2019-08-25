package com.sshProject.service.impl;

import com.sshProject.dao.PersonDao;
import com.sshProject.entity.Person;
import com.sshProject.service.PersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersonServiceImpl implements PersonService {

    @Autowired
    private PersonDao personDao;
    @Override
    public Person getPerson(Long id) {
        return personDao.getPerson(id);
    }

    @Override
    public List<Person> getAllPerson() {
        return personDao.getAllPerson();
    }

    @Override
    public void addPerson(Person person) {
        personDao.addPerson(person);
    }

    @Override
    public boolean delPerson(Long id) {
        return personDao.delPerson(id);
    }

    @Override
    public boolean updatePerson(Person person) {
        return personDao.updatePerson(person);
    }
}
