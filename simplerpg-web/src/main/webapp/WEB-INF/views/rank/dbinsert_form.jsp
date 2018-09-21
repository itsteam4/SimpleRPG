<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>          
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<form action="ranktestInsert" method="post">
	<div>
		
		
	</div>
	<div>
				<table class="table">
				
					    <thead>
					      <tr>
					        <th>memberID</th>
					      </tr>
					    </thead>
					    <tbody>
					    <c:forEach var="members" items="${members}">
						      <tr>
						      	 <td> <a href="rankTest?id=${members.id}">${members.id}</a></td>
						      </tr>
					      </c:forEach>
				      
				    </tbody>
				  </table>
		</div>
	<div>
		number <input type="text" name="number"><p>
		str1 <input type="text" name="str1"><p>
		<textarea class="form-control" rows="3" name="str2" ></textarea><p>
		<button type="submit">submit</button>
		<button type="button">cancel</button>
	</div>
</form>
</body>
</html>