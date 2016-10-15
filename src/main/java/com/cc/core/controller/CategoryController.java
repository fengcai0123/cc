package com.cc.core.controller;

import com.cc.core.entity.good.Category;
import com.cc.core.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/14.
 */
@Controller
@RequestMapping("/category")
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @RequestMapping("/list")
    public String findCategoryList(Model model){
        String sql="行走系统";
       // long id=232;
        List<Category> categoryList=categoryService.findCategoryListByPropertyName(sql);
      //  List<Category> categoryList=categoryService.findCategoryListById(id);
        model.addAttribute("categoryList",categoryList);
        return "categoryList";
    }

    public String add(){

        return "add";
    }
}

