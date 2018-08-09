/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first;

import sit.int303.mockup.model.Product;

/**
 *
 * @author INT303
 */
class LineItem {
    Product product;
    double salePrices;
    int quantity;

    public LineItem() {
    }

    public LineItem(Product product) {
        this(product,1);
    }

    public LineItem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
        this.salePrices = product.getMsrp();
    }
    
    public double getTotalPrice(){
        return this.quantity*this.salePrices;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public double getSalePrices() {
        return salePrices;
    }

    public void setSalePrices(double salePrices) {
        this.salePrices = salePrices;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
}
