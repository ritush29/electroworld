package com.electroworld.ProductModel;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Repository
@EnableTransactionManagement
public interface ProductDAO
{
	public void insertProduct(Product p);
	public void updateProduct(Product p);
	public void deleteProduct(int pid);
	
	public Product getProduct(int pid);
	
	public List<Product> getAllProducts();
	public Product getProductWithMaxId();
}