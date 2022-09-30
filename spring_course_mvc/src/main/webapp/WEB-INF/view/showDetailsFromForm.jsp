<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
<body>
<h2>Dear employee, you are WELCOME!!!</h2>

<br><br>
<%--here worked getters--%>
Your name: ${employee.name}
<br>
Your surname: ${employee.surname}
<br>
Your phone number: ${employee.phoneNumber}
<br>
Your email: ${employee.email}
<br>
Your salary: ${employee.salary}
<br>
Your department: ${employee.department}
<br>
Your car: ${employee.carBrand}
<br>
Language(s):
<ul>
<%--    it's loop foreach. outpyt strings from array employee.languages--%>
    <c:forEach var="lang" items="${employee.languages}">
        <li>${lang}</li>
    </c:forEach>
</ul>

</body>
</html>