package co.grandcircus.coffeeshop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.coffeeshop.entity.User;

public interface UserRepository extends JpaRepository<User, Long>{

}
