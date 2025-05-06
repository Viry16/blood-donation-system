<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Register as Requester</title>
  <link rel="stylesheet" href="css/style.css">
</head>
<body>
<jsp:include page="header.jsp" />

<div class="form-container">
  <h2>Register as Donor</h2>
  <form action="RequesterServlet" method="post">
    <input type="text" name="name" placeholder="Full Name" required>
    <input type="email" name="email" placeholder="Email" required>
    <input type="text" name="phone" placeholder="Phone" required>
    <select name="bloodType" required>
      <option value="">Choose Blood Type</option>
      <option>A+</option><option>A-</option>
      <option>B+</option><option>B-</option>
      <option>AB+</option><option>AB-</option>
      <option>O+</option><option>O-</option>
    </select>
    <button type="submit">Register</button>
  </form>
</div>

<jsp:include page="footer.jsp" />
</body>
</html>
