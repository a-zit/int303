<%-- 
    Document   : ProductCard
    Created on : Apr 5, 2018, 10:59:11 AM
    Author     : INT303
--%>
<%@taglib uri="/WEB-INF/tlds/MyFunction.tld" prefix="mf" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@tag body-content="empty" %>
<%@attribute name="product" required="true" rtexprvalue="true" type="sit.int303.demo.model.Product" %>
<div class="col-md-3">
    <div class="thumbnail">
        <a href="GetDataFromProduct?productCode=${product.productcode}">
            <img class="img-thumbnail"  src="${mf:getImageFileName(product.productline.productline, product.productcode)}" title="${product.productcode}"/>
        </a>
        <div class="caption">
            <p><a href="AddItemToCart?item=${product.productcode}"><img src="cart.png" height="16"/></a> 
                ${product.productname}  <br> ${product.productscale} -  ${product.msrp} $US </p>
        </div>
    </div>
</div>