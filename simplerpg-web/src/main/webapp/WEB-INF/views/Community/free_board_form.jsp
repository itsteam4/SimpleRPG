<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	
</head>
<body>
		<div class="row" style="text-align: center;margin-top: 50px">
				<div class="col-md-12">
					<h1>자유 게시판</h1>
				</div>
		</div>
		<div class="row" style="margin-top: 50px;text-align: center">
			<div class="col-md-1"></div>
			<div class="col-md-12">
				<table class="table table-hover">
					<thead>
						<tr>
							<th width="150" scope="col">번호</th>
							<th width="150" scope="col">작성자</th>
							<th width="300" scope="col">제목</th>
							<th width="150" scope="col">작성일자</th>
							<th width="150" scope="col">조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>11</td>
							<td>kjw671</td>
							<td>예비군 가기 싫다</td>
							<td>2018-09-10</td>
							<td>32</td>
						</tr>
						<tr>
							<td>12</td>
							<td>qwert4932</td>
							<td>좀만 참아</td>
							<td>2018-09-10</td>
							<td>120</td>
						</tr>
					</tbody>
				</table>
				</div>
				<div class="col-md-1"></div>
			</div>
			<div class="row" style="margin-top: 50px">
			<div class="col-md-1"></div>
			<div class="col-md-10">
				<div class="input-group">
					<input type="text" id="freeboardSearch">
					<button type="button" class="btn btn-primary">검색</button>
				</div>
			</div>

				<div class="col-md-1">
				<c:if test="${sessionid != null}">
					<button type="button" id="freeboardButtons" class="btn btn-dark">글쓰기</button>
				</c:if>	
				</div>
		</div>
			
</body>
</html>