package com.cc.core.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import net.shangtech.framework.dao.BaseEntity;

@Entity
@Table(name = "ecs_goods_description")
public class GoodsDescription extends BaseEntity {

    private static final long serialVersionUID = -8090694547979046536L;

    @Column(name = "category_id")
    private Long categoryId;

    @Column(name = "goods_sn")
    private String goodsSn;

    @Column(name = "title")
    private String title;

    @Column(name = "content")
    private String content;

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }

    public String getGoodsSn() {
        return goodsSn;
    }

    public void setGoodsSn(String goodsSn) {
        this.goodsSn = goodsSn;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

}
