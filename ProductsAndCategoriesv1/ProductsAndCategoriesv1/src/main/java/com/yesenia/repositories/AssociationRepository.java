package com.yesenia.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.yesenia.models.Association;

@Repository
public interface AssociationRepository extends CrudRepository<Association, Long>{

}
