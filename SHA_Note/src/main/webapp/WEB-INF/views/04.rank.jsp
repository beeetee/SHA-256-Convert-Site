<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Ranking</title>
		<link rel="stylesheet" href="/css/bootstrap.css">
	</head>
	
	<body>	
		<br>		
		<div align="center">
			<h2>Ranking</h2><hr/>
		
		<br><br>

		<table class="table table-striped">
			<thead>
				<tr>
					<th>평문 비밀번호</th>
					<th>빈도 수</th>
					<th>생성된 날짜</th>
					<th>최근 추가된 날짜</th>
					<th>암호화 알고리즘 적용 결과</th>
				</tr>
			</thead>
		
			<tbody>
				<c:forEach var="item" items="${passwords}">
				<tr>
					<td>${item.password }</td>
					<td>${item.count }</td>
					<td>${item.createTime }</td>
					<td>${item.updateTime }</td>
					<td>${item.encryptionPassword}</td>
				</tr>
				</c:forEach>
			</tbody>
		
		</table>

		<form method="get">
            <button class="btn btn-primary" formaction="<% request.getContextPath(); %>/">Main</button>
        </form>
		</div>
		
		
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="/js/bootstrap.js"></script>
	</body>
</html>