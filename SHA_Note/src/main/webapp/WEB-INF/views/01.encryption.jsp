<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>Encryption</title>			
		
		<link rel="stylesheet" href="/css/bootstrap.css">		
	</head>
	
	
	<body>
		<br>
		<div align="center">
			<h2>암호화 결과</h2><hr/>
			<br>
			입력값 : ${plain} <br>
			암호화 결과 : ${cipher }<br><hr/>
			<br>
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