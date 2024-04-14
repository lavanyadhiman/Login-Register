<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="welcomeStyle.css">
</head>

<body>
	<%
	// Retrieve the session object
	HttpSession session1 = request.getSession(false);

	// Check if the session is not null and the username attribute is set
	if (session1 != null && session1.getAttribute("username") != null) {
		// Get the username from the session
		String username = (String) session1.getAttribute("username");
	%>

	<div class="container">
		<h1>
			Welcome,
			<%=username%>!
		</h1>
		<p>We're delighted to have you here! 🌟</p>
		<h3>Explore, learn, and connect with our vibrant community! </h3>
		<p>Feel free to stay as long as you like, and when you're ready,</p>
		you can <a href="logout.jsp" class="btn btn-outline-dark" role="button">LOGOUT </a>
 securely.
	</div>

	<%
	} else {
	// Redirect to the login page if the session is not valid
	response.sendRedirect("login.jsp");
	}
	%>


</body>
</html>