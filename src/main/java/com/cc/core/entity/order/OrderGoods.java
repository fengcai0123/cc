package com.cc.core.entity.order;

import org.hibernate.annotations.Index;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "ecs_order_goods")
public class OrderGoods implements Serializable {

	private static final long serialVersionUID = -927543658647541856L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "rec_id", unique = true, nullable = false)
	private Long id;

	@Column(name = "order_id")
	@Index(name = "order_goods_order_id")
	private Long orderId;

	@Column(name = "goods_id")
	private Long goodsId;

	@Column(name = "goods_name")
	private String goodsName;

	@Column(name = "goods_sn")
	private String goodsSn;

	@Column(name = "product_id")
	private Long productId;

	@Column(name = "goods_number")
	private Integer goodsNumber;

	@Column(name = "market_price")
	private Double marketPrice;

	@Column(name = "goods_price")
	private Double goodsPrice;

	@Column(name = "goods_attr")
	private String goodsAttr;

	@Column(name = "send_number")
	private Integer sendNumber;

	@Column(name = "is_real")
	private Boolean isReal;

	@Column(name = "extension_code")
	private String extensionCode;

	@Column(name = "parent_id")
	private Long parentId;

	@Column(name = "is_gift")
	private Boolean isGift;

	@Column(name = "goods_attr_id")
	private Long goodsAttrId;

	@Column(name = "inventory_source")
	private String inventorySource;

	@Column(name = "warehouse_id")
	private Long warehouseId;

	@Column(name = "partner_id")
	private Long partnerId;

	@Column(name = "comment_id")
	private Long commentId ;

	@Column(name = "goods_weight")
	private Double goodsWeight;

	@Column(name = "exchange_number")
	private Integer exchangeNumber = 0;

	@Column(name = "goods_feature")
	private String goodsFeature;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public Long getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(Long goodsId) {
		this.goodsId = goodsId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsSn() {
		return goodsSn;
	}

	public void setGoodsSn(String goodsSn) {
		this.goodsSn = goodsSn;
	}

	public Long getProductId() {
		return productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public Integer getGoodsNumber() {
		return goodsNumber;
	}

	public void setGoodsNumber(Integer goodsNumber) {
		this.goodsNumber = goodsNumber;
	}

	public Double getMarketPrice() {
		return marketPrice;
	}

	public void setMarketPrice(Double marketPrice) {
		this.marketPrice = marketPrice;
	}

	public Double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(Double goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public String getGoodsAttr() {
		return goodsAttr;
	}

	public void setGoodsAttr(String goodsAttr) {
		this.goodsAttr = goodsAttr;
	}

	public Integer getSendNumber() {
		return sendNumber;
	}

	public void setSendNumber(Integer sendNumber) {
		this.sendNumber = sendNumber;
	}

	public Boolean getIsReal() {
		return isReal;
	}

	public void setIsReal(Boolean isReal) {
		this.isReal = isReal;
	}

	public String getExtensionCode() {
		return extensionCode;
	}

	public void setExtensionCode(String extensionCode) {
		this.extensionCode = extensionCode;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public Boolean getIsGift() {
		return isGift;
	}

	public void setIsGift(Boolean isGift) {
		this.isGift = isGift;
	}

	public Long getGoodsAttrId() {
		return goodsAttrId;
	}

	public void setGoodsAttrId(Long goodsAttrId) {
		this.goodsAttrId = goodsAttrId;
	}

	public String getInventorySource() {
		return inventorySource;
	}

	public void setInventorySource(String inventorySource) {
		this.inventorySource = inventorySource;
	}

	public Long getWarehouseId() {
		return warehouseId;
	}

	public void setWarehouseId(Long warehouseId) {
		this.warehouseId = warehouseId;
	}

	public Long getCommentId() {
		return commentId;
	}

	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}

	public Double getGoodsWeight() {
		return goodsWeight;
	}

	public void setGoodsWeight(Double goodsWeight) {
		this.goodsWeight = goodsWeight;
	}

	public Integer getExchangeNumber() {
		return exchangeNumber;
	}

	public void setExchangeNumber(Integer exchangeNumber) {
		this.exchangeNumber = exchangeNumber;
	}

	public Long getPartnerId() {
		return partnerId;
	}

	public void setPartnerId(Long partnerId) {
		this.partnerId = partnerId;
	}

	public String getGoodsFeature() {
		return goodsFeature;
	}

	public void setGoodsFeature(String goodsFeature) {
		this.goodsFeature = goodsFeature;
	}

}
