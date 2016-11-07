package com.cc.core.controller;

import com.cc.core.entity.good.Goods;
import com.cc.core.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/11.
 */
@CrossOrigin(maxAge = 3600)
@Controller
@RequestMapping("/order")
public class OrderDetailController {
    @Autowired
    private GoodsService goodsService;

 /*   @RequestMapping("/helloWorld")
    public String helloWorld(Model model){

        model.addAttribute("message","hello world");
        return "index";
    }*/

/*    @RequestMapping("/list")
    public String goodList(Model model){
        List<Goods> goodsList = goodsService.findAll();
        model.addAttribute("goodsList",goodsList);
        return "goodsList";
    }

    @RequestMapping("/categoryGoodsList")
    public String categoryGoodsList(Model model){
        *//*long cateId=2;
        List<Goods> goodsList = goodsService.findListByCateId(cateId);*//*
        List<Goods> goodsList = goodsService.findAll();
        model.addAttribute("goodsList",goodsList);
        return "categoryGoodsList";
    }
    @RequestMapping("/add")
    *//*@Token(save = true)*//*
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

    @RequestMapping("/del")
    public String del(@RequestParam("gid")long gid, Model model){
        if(String.valueOf(gid)!=null &&String.valueOf(gid)!=""){
            System.out.println("gid"+gid);
            goodsService.del(gid);
        }
        else{
            System.out.print("controller del gid为空");
        }
        List<Goods> goodsList=goodsService.findAll();
        model.addAttribute("goodsList",goodsList);
        return "goodsList";
    }*/

    @RequestMapping("/orderDetail")
    //public String goodsDetail(@RequestParam("gid")long gid, Model model){
    public String goodsDetail( Model model){

       /* Goods goods = goodsService.findById(gid);
        model.addAttribute("goods",goods);*/
        return "goodsDetail";
    }

    @CrossOrigin(origins="http://localhost:8182/")
    @RequestMapping(value = "/confirm",method = RequestMethod.GET)

    //public String goodsDetail(@RequestParam("gid")long gid, Model model){
    public String orderConfirm(Model model, HttpServletRequest req, HttpServletResponse res){

        /*res.setHeader("P3P", "CP=CAO PSA OUR");
        res.addHeader("Access-Control-Allow-Origin", "*");*/
        /*String callback=req.getParameter("callbackparam");
        try {
            res.getWriter().write(callback+"");
        } catch (IOException e) {
            e.printStackTrace();
        }*/
       /* Goods goods = goodsService.findById(gid);
        model.addAttribute("goods",goods);*/
        return "confirm";
    }

    @RequestMapping("/address")
    //public String goodsDetail(@RequestParam("gid")long gid, Model model){
    public String address( Model model){

       /* Goods goods = goodsService.findById(gid);
        model.addAttribute("goods",goods);*/
        return "address";
    }

    @RequestMapping("/pay")
    //public String goodsDetail(@RequestParam("gid")long gid, Model model){
    public String orderPay( Model model){

       /* Goods goods = goodsService.findById(gid);
        model.addAttribute("goods",goods);*/
        return "pay";
    }

    @RequestMapping("/goPay")
    //public String goodsDetail(@RequestParam("gid")long gid, Model model){
    public String orderGoPay( Model model){

       /* Goods goods = goodsService.findById(gid);
        model.addAttribute("goods",goods);*/
        return "goPay";
    }
}
