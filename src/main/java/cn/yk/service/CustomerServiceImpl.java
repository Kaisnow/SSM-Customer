package cn.yk.service;

import cn.yk.dao.CustomerDao;
import cn.yk.pojo.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("customerService")
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDao;
    @Override
    public List<Customer> findAll() {
        return customerDao.findAll();
    }

    @Override
    public void addCustomer(Customer customer) {
        customerDao.addCustomer(customer);
    }

    @Override
    public void deleteCustomer(int id) {
        customerDao.deleteCustomer(id);
    }

    @Override
    public List<Customer> findCustomer(String name, String tel) {
      return   customerDao.findCustomer(name,tel);
    }

    @Override
    public void updateCustomer(Customer customer) {
        customerDao.updateCustomer(customer);
    }

    @Override
    public int getPageTotal() {
        return customerDao.getPageTotal();
    }

    @Override
    public List<Customer> getPageList(int star, int num) {
        return customerDao.getPageList(star,num);
    }
}
