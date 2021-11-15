package com.example.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.bean.Item;
@Repository
public interface ItemDao extends CrudRepository<Item, Integer> {

}
