package com.cc.core.common;

import java.lang.annotation.*;

/**
 * Created by yonghuo.chen on 16/11/14.
 */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Token {
    boolean save() default false;

    boolean remove() default false;
}
