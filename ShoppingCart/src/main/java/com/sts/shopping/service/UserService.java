package com.sts.shopping.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sts.shopping.entity.User;
import com.sts.shopping.repository.UserRepository;

@Service
@Transactional
public class UserService {
	
	
	@Autowired
	private UserRepository userRepository;
	

	    private static List<User> users = new ArrayList<>();

	    static {
	        users.add(new User("user1@gmail.com","user1"));
	        users.add(new User("user2@gmail.com","user2"));
	    }

	    public void saveInitialBatch(){
	        userRepository.saveAll(users);
	    }

	
	
	public User findByid(Long id){
		
		Optional<User> optional=userRepository.findById(id);
		
		if (optional.isPresent()) {
			return optional.get();
		}
		
		return null;
	}
	
	
	

}
