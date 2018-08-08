<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row">
    <div class="col-sm-1 col-lg-1"></div>
    <div class="col-sm-10 col-lg-10">
        <div class="row">
            <div class="col-lg-2">
                <a href="index.jsp" title="Goto Home page"><img src="logo.jpg" height="90"/></a>
            </div>
            <div class="col-lg-8"  style="vertical-align: middle;">
                <br>
                <h2>${param.title} ::</h2>
            </div>
            <div class="col-lg-2 align-bottom align-text-bottom" style="text-align: center">
                <a href="${user!=null ? 'Logout' : 'Login'}" title="${user!=null ? 'Logout' : 'Log in'}">
                    <img  src="user.jpg" width="20">
                </a>
                <br>
                Welcome ${sessionScope.user==null ? 'Guest !' : user.customername}
                <br>
                <c:if test="${shoppingCart.size > 0}">
                    <a href="ViewCart" title="View Your Cart">
                        <img  src="cart.png" width="20">
                    </a>
                    (${shoppingCart.size})
                </c:if>
            </div>
        </div>
    </div>
    <div class="col-sm-1 col-lg-1"></div>
</div>
