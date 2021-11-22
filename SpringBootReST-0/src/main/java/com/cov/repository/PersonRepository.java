package com.cov.repository;

import org.springframework.data.repository.CrudRepository;

import com.cov.beans.Person;

public interface PersonRepository extends CrudRepository<Person, Integer> {

}
