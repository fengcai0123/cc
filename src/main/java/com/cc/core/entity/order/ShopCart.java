package com.cc.core.entity.order;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "ecs_cart")
public class ShopCart implements Serializable {

	private static final long serialVersionUID = 222929843264239190L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "rec_id", unique = true, nullable = false)
	private Long id;

	@Column(name = "user_id")
	private Long userId;

	@Column(name = "goods_id")
	private Long goodsId;

	@Column(name = "goods_sn")
	private String goodsSn;

	@Column(name = "goods_name")
	private String goodsName;

	@Column(name = "goods_number")
	private Integer goodsNumber;

	@Column(name = "goods_weight")
	private Double goodsWeight = 0.00;

	@Column(name = "goods_feature")
	private String goodsFeature;

	@Column(name = "is_checked")
	private Boolean isChecked = true;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Long goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsSn() {
		return goodsSn;
	}

	public void setGoodsSn(String goodsSn) {
		this.goodsSn = goodsSn;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public Integer getGoodsNumber() {
		return goodsNumber;
	}

	public void setGoodsNumber(Integer goodsNumber) {
		this.goodsNumber = goodsNumber;
	}

	public Double getGoodsWeight() {
		return goodsWeight;
	}

	public void setGoodsWeight(Double goodsWeight) {
		this.goodsWeight = goodsWeight;
	}

	public String getGoodsFeature() {
		return goodsFeature;
	}

	public void setGoodsFeature(String goodsFeature) {
		this.goodsFeature = goodsFeature;
	}

	public Boolean getIsChecked() {
		return isChecked;
	}

	public void setIsChecked(Boolean isChecked) {
		this.isChecked = isChecked;
	}

}
