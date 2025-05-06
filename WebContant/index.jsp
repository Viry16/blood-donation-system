<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>Blood Donation Management</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>

<jsp:include page="header.jsp" />

<div class="container">
  <h2>Welcome to the Blood Donation System</h2>
  <p><a href="registerDonor.jsp">Register as Donor</a> | <a href="registerRequester.jsp">Register as Requester</a> | <a href="availability.jsp">Check Availability</a></p>
</div>

<jsp:include page="footer.jsp" />

</body>
</html>
