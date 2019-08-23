package cn.yk.test;

import cn.yk.pojo.Customer;
import cn.yk.pojo.Page;
import cn.yk.service.CustomerService;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.processing.SupportedAnnotationTypes;
import java.util.List;

@ContextConfiguration(locations =  "/ssm-spring.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class Test {
    @Autowired
    private CustomerService customerService;
    @org.junit.Test
    public void finAll(){
//        ApplicationContext ac = new ClassPathXmlApplicationContext("ssm-spring.xml");
//        customerService = (CustomerService) ac.getBean("customerService");
        List<Customer> list = customerService.findAll();
        for (Customer c : list){
            System.out.println(c);
        }
    }
    @org.junit.Test
    public void test(){
        int count = customerService.getPageTotal();
        System.out.println(count);

        Page<Customer> page = new Page<>(5,count,1);
        List<Customer> list = customerService.getPageList(page.getPageStar(),page.getPageSize());
        page.setBeanlist(list);
        System.out.println(page);
    }


}
