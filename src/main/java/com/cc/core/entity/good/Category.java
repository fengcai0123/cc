package com.cc.core.entity.good;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "ecs_category")
public class Category implements Serializable {

	private static final long serialVersionUID = -1715858469650006951L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "cat_id", unique = true, nullable = false)
	private Long id;

	@Column(name = "cat_name")
	private String name;

	@Column(name = "keywords")
	private String keywords;

	@Column(name = "cat_desc")
	private String description;

	@Column(name = "cat_title")
	private String title;

	@Column(name = "parent_id")
	private Long parentId;

	@Column(name = "sort_order")
	private Integer sortOrder;

	@Column(name = "show_in_nav")
	private Boolean showInNav;

	@Column(name = "image")
	private String image;

	@Column(name = "code")
	private String code;

	@Column(name = "en_name")
	private String enName;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public Integer getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(Integer sortOrder) {
		this.sortOrder = sortOrder;
	}

	public Boolean getShowInNav() {
		return showInNav;
	}

	public void setShowInNav(Boolean showInNav) {
		this.showInNav = showInNav;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getEnName() {
		return enName;
	}

	public void setEnName(String enName) {
		this.enName = enName;
	}

}
