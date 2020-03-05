<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>		
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
				
		<title>Decryption</title>			
		
		<link rel="stylesheet" href="/css/bootstrap.css">	
	</head>
	
	
	<body>
		<br>
		<div align="center">
			<h2>복호화 결과</h2><hr/>
			<br>
			입력값 : ${cipher} <br><hr/>
			<c:forEach var="item" items="${plains}">
				평문 값: ${item} <br>
			</c:forEach>		
			<br><br>
			<form method="get">
          		<button class="btn btn-primary" formaction="<% request.getContextPath(); %>/">Main</button>
          		<button class="btn btn-primary" formaction="<% request.getContextPath(); %>/rank">Ranking</button>
        	</form>	
		</div>
		
		<br><br>
		
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="/js/bootstrap.js"></script>

	</body>
</html>