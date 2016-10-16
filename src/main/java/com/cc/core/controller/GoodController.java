package com.cc.core.controller;

import com.cc.core.entity.good.Goods;
import com.cc.core.service.GoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/11.
 */
@Controller
@RequestMapping("/goods")
public class GoodController {
    @Autowired
    private GoodsService goodsService;

 /*   @RequestMapping("/helloWorld")
    public String helloWorld(Model model){

        model.addAttribute("message","hello world");
        return "index";
    }*/

    @RequestMapping("/list")

    public String goodList(Model model){
        /*long cateId=2;
        List<Goods> goodsList = goodsService.findListByCateId(cateId);*/
        List<Goods> goodsList = goodsService.findAll();
        model.addAttribute("goodsList",goodsList);
        return "goodsList";
    }
    @RequestMapping("/add")
    /*@Token(save = true)*/
    public String add(@RequestParam("categoryId")long categId, @RequestParam("name")String name,
                      @RequestParam("number")int number, @RequestParam("weight")double weight,
                      @RequestParam("marketPrice")double marketPrice, @RequestParam("shopPrice")double shopPrice,
                      @RequestParam("detailNumber")int detailNumber, @RequestParam("mainNumber")int mainNumber,
                      HttpServletRequest request, @RequestParam("file") MultipartFile file, Model model){

         /*文件上传begin*/
        if(!file.isEmpty()){
            try{
            String path=request.getContextPath()+"/jsp";
            String fileName=file.getOriginalFilename();

            String savePath=request.getSession().getServletContext().getRealPath("/assets/images/product/main/");
            File saveDir=new File(savePath);
            if(!saveDir.getParentFile().exists()) {
                saveDir.getParentFile().mkdir();
            }
                file.transferTo(saveDir);

            }catch(Exception e){
                e.printStackTrace();
                }

        }
        /*文件上传end*/

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
        if (String.valueOf(gid)==null){
            System.out.print("controller del gid为空");
        }
        if(String.valueOf(gid)!=null ){
            System.out.println("gid="+gid);
            goodsService.del(gid);
        }

        List<Goods> goodsList=goodsService.findAll();
        model.addAttribute("goodsList",goodsList);
        return "goodsList";
    }
}
