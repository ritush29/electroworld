package com.electroworld;
	
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.electroworld.CartModel.CartService;
import com.electroworld.ProductModel.Product;
import com.electroworld.ProductModel.ProductService;
import com.electroworld.UserModel.User;
import com.electroworld.UserModel.UserService;
import com.electroworld.UserRoleModel.UserRoleService;


@Controller
public class electroworldcontroller {
	
	@Autowired
	ProductService ps;
	
	@Autowired
	UserService as;
	
	@Autowired
	UserRoleService urs;
	
	@Autowired
    CartService cr;
	
	@Autowired
    ServletContext context;
	
	@RequestMapping(value="/")	
	public String home()
	{	
		urs.generateUserRoles();
		return "index";
	}
	@RequestMapping(value="/index")	
	public String index()
	{	
		return "index";
	}	
	@RequestMapping("/products") 
	 public ModelAndView abc() 
	 { 
		 
		 ModelAndView mav = new ModelAndView("products");
		 
        JSONArray jarr = new JSONArray();
		 
		 List<Product> list = ps.getAllProducts();
		 
		 for( Product p:list )
		 {
			 JSONObject jobj = new JSONObject();
			 
			 jobj.put("ProductID", p.getProductId());
			 jobj.put("ProductName", p.getProductName());
			 jobj.put("ProductPrice", p.getProductPrice());
			 jobj.put("flag", p.getProductImage());

			 
			 jarr.add(jobj);
		 }
		 
		 mav.addObject("data", jarr.toJSONString());
		 
		 return mav;
		 
	 }
	 
/*ADDPRODUCT*/
	
@RequestMapping(value="/addproduct", method = RequestMethod.GET)
		public ModelAndView addProduct()
		{
			 //System.out.println(p.getProductName());
			 
		 ModelAndView mav = new ModelAndView("addproduct");
	     mav.addObject("newproduct",new Product());	 
	     	return mav;
		}


		 
@RequestMapping(value="/viewproduct/{productId}")
			public ModelAndView addproduct1(@PathVariable("productId") int prodid)
			{
			 ModelAndView mav = new ModelAndView("viewproduct");
		     
			 System.out.println(prodid);
			 
			 Product p = ps.getProduct(prodid);
			 if(p != null)
			 {
				 mav.addObject("ProductName", p.getProductName()); 
				 mav.addObject("ProductPrice", p.getProductPrice()); 
				 mav.addObject("ProductDescription", p.getProductDescription()); 
				 mav.addObject("ProductCategory", p.getProductCategory()); 
				 mav.addObject("ProductQty", p.getProductQty()); 
				 mav.addObject("ProductImg",  p.getProductImage() );
			 }
			 
		     	return mav;
			}

	

			@RequestMapping(value="/update/{productId}" )  	 
			public ModelAndView update( @PathVariable( "productId" ) int prodid  )
			{
				 ModelAndView mav = new ModelAndView("update");
				 
				 System.out.println(prodid);
				 
				 Product p = ps.getProduct(prodid);
			
				 mav.addObject("newproduct", p);
			
				return mav;
			}
		

			@RequestMapping(value="/updateproduct", method = RequestMethod.POST)  	 
			public String insertproduct( @ModelAttribute( "newproduct" ) Product p  )
			{
				try
			    {
					String path = context.getRealPath("/");
			        
			        System.out.println(path);
			        
			        File directory = null;
			        
			        //System.out.println(ps.getProductWithMaxId());
			        
			        if (p.getProductFile().getContentType().contains("image"))
			        {
			            directory = new File(path + "\\resources\\images");
			            
			            System.out.println(directory);
			            
			            byte[] bytes = null;
			            File file = null;
			            bytes = p.getProductFile().getBytes();
			            
			            if (!directory.exists()) directory.mkdirs();
			            
			            file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_" + p.getProductId() + ".jpg");
			            
			            System.out.println(file.getAbsolutePath());
			            
			            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
			            stream.write(bytes);
			            stream.close();

			        }
			        
			        p.setProductImage("resources/images/image_" + p.getProductId() + ".jpg");
			        
			        ps.updateProduct(p);
			    }
			    catch (Exception e)
			    {
			    	e.printStackTrace();
			    }
				
				return "redirect:products";
			}
				
			
			@RequestMapping(value="/insertproduct", method = RequestMethod.POST)  	 
			public String insertproduct1( @ModelAttribute( "newproduct" ) Product p  )
			{
				System.out.println( "Product Name: " + p.getProductName());
				
				ps.insertProduct( p );
				
				Product i1 = ps.getProductWithMaxId();
				
				System.out.println(i1.getProductId());
				
				try
			    {
					String path = context.getRealPath("/");
			        
			        System.out.println(path);
			        
			        File directory = null;
			        
			        //System.out.println(ps.getProductWithMaxId());
			        
			        if (p.getProductFile().getContentType().contains("image"))
			        {
			            directory = new File(path + "\\resources\\images");
			            
			            System.out.println(directory);
			            
			            byte[] bytes = null;
			            File file = null;
			            bytes = p.getProductFile().getBytes();
			            
			            if (!directory.exists()) directory.mkdirs();
			            
			            file = new File(directory.getAbsolutePath() + System.getProperty("file.separator") + "image_" + i1.getProductId() + ".jpg");
			            
			            System.out.println(file.getAbsolutePath());
			            
			            BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(file));
			            stream.write(bytes);
			            stream.close();

			        }
			        
			        i1.setProductImage("resources/images/image_" + i1.getProductId() + ".jpg");
			        
			        ps.updateProduct(i1);
			    }
			    catch (Exception e)
			    {
			    	e.printStackTrace();
			    }
				
