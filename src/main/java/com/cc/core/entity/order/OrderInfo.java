package com.cc.core.entity.order;

import org.hibernate.annotations.Index;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "ecs_order_info")
public class OrderInfo implements Serializable {

	private static final long serialVersionUID = -2324764666548759817L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "order_id", unique = true, nullable = false)
	private Long id;

	@Column(name = "order_sn")
	@Index(name = "idx_order_info_sn")
	private String sn;

	@Column(name = "user_id")
	@Index(name = "idx_order_info_user_id")
	private Long userId;

	@Column(name = "order_status")
	private Integer status;

	@Column(name = "shipping_status")
	private Integer shippingStatus;

	@Column(name = "pay_status")
	private Integer payStatus;

	@Column(name = "consignee")
	private String consignee;

	@Column(name = "province")
	private Long province;

	@Column(name = "city")
	private Long city;

	@Column(name = "district")
	private Long district;

	@Column(name = "address")
	private String address;

	@Column(name = "mobile")
	private String mobile;

	@Column(name = "shipping_id")
	private Long shippingId;

	@Column(name = "shipping_name")
	private String shippingName;

	@Column(name = "inv_content")
	private String invContent;

	@Column(name = "goods_amount")
	private Double goodsAmount;

	@Column(name = "shipping_fee")
	private Double shippingFee;

	@Column(name = "integral")
	private Integer integral;

	@Column(name = "integral_money")
	private Double integralMoney;

	@Column(name = "order_amount")
	private Double orderAmount;

	/**
	 * 下单时间
	 */
	@Column(name = "add_time")
	private Date addTime;

	/**
	 * 客服确认时间
	 */
	@Column(name = "confirm_time")
	private Date confirmTime;

	/**
	 * 支付成功时间
	 */
	@Column(name = "pay_time")
	private Date payTime;

	/**
	 * 出库时间
	 */
	@Column(name = "shipping_time")
	private Date shippingTime;

	/**
	 * 包裹到达维修厂时间
	 */
	@Column(name = "partner_time")
	private Date partnerTime;

	/**
	 * 用户取货时间
	 */
	@Column(name = "pick_time")
	private Date pickTime;

	/**
	 * 订单完成时间
	 */
	@Column(name = "complete_time")
	private Date completeTime;

	/**
	 * 评论时间
	 */
	@Column(name = "comment_time")
	private Date commentTime;

	/**
	 * 取消时间
	 */
	@Column(name = "cancel_time")
	private Date cancelTime;


	@Column(name = "inv_type")
	private String invType;

	@Column(name = "discount")
	private Double discount;

	@Column(name = "partner_id")
	private Long partnerId;

	@Column(name = "password")
	private String password;

	@Column(name = "goods_number")
	private Integer goodsNumber;

	/**
	 * 支付方式
	 */
	@Column(name = "payment_type")
	private Integer paymentType;

	/**
	 * 银行代码
	 */
	@Column(name = "bank_code")
	private String bankCode;

	/**
	 * 实际支付银行代码
	 */
	@Column(name = "real_bank")
	private String realBank;

	/**
	 * 银行名称
	 */
	@Column(name = "bank_name")
	private String bankName;

	@Column(name = "user_coupon_id")
	private Long userCouponId;

	@Column(name = "coupon_amount")
	private Double couponAmount;

	@Column(name = "is_invoiced")
	private Boolean isInvoiced = false;

	/**
	 * 支付渠道/PC/APP
	 */
	@Column(name = "payment_channel")
	private String paymentChannel;

	@Column(name = "weight")
	private Double weight;

	@Column(name = "partner_settled")
	private Boolean partnerSettled = false;

	@Column(name = "partner_amount")
	private Double partnerAmount;

	@Column(name = "warehouse_amount")
	private Double warehouseAmount;

	@Column(name = "service_charge")
	private Double serviceCharge;

	@Column(name = "pay_for_partner")
	private Double payForPartner;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSn() {
		return sn;
	}

	public void setSn(String sn) {
		this.sn = sn;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getShippingStatus() {
		return shippingStatus;
	}

	public void setShippingStatus(Integer shippingStatus) {
		this.shippingStatus = shippingStatus;
	}

	public Integer getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(Integer payStatus) {
		this.payStatus = payStatus;
	}

	public String getConsignee() {
		return consignee;
	}

	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}

	public Long getProvince() {
		return province;
	}

	public void setProvince(Long province) {
		this.province = province;
	}

	public Long getCity() {
		return city;
	}

	public void setCity(Long city) {
		this.city = city;
	}

	public Long getDistrict() {
		return district;
	}

	public void setDistrict(Long district) {
		this.district = district;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Long getShippingId() {
		return shippingId;
	}

	public void setShippingId(Long shippingId) {
		this.shippingId = shippingId;
	}

	public String getShippingName() {
		return shippingName;
	}

	public void setShippingName(String shippingName) {
		this.shippingName = shippingName;
	}

	public String getInvContent() {
		return invContent;
	}

	public void setInvContent(String invContent) {
		this.invContent = invContent;
	}

	public Double getGoodsAmount() {
		return goodsAmount;
	}

	public void setGoodsAmount(Double goodsAmount) {
		this.goodsAmount = goodsAmount;
	}

	public Double getShippingFee() {
		return shippingFee;
	}

	public void setShippingFee(Double shippingFee) {
		this.shippingFee = shippingFee;
	}

	public Integer getIntegral() {
		return integral;
	}

	public void setIntegral(Integer integral) {
		this.integral = integral;
	}

	public Double getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(Double orderAmount) {
		this.orderAmount = orderAmount;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public Date getConfirmTime() {
		return confirmTime;
	}

	public void setConfirmTime(Date confirmTime) {
		this.confirmTime = confirmTime;
	}

	public Date getPayTime() {
		return payTime;
	}

	public void setPayTime(Date payTime) {
		this.payTime = payTime;
	}

	public Date getShippingTime() {
		return shippingTime;
	}

	public void setShippingTime(Date shippingTime) {
		this.shippingTime = shippingTime;
	}

	public String getInvType() {
		return invType;
	}

	public void setInvType(String invType) {
		this.invType = invType;
	}

	public Long getPartnerId() {
		return partnerId;
	}

	public void setPartnerId(Long partnerId) {
		this.partnerId = partnerId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Date getPartnerTime() {
		return partnerTime;
	}

	public void setPartnerTime(Date partnerTime) {
		this.partnerTime = partnerTime;
	}

	public Date getPickTime() {
		return pickTime;
	}

	public void setPickTime(Date pickTime) {
		this.pickTime = pickTime;
	}

	public Date getCompleteTime() {
		return completeTime;
	}

	public void setCompleteTime(Date completeTime) {
		this.completeTime = completeTime;
	}

	public Date getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	public Date getCancelTime() {
		return cancelTime;
	}

	public void setCancelTime(Date cancelTime) {
		this.cancelTime = cancelTime;
	}

	public Integer getGoodsNumber() {
		return goodsNumber;
	}

	public void setGoodsNumber(Integer goodsNumber) {
		this.goodsNumber = goodsNumber;
	}

	public Integer getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(Integer paymentType) {
		this.paymentType = paymentType;
	}

	public String getBankCode() {
		return bankCode;
	}

	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public Boolean getIsInvoiced() {
		return isInvoiced;
	}

	public void setIsInvoiced(Boolean invoiced) {
		isInvoiced = invoiced;
	}

	public Double getIntegralMoney() {
		return integralMoney;
	}

	public void setIntegralMoney(Double integralMoney) {
		this.integralMoney = integralMoney;
	}

	public String getRealBank() {
		return realBank;
	}

	public void setRealBank(String realBank) {
		this.realBank = realBank;
	}

	public Long getUserCouponId() {
		return userCouponId;
	}

	public void setUserCouponId(Long userCouponId) {
		this.userCouponId = userCouponId;
	}

	public Double getCouponAmount() {
		return couponAmount;
	}

	public void setCouponAmount(Double couponAmount) {
		this.couponAmount = couponAmount;
	}

	public String getPaymentChannel() {
		return paymentChannel;
	}

	public void setPaymentChannel(String paymentChannel) {
		this.paymentChannel = paymentChannel;
	}

	public Double getWeight() {
		return weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public Boolean getPartnerSettled() {
		return partnerSettled;
	}

	public void setPartnerSettled(Boolean partnerSettled) {
		this.partnerSettled = partnerSettled;
	}

	public Double getPartnerAmount() {
		return partnerAmount;
	}

	public void setPartnerAmount(Double partnerAmount) {
		this.partnerAmount = partnerAmount;
	}

	public Double getWarehouseAmount() {
		return warehouseAmount;
	}

	public void setWarehouseAmount(Double warehouseAmount) {
		this.warehouseAmount = warehouseAmount;
	}

	public Double getServiceCharge() {
		return serviceCharge;
	}

	public void setServiceCharge(Double serviceCharge) {
		this.serviceCharge = serviceCharge;
	}

	public Double getPayForPartner() {
		return payForPartner;
	}

	public void setPayForPartner(Double payForPartner) {
		this.payForPartner = payForPartner;
	}
}
