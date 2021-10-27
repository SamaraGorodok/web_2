<%@ page import="lab.Result" %><%--
  Created by IntelliJ IDEA.
  User: Fro
  Date: 12.10.2021
  Time: 18:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="MyBean" class="lab.MyBean" scope="session"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table id="Answer">

    <tr>
        <th>x</th>
        <th>y</th>
        <th>r</th>
        <th>Result</th>
        <th>Current Time</th>
        <th>Working Time</th>
    </tr>

    <c:forEach var="result" items="${MyBean.results}">
        <tr>
            <th>${result.x}</th>
            <th>${result.y}</th>
            <th>${result.r}</th>
            <th>${result.result}</th>
            <th>${result.currentTime}</th>
            <th>${result.workTime}</th>
        </tr>
    </c:forEach>
</table>
