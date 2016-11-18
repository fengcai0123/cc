package com.cc.core.controller;

import com.cc.core.entity.good.Goods;
import com.cc.core.filter.Token;
import com.cc.core.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Objects;

/**
 * Created by yonghuo.chen on 16/10/11.
 */
@Controller
@RequestMapping("/main")

public class MainController {
    @Autowired
    private GoodsService goodsService;

 /*   @RequestMapping("/helloWorld")
    public String helloWorld(Model model){

        model.addAttribute("message","hello world");
        return "index";
    }*/

    @RequestMapping("/list")
    public String goodList(Model model){
        List<Goods> goodsList = goodsService.findAll();
        model.addAttribute("goodsList",goodsList);
        return "goodsList";
    }

    @RequestMapping("/categoryGoodsList")
    public String categoryGoodsList(Model model){
        /*long cateId=2;
        List<Goods> goodsList = goodsService.findListByCateId(cateId);*/
        List<Goods> goodsList = goodsService.findAll();
        model.addAttribute("goodsList",goodsList);
        return "categoryGoodsList";
    }

    @Token(save=true)
    @RequestMapping("/add")
    /*@Token(save = true)*/
    public String add(@RequestParam("categoryId")long categId,@RequestParam("name")String name,
                      @RequestParam("number")int number,@RequestParam("weight")double weight,
                      @RequestParam("marketPrice")double marketPrice,@RequestParam("shopPrice")double shopPrice,
                      @RequestParam("detailNumber")int detailNumber,@RequestParam("mainNumber")int mainNumber,Model model){

        if(String.valueOf(categId)!=null || name!=null) {
            Goods goods = new Goods();
            goods.setCategoryId(categId);
            goods.setName(name);
            goods.setMarketPrice(marketPrice);
            goods.setShopPrice(shopPrice);
            goods.setDetailNumber(detailNumber);
            goods.setMainNumber(mainNumber);
            goodsService.add(goods);
        }
        List<Goods> goodsList=goodsService.findAll();
        model.addAttribute("goodsList",goodsList);
        return "goodsList";
    }

   /* @RequestMapping("/del")
    public void del(@RequestParam("gid")long gid, Model model){
        if(String.valueOf(gid)!=null &&String.valueOf(gid)!=""){
            System.out.println("gid"+gid);
            goodsService.del(gid);
        }
        else{
            System.out.print("controller del gid为空");
        }
        *//*List<Goods> goodsList=goodsService.findAll();
        model.addAttribute("goodsList",goodsList);
        return "goodsList";*//*
    }*/

    @RequestMapping("/detail/{gid}")
  public String goodsDetail(@PathVariable long gid, HttpServletRequest request, Model model){
  /*public String goodsDetail(  Model model){
        long gid=95;*/
      //  long gid=Long.parseLong(request.getParameter("gid"));
        if(!Objects.equals(String.valueOf(gid), "")) {
            System.out.println("main_detail_gid==" + gid);
        }
        Goods goods = goodsService.findById(gid);
        model.addAttribute("goods",goods);
        return "redirect:/goods/detail";
    }

    @RequestMapping("/cart")
  //  public String goodsDetail(@RequestParam("gid")long gid, Model model){
  public String goodsCart(  Model model){
        long gid=95;
        Goods goods = goodsService.findById(gid);
        model.addAttribute("goods",goods);
         return "redirect:/cart/list";
    }

    @RequestMapping("/zeptoIndex")
    public String index( Model model){

        List<Goods> goods = goodsService.findAll();
        model.addAttribute("goods",goods);
        return "zeptoIndex";
    }
    @RequestMapping("/profile")
    public String indexProfile( Model model){
        return "redirect:/user/profile";
    }

   /* @RequestMapping("/cart")
    public String indexCart( Model model){
        return "redirect:/cart/list";
    }
*/
    @RequestMapping("/zeptoDetail")
    public String zeptoDetail( Model model){
        return "zeptoDetail";
    }


}
