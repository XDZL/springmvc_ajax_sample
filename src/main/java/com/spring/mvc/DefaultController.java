package com.spring.mvc;

import com.dj.web.model.User;
import com.dj.web.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "/user")
public class DefaultController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/mybatis")
    public ModelAndView indexView(@RequestParam String id, HttpServletResponse response){
        response.setCharacterEncoding("utf-8");
        User user = userService.getUserUsingId(id);
        ModelAndView modelAndView = new ModelAndView("mybatis");
        modelAndView.addObject("user",user);
        return modelAndView;
    }
    @RequestMapping(value = "/show")
    public String show(){
        return "show";
    }

    @RequestMapping(value = "/add", method=RequestMethod.POST,
            consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE,
            produces = {MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
    public  String add(User user,// add @Responsebody return 会返回一个界面显示result字符串，所以就不用了。
                      ModelMap model){//也能加@Requestbody，加上会导致415报错
        System.out.println(user);
        model.addAttribute("Command",user.getCommand());
        model.addAttribute("Description",user.getDescription());
        model.addAttribute("Content",user.getContent());
//        userService.ininsertUser(user);
        return "result";
    }
}
