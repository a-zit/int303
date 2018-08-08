<%-- 
    Document   : SimplyStat
    Created on : Apr 5, 2018, 11:32:11 AM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>
<%@tag  body-content="scriptless" %>
<%@attribute name="items" required="true" rtexprvalue="true" type="int[]"%>
<%@variable name-given="min" scope="NESTED" variable-class="java.lang.Integer" %>
<%@variable name-given="max" scope="AT_BEGIN" variable-class="java.lang.Integer" %>
<%@variable name-given="avg" scope="AT_END" variable-class="java.lang.Double" %>
<c:set var="min" value="${items[0]}" />
<c:set var="max" value="${items[0]}" />
<c:set var="sum" value="${0.0}" />
<c:forEach items="${items}" var="number" varStatus="vs">
    <c:set var="sum" value="${sum + number}" />
    <c:set var="min" value="${number < min ? number : min}" />
    <c:set var="max" value="${number > max ? number : max}" />
    <c:set var="count" value="${vs.count}" />
</c:forEach>
<c:set var="avg" value="${sum/count}" />
<jsp:doBody/>
