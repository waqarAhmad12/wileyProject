package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.example.bean.Billing;
import com.example.bean.Cart;
import com.example.bean.Customer;
import com.example.bean.Item;
import com.example.dao.CustomerDao;
import com.example.service.BillService;
import com.example.service.CartService;
import com.example.service.CustomerService;
import com.example.service.ItemService;


@Controller
@SessionAttributes({"itemList","emailAddress","password"})

public class HomeController {
	@Autowired
	CustomerDao cdao;
	@Autowired
	CustomerService cservice;
	@Autowired
	ItemService itemService;
	@Autowired
	CartService cartService;
	@Autowired
	BillService billService;
	@RequestMapping("home")
	public ModelAndView home()
	{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("home");
		return mv;
	}
	
	@RequestMapping("welcome")
	public ModelAndView addEmployee( @RequestParam("emailAddress") String emailAddress,@RequestParam("password") String password)
	{
	
		ModelAndView mv = new ModelAndView();
		boolean registered = cservice.isRegistered(emailAddress, password);
		if(registered)
		{
		
		mv.setViewName("welcome");
		mv.addObject("emailAddress", emailAddress);
		mv.addObject("password", password);
		return mv;
		}
		
		mv.setViewName("error");
		return mv;
	}
	@RequestMapping("register")
	public ModelAndView register()
	{
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("register");
		return mv;
	}
	@RequestMapping("registered")
	public ModelAndView registerCustomer(Customer customer)
	{
		ModelAndView mv = new ModelAndView();
		cdao.save(customer);
		mv.setViewName("registered");
		System.out.println(customer);
		return mv;
	}
	@RequestMapping("cosmetics")
	public ModelAndView getCosmeticList()
	{
		ModelAndView mv = new ModelAndView();
		List<Item> list = itemService.getItemList("Cosmetics");
		mv.addObject("itemList", list);
		mv.addObject("itemType", "Cosmetics");
		mv.setViewName("item");
		return mv;
		
	}
	@RequestMapping("cd")
	public ModelAndView getCdList()
	{
		ModelAndView mv = new ModelAndView();
		List<Item> list = itemService.getItemList("CD");
		mv.addObject("itemList", list);
		mv.addObject("itemType", "CD");
		mv.setViewName("item");
		return mv;
		
	}
	@RequestMapping("books")
	public ModelAndView getBookList()
	{
		ModelAndView mv = new ModelAndView();
		List<Item> list = itemService.getItemList("Book");
		mv.addObject("itemList", list);
		mv.addObject("itemType", "Books");
		mv.setViewName("item");
		return mv;
		
	}
	@RequestMapping("addtocart")
	public RedirectView addItemToCart(@RequestParam("cart") String itemId,@RequestParam("quantity") String quantity,@RequestParam("itype") String itype)
	{
		int id=Integer.parseInt(itemId);
		int quant=Integer.parseInt(quantity);
		boolean flag=cartService.addItemToCart(id, quant);
		if(flag)
			System.out.println("Added");
		else
			System.out.println("Not Added");
		RedirectView redirectView = new RedirectView();
		redirectView.setContextRelative(true);
		redirectView.setUrl(itype.toLowerCase());
		return redirectView;
	}
	@RequestMapping("showcart")
	public ModelAndView showCart()
	{
		List<Cart> showCart = cartService.showCart();
		ModelAndView mv=new ModelAndView();
		mv.addObject("cartItem", showCart);
		mv.setViewName("showcart");
		return mv;
	}
	@RequestMapping("checkout")
	public ModelAndView generateBill()
	{
		List<Billing> generatedBill = billService.generateBill();
		ModelAndView mv = new ModelAndView();
		mv.addObject("generatedBill", generatedBill);
		mv.setViewName("bill");
		return mv;
		
	}

}
