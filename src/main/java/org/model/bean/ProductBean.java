package org.model.bean;

public class ProductBean {
private String prodid,prodname,remarks,image;
private int quantity;
private double price;
public String getProdid() {
	return prodid;
}
public void setProdid(String prodid) {
	this.prodid = prodid;
}
public String getProdname() {
	return prodname;
}
public void setProdname(String prodname) {
	this.prodname = prodname;
}
public String getRemarks() {
	return remarks;
}
public void setRemarks(String remarks) {
	this.remarks = remarks;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}

}
