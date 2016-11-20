package com.cc.core.common;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by fengcai0123 on 2016/11/20.
 */
public class GetNowTime {
 public   String nowTime() {
        Date date = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        String nowTime = dateFormat.format(date);
       return nowTime;
    }
}
