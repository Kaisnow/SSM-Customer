package cn.yk.dao;

import cn.yk.pojo.Customer;
import cn.yk.pojo.User;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserDao {

    @Select("select * from tb_user")
    public List<User> findAll();


    @Delete("delete from tb_user where id = #{id}")
    public void deleteUser(int id);

}
