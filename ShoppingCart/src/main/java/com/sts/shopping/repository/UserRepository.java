package com.sts.shopping.repository;

import org.springframework.data.repository.CrudRepository;

import com.sts.shopping.entity.User;

public interface UserRepository extends CrudRepository<User, Long> {

}
