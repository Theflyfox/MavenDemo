package com.sshProject.service;

import com.sshProject.entity.Person;

import java.util.List;

public interface PersonService {
    Person getPerson(Long id);

    List<Person> getAllPerson();

    void addPerson(Person person);

    boolean delPerson(Long id);

    boolean updatePerson(Person person);
}
