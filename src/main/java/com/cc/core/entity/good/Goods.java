
package com.cc.core.entity.good;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ecs_goods")
public class Goods implements Serializable {

    private static final long serialVersionUID = 1298109171171844358L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "goods_id", unique = true, nullable = false)
    private Long id;

    /**
     * 车部位
     */
    @Column(name = "cat_id")
    private Long categoryId;

    /**
     * 商品编号
     */
    @Column(name = "goods_sn")
    private String sn;

    /**
     * 商品名称
     */
    @Column(name = "goods_name")
    private String name;

    @Column(name = "goods_number")
    private Integer number;

    /**
     * 商品重量
     */
    @Column(name = "goods_weight")
    private Double weight;

    /**
     *
     */
    @Column(name = "market_price")
    private Double marketPrice;

    @Column(name = "shop_price_1")
    private Double shopPrice1;

    @Column(name = "shop_price_2")
    private Double shopPrice2;

    @Column(name = "shop_price_3")
    private Double shopPrice3;

    @Column(name = "shop_price")
    private Double shopPrice;

    /**
     * 是否上架售卖
     */
    @Column(name = "is_on_sale")
    private Boolean isOnSale;

    /**
     * 信息是否审核
     */
    @Column(name = "is_audit")
    private Boolean isAudit;

    @Column(name = "add_time")
    private Date addTime;

    @Column(name = "sort_order")
    private Integer sortOrder;

    @Column(name = "comment_scores")
    private Double commentScores;

    @Column(name = "sell_num")
    private Integer sellNum;

    @Column(name = "goods_name_en")
    private String nameEn;

    @Column(name = "comment_num")
    private Integer commentNum;

    @Column(name = "original_code")
    private String originalCode;

    @Column(name = "detail_number")
    private Integer detailNumber;

    @Column(name = "main_number")
    private Integer mainNumber;

    @Column(name = "install_number")
    private Integer installNumber;

    @Column(name = "service_number")
    private Integer serviceNumber;

    @Column(name = "group_id")
    private Long groupId;

    @Column(name = "goods_feature")
    private String goodsFeature;

    @Column(name = "goods_group")
    private String goodsGroup;

    @Column(name = "offer_three_guarantees")
    private Boolean offerThreeGuarantees;

    @Column(name = "po_price")
    private Double poPrice;

    @Column(name = "po_price_with_tax")
    private Double poPriceWithTax;

    @Column(name = "sync")
    private Boolean sync;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Long categoryId) {
        this.categoryId = categoryId;
    }

    public String getSn() {
        return sn;
    }

    public void setSn(String sn) {
        this.sn = sn;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Double getWeight() {
        return weight;
    }

    public void setWeight(Double weight) {
        this.weight = weight;
    }

    public Double getMarketPrice() {
        return marketPrice;
    }

    public void setMarketPrice(Double marketPrice) {
        this.marketPrice = marketPrice;
    }

    public Double getShopPrice1() {
        return shopPrice1;
    }

    public void setShopPrice1(Double shopPrice1) {
        this.shopPrice1 = shopPrice1;
    }

    public Double getShopPrice2() {
        return shopPrice2;
    }

    public void setShopPrice2(Double shopPrice2) {
        this.shopPrice2 = shopPrice2;
    }

    public Double getShopPrice() {
        return shopPrice;
    }

    public void setShopPrice(Double shopPrice) {
        this.shopPrice = shopPrice;
    }

    public Boolean getIsOnSale() {
        return isOnSale;
    }

    public void setIsOnSale(Boolean isOnSale) {
        this.isOnSale = isOnSale;
    }

    public Date getAddTime() {
        return addTime;
    }

    public void setAddTime(Date addTime) {
        this.addTime = addTime;
    }

    public Integer getSortOrder() {
        return sortOrder;
    }

    public void setSortOrder(Integer sortOrder) {
        this.sortOrder = sortOrder;
    }

    public Double getCommentScores() {
        return commentScores;
    }

    public void setCommentScores(Double commentScores) {
        this.commentScores = commentScores;
    }

    public Integer getSellNum() {
        return sellNum;
    }

    public void setSellNum(Integer sellNum) {
        this.sellNum = sellNum;
    }

    public String getNameEn() {
        return nameEn;
    }

    public void setNameEn(String nameEn) {
        this.nameEn = nameEn;
    }

    public Integer getCommentNum() {
        return commentNum;
    }

    public void setCommentNum(Integer commentNum) {
        this.commentNum = commentNum;
    }

    public Double getShopPrice3() {
        return shopPrice3;
    }

    public void setShopPrice3(Double shopPrice3) {
        this.shopPrice3 = shopPrice3;
    }

    public String getOriginalCode() {
        return originalCode;
    }

    public void setOriginalCode(String originalCode) {
        this.originalCode = originalCode;
    }

    public Integer getDetailNumber() {
        return detailNumber;
    }

    public void setDetailNumber(Integer detailNumber) {
        this.detailNumber = detailNumber;
    }

    public Integer getMainNumber() {
        return mainNumber;
    }

    public void setMainNumber(Integer mainNumber) {
        this.mainNumber = mainNumber;
    }

    public Integer getInstallNumber() {
        return installNumber;
    }

    public void setInstallNumber(Integer installNumber) {
        this.installNumber = installNumber;
    }

    public Integer getServiceNumber() {
        return serviceNumber;
    }

    public void setServiceNumber(Integer serviceNumber) {
        this.serviceNumber = serviceNumber;
    }

    public Long getGroupId() {
        return groupId;
    }

    public void setGroupId(Long groupId) {
        this.groupId = groupId;
    }

    public String getGoodsFeature() {
        return goodsFeature;
    }

    public void setGoodsFeature(String goodsFeature) {
        this.goodsFeature = goodsFeature;
    }

    public String getGoodsGroup() {
        return goodsGroup;
    }

    public void setGoodsGroup(String goodsGroup) {
        this.goodsGroup = goodsGroup;
    }

    public Boolean getIsAudit() {
        return isAudit;
    }

    public void setIsAudit(Boolean isAudit) {
        this.isAudit = isAudit;
    }

    public Boolean getOfferThreeGuarantees() {
        return offerThreeGuarantees;
    }

    public void setOfferThreeGuarantees(Boolean offerThreeGuarantees) {
        this.offerThreeGuarantees = offerThreeGuarantees;
    }

    public Double getPoPrice() {
        return poPrice;
    }

    public void setPoPrice(Double poPrice) {
        this.poPrice = poPrice;
    }

    public Double getPoPriceWithTax() {
        return poPriceWithTax;
    }

    public void setPoPriceWithTax(Double poPriceWithTax) {
        this.poPriceWithTax = poPriceWithTax;
    }

    public Boolean getSync() {
        return sync;
    }

    public void setSync(Boolean sync) {
        this.sync = sync;
    }
}
