package cn.yk.controller;

import cn.yk.dao.UserDao;
import cn.yk.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UserController {
    @Autowired
    private UserDao userDao;
        @RequestMapping("/denglu")
    public String Sign_In(Model model,User user){
            System.out.println(user);
            List<User> list = userDao.findAll();
            System.out.println( list.get(0).toString());

            System.out.println(list.contains(user));
            if (list.contains(user)){

                return "redirect:/customer/findAll";
            }else {
              model.addAttribute("message","用户名或者密码错误");
            }
                return "fail";
    }
}
