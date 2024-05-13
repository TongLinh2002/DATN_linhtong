package com.swshop.controller.employee;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/employee")
public class AllViewEmployee {

    @RequestMapping(value = {"/adddonnhap"}, method = RequestMethod.GET)
    public String adddonnhap(){
        return "employee/adddonnhap";
    }

    @RequestMapping(value = {"/donhang"}, method = RequestMethod.GET)
    public String donhang(){
        return "employee/donhang";
    }

    @RequestMapping(value = {"/nhaphang"}, method = RequestMethod.GET)
    public String nhaphang(){
        return "employee/nhaphang";
    }

    @RequestMapping(value = {"/sanpham"}, method = RequestMethod.GET)
    public String sanpham(){
        return "employee/sanpham";
    }
}
