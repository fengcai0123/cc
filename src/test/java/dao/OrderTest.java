package dao;

import com.cc.core.dao.order.OrderGoodsDao;
import com.cc.core.entity.good.Category;
import com.cc.core.entity.order.OrderGoods;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

/**
 * Created by yonghuo.chen on 16/10/19.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath*:spring.xml")
public class OrderTest {
    @Autowired
    private OrderGoodsDao orderGoodsDao;
    @Test
    public void testFindOrderGoodsList(){
        List<OrderGoods> orderGoodsList= orderGoodsDao.selectByOrderIdAndUserId(92);
        for(int i=0;i<orderGoodsList.size();i++) {
            OrderGoods category=orderGoodsList.get(i);
            System.out.println("orderGoodsDaoTest:" +category.getGoodsName()+"  id="+category.getOrderId());
        }
    }

}
