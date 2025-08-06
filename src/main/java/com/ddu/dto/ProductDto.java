package com.ddu.dto;

public class ProductDto {

	private String productType;
	private String productColor;
	private String productQuantity;
	public ProductDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductDto(String productType, String productColor, String productQuantity) {
		super();
		this.productType = productType;
		this.productColor = productColor;
		this.productQuantity = productQuantity;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductColor() {
		return productColor;
	}
	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}
	public String getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(String productQuantity) {
		this.productQuantity = productQuantity;
	}
	
	
	
}
