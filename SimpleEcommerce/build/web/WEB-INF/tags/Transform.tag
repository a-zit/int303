<%-- 
    Document   : Transform
    Created on : Apr 5, 2018, 10:29:09 AM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="i don't know" pageEncoding="UTF-8"%>
<%@tag body-content="scriptless" %>
<%@attribute name="mode" required="true"  type="java.lang.String" rtexprvalue="true"%>
<%@attribute name="color" rtexprvalue="true" type="java.lang.String" %>

<c:choose>
    <c:when test="${mode=='upper'}">
        <p style="color: ${color};text-transform: uppercase">
            <jsp:doBody/>
        </p>
    </c:when>
    <c:when test="${mode=='lower'}">
        <p style="color: ${color};text-transform: lowercase">
            <jsp:doBody/>
        </p>
    </c:when>
    <c:when test="${mode=='hide'}">
    </c:when>
    <c:otherwise>
        <p style="color: red">
            ERROR !!! invalid mode !!!
        </p>
    </c:otherwise>
</c:choose>
