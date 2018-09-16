<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<html>
	<head>
		<title>Home</title>
	</head>
	<body>
	<form id="home" name="home" method="post" action="InGameForm">
		<h1>
			Hello world! asdfasdf 
		</h1>
		<P>  The time on the server is ${serverTime}. </P>
		<c:forEach var="names" items="${names}">
			${names}<br>
		</c:forEach>
		<input id="gid" name="gid" type="text"><button id="startbtn" type="submit">start</button>
	</form>
	</body>
</html>
