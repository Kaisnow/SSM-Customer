package cn.yk.dao;

import cn.yk.pojo.Customer;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository()
public interface CustomerDao {

    @Select("select * from tb_customer")
    public List<Customer> findAll();

    @Insert("insert into tb_customer(name,telephone,address,remark)values(#{name},#{telephone},#{address},#{remark})")
    public void addCustomer(Customer customer);

    @Delete("delete from tb_customer where id = #{id}")
    public void deleteCustomer(int id);

    @SelectProvider(type = CustomerProvider.class,method = "findCustomer")
    public List<Customer> findCustomer(String name, String tel);

    class CustomerProvider{
        public String findCustomer(String name, String tel){
            String sql = "select * from tb_customer where 1=1";
            if (name!="")sql+=" and name like '%"+name+"%'";
            if (tel!="")sql+=" and telephone like '%"+tel+"%'";
            return sql;
        }
    }


    @Update("update tb_customer set name=#{name} , telephone=#{telephone},address=#{address},remark=#{remark} where id = #{id}")
    public void  updateCustomer(Customer customer);

    @Select("SELECT COUNT(*) FROM tb_customer")
    public int  getPageTotal();

    @Select("select * from tb_customer limit #{star},#{num}")
    public List<Customer> getPageList(@Param("star") int star,@Param("num")int num);
}
