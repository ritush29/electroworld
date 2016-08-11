package com.electroworld.CartModel;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;


@Repository
@EnableTransactionManagement
public interface CartDAO
{
	Cart getCartById(int cartId);
	
	Cart getCartByUsername(String Username);
	
	String checkUsername(String Username);

    void update(Cart cart);
    
    void add(Cart cart);
    
    void delete(int i);
    
    void deleteByProductId(int pid);
    
    public List<Cart> getAllProducts();
}

