<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
				
		<title>Convert Result</title>
		
		<link rel="stylesheet" href="/css/bootstrap.css">	
	</head>
	
	<body>
		<br>
		<div align="center">
			<h2>알 수 없는 해시값입니다.</h2><hr/>
			<br>
			입력값 : ${cipher} <br><br>
			<hr/>

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