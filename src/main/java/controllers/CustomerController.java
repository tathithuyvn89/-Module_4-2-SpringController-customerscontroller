package controllers;

import cg.wbd.grandemonstration.model.Customer;
import cg.wbd.grandemonstration.service.CustomerService;
import cg.wbd.grandemonstration.service.CustomerServiceFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
//@RequestMapping("/customers")
public class CustomerController {
    private CustomerService customerService = CustomerServiceFactory.getInstance();
    @GetMapping("/")
    public String getFormList(Model model){
        List<Customer> customerList=customerService.findAll();
        model.addAttribute("customers",customerList);
        return "customers/list";
    }
@GetMapping("customers/{id}")
    public ModelAndView showInfomation(@PathVariable long id)
{
    ModelAndView modelAndView = new ModelAndView("customers/info");
    Customer customer = customerService.findOne(id);
    modelAndView.addObject("customer",customer);
    return modelAndView;
}
//@Autowired
// private CustomerService customerService;
@PostMapping
public String updateCustomer(
        @RequestParam Long id,
        @RequestParam String name,
        @RequestParam String email,
        @RequestParam String address
) {
    Customer customer = new Customer(id, name, email, address);
    customerService.save(customer);
    return "redirect:/";
}

}
