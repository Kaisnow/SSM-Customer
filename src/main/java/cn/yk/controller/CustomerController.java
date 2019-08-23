package cn.yk.controller;

import cn.yk.pojo.Customer;
import cn.yk.pojo.Page;
import cn.yk.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;
    @RequestMapping("/findAll")
    public String findAll(Model model){

        int count = customerService.getPageTotal();
        Page<Customer> page = new Page<>(5,count,1);
        List<Customer> list = customerService.getPageList(page.getPageStar(),page.getPageSize());
        page.setBeanlist(list);

        model.addAttribute("page",page);
        return "list";
    }
    @RequestMapping("/goPage")
    public String goPage(Model model,int pageNumber){

        int count = customerService.getPageTotal();
        Page<Customer> page = new Page<>(5,count,pageNumber);
        List<Customer> list = customerService.getPageList(page.getPageStar(),page.getPageSize());
        page.setBeanlist(list);

        model.addAttribute("page",page);
        return "list";
    }
    @RequestMapping("/addCustomer")
    public String addCustomer(Model model,Customer customer){
        customerService.addCustomer(customer);

        model.addAttribute("message","添加客户成功");
        return "outcome";
    }
    @RequestMapping("/toAddCustomer")
    public String toAddCustomer(){
        return "addCustomer";
    }
    @RequestMapping("/findCustomer")
    public String findCustomer(String name,String tel,Model model){

        List<Customer> list = customerService.findCustomer(name, tel);
        model.addAttribute("list",list);
        return "list";
    }
    @RequestMapping("/updateCustomer")
    public String updateCustomer(Model model,Customer customer){

        System.out.println(customer);
       customerService.updateCustomer(customer);

        model.addAttribute("message","修改客户信息成功");
        return "outcome";
    }

    @RequestMapping("/deleteCustomer")
    public String deleteCustomer(Model model,Integer id){

        customerService.deleteCustomer(id);
        model.addAttribute("message", "删除客户信息成功");
        return "outcome";
    }


}
