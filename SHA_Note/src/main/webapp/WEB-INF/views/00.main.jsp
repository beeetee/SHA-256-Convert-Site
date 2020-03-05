<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <meta charset="UTF-8"/>

		<title>Convert Password</title>
       
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    </head>

    <body>
        <div align="center">
            <h2>변환할 패스워드를 입력하세요</h2><hr/>
            <h4>입력한 평문 비밀번호에 SHA-256 알고리즘을 적용한 값은 암호화 버튼 클릭</h4>
            <h4>입력한 SHA-256 알고리즘을 적용한 값의 평문 비밀번호는 복호화 버튼 클릭</h4>
			<form method="post">
				<textarea rows="10" cols="50" name="data" placeholder="값을 입력하세요" required></textarea><br/><br/>
           		<button class="btn btn-primary" formaction="encryption">암호화</button>
            	<button class="btn btn-primary" formaction="decryption">복호화</button>
            </form>
            <br>
            <form method="get">
            	<button class="btn btn-primary" formaction="rank">Ranking</button>
            </form>
            
            
        </div>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="/js/bootstrap.js"></script>
    </body>

    

</html>