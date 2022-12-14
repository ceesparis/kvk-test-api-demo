<%@ page import="com.example.kvkpliegerdemo3.form.RegistrationForm" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: cees
  Date: 17/10/2022
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Account</title>
    <link rel="stylesheet" href="../../resources/css/registrypage.css" type="text/css">
    <link rel="stylesheet" href="../../resources/css/index.css" type="text/css">
    <script type="text/javascript" src="../../resources/javascript/formatJson.js"></script>
</head>
<body>
<h1>Register Your Company</h1>
<div>
<%--@elvariable id="RegistrationForm" type="com.example.kvkpliegerdemo3.form.RegistrationForm"--%>
    <c:set var="resultPresent" value="${json != null}"/>
    <c:if test="${resultPresent}">
        <div class="card" id='json-card'>
            <h4 class="json-request">Request:</h4>
            <p class="json-request" id="json-request-url">${request}</p>
            <h4>Response:</h4>
            <div id="json-card-response">
            </div>
            <script>
                formatJson(${json})
            </script>
        </div>
    </c:if>
<form:form action="register" method="post" modelAttribute="RegistrationForm">
    <div id="account-form" class="card">
        <div class="form-field">
            <label>Email</label>
            <input name="email" type="text" placeholder="${errorMessageEmail}" value="${form.getEmail()}">
        </div>
        <div class="form-field">
            <label>Password</label>
            <input name="password" type="password" placeholder="${errorMessagePassword}" value="${form.getPassword()}">
        </div>
        <div class="form-field">
            <label>Company Name</label>
            <input name="companyName" type="text" value="${form.getCompanyName()}">
        </div>
        <div class="form-field">
            <label>Kvk Number</label>
            <input name="kvkNumber" type="text" value="${form.getKvkNumber()}">
        </div>
        <div class="form-field">
            <label>Location</label>
            <input name="location" type="text" value="${form.getLocation()}">
        </div>
        <button type="submit">create new account</button>
    </div>
</form:form>
</div>
</body>
</html>
