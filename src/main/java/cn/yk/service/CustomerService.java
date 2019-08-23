package cn.yk.service;

import cn.yk.pojo.Customer;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CustomerService {


    public List<Customer> findAll();


    public void addCustomer(Customer customer);


    public void deleteCustomer(int id);

    public List<Customer> findCustomer(String name, String tel);

    public void  updateCustomer(Customer customer);

    public int  getPageTotal();

    public List<Customer>  getPageList(int star,int num);
}