				return "redirect:products";
			}
			
			
			
			
			
			
			
			

			
		 @RequestMapping(value="/delete/{productId}")
			public String deleteproduct1(@PathVariable("productId") int prodid)
			{
			 
			 System.out.println(prodid);
			 
			 ps.deleteProduct(prodid);
			 return "redirect:http://localhost:8080/electroworld/products";
			} 

		 @RequestMapping(value="/aboutus" , method = RequestMethod.GET)
			public String aboutus()
			{	
				return "aboutus" ;
			}
			
		 @RequestMapping(value="/contacts")
	public String contacts()
	{
				
		return "contacts" ;
	}


			
			/*SIGNUP PAGE*/
			
			 @RequestMapping(value="/signup")  	 
				public ModelAndView signup()
				{
				 ModelAndView mav = new ModelAndView("signup");
				mav.addObject("newuser", new User());
				
				return mav;
				}


				/*ADD NEW USER*/
			 @RequestMapping(value="/insertUser" , method = RequestMethod.POST)
			 public ModelAndView insertUser( @Valid @ModelAttribute("newuser") User p , BindingResult bind)
			 {

					ModelAndView mav = new ModelAndView("signup");
					
					System.out.println("In User Insert");
					
					if(bind.hasErrors())
					{
						mav.addObject("newuser", p);
					}
					else
					{
						if( p.getPassword().equals(p.getCPassword()) )
						{
							List<User> list = as.getAllUsers();
							
							System.out.println(list);
							
							boolean usermatch= false;
							
							for( User u : list )
							{
								if( u.getUsername().equals(p.getUsername()) )
								{
									usermatch= true;
									break;
								}
							}
							
							if( usermatch == false )
							{
								as.insertUser(p);
								
								mav.addObject("newuser", new User());
								
								mav.addObject("success", "success");
							}	
							else
							{
								mav.addObject("newuser", p);
								
								mav.addObject("useralreadyexists", "useralreadyexists");
							}
						}
						else
						{	
							mav.addObject("newuser", p);
							
							mav.addObject("passwordmismatch", "passwordmismatch");
						}
							
					}
					
					return mav ;
				}
			
			 @RequestMapping(value="/loginpage" , method = RequestMethod.GET)
				public ModelAndView login()
				{
					ModelAndView mav = new ModelAndView("login");
					
					return mav ;
				}
			 
			 @RequestMapping(value="/logout", method = RequestMethod.GET)
				public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
				    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
				    if (auth != null)
				    {   
				    	System.out.println("In LogOut");
				    	new SecurityContextLogoutHandler().logout(request, response, auth);
				    }
				    return "index";
				}
				
			 
			 
	//Page1//			
			 @RequestMapping(value="/Page1")
		public String Pg1()
		{
					
			return "flows/Page1" ;
		}


				
			 @RequestMapping(value="/head-meta")
		public String head_meta()
		{
					
			return "head-meta" ;
			
		}

				
			 @RequestMapping(value="/head")
		public String head()
		{
					
			return "head" ;
		}


			 
			 
			 
			 
			 
			 
	//Page2//	
				
			 @RequestMapping(value="/Page2")
		public String Pg2()
		{
					
			return "flows/Page2" ;
		}

			 
				
			 @RequestMapping(value="/Page3")
		public String Pg3()
		{
					
			return "flows/Page3" ;
		}

			
			 @RequestMapping(value="/Page4")
				public String Pg4()
				{
							
					return "flows/Page4" ;
				}

			 
			 @RequestMapping(value="/initiateflow" , method = RequestMethod.GET)
				public String redirect(HttpServletRequest request){
					
					String retval = " ";
					
					if( request.getUserPrincipal() == null )
						retval = "redirect:/cart?user=none";
					else
						retval = "redirect:/cart?user="+request.getUserPrincipal().getName();
						
					return retval;
				}

			 
			 
			 public String test()
				{
					Authentication auth = SecurityContextHolder.getContext().getAuthentication();
				    if (auth != null && !auth.getName().equals("anonymousUser"))
				    {    
				    	System.out.println(auth.getName());
				    	//System.out.println("User present");
				    	return "false";
				    }
				    else
				    {
				    	System.out.println("User not present");
				    	return "true";
				    }
				    
				    
					
				}
			 
			 
			 
			 
			 
			 
			 
			 
	}