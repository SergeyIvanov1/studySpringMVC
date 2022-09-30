<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
<body>
<h2>Dear employee, please enter your details.</h2>
<br>
<br>

<form:form action="showForm" modelAttribute="employee">

    <%--    here worked getters for each form and fields filling of default values--%>
    Name <form:input path="name"/>
    <form:errors path="name"/>

    <br><br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>

    <br><br>
    Phone number: <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>

    <br><br>
    Email: <form:input path="email"/>
    <form:errors path="email"/>

    <br><br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>

    <br><br>
    Department <form:select path="department">

<%--    for assaign field "department" we can use form:option (hurd cord variant)--%>

<%--    <form:option value="Information Tehnology" label="IT"/>--%>
<%--    <form:option value="Human Resourses" label="HR"/>--%>
<%--    <form:option value="Sales" label="Sales"/>--%>

<%--    or we can use Map - form:optionS--%>

    <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>

    Which car do you want?
<%--    follow hurd code style--%>
<%--    BMW <form:radiobutton path="carBrand" value="BMW"/>--%>
<%--    Audi <form:radiobutton path="carBrand" value="Audi"/>--%>
<%--    MB <form:radiobutton path="carBrand" value="Mersedes-Benz"/>--%>

<%--    but you can use Map--%>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>

    <br><br>
    Foreign language(s)
<%--    hurdcode variant--%>
<%--    EN <form:checkbox path="languages" value="English"/>--%>
<%--    FR <form:checkbox path="languages" value="French"/>--%>
<%--    DE <form:checkbox path="languages" value="Deutch"/>--%>

    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>
    <input type="submit" value="OK">
    <%--    after use button "OK" worked setters for each form and fields filling values from form--%>
</form:form>

</body>
</html>
