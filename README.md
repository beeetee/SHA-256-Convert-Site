# SHA-256-Convert-Site

### 프로젝트 소개 

본 프로젝트는 입력한 비밀번호에 SHA-256 알고리즘을 적용한 결과값을 반환시켜주는 목적으로 만들어졌으며 
암호화 기능뿐만 아니라, 데이터베이스를 활용하여 암호화된 값의 평문 값을 반환시켜 주는 기능도 존재한다.
단, 암호화된 기록이 없다면, 암호화된 값을 입력해도 반환값이 없을 수 있다.


### 사용 환경 
Windows10 x64기반, Java 1.8.0 version,  Eclipse, Spring boot 2.3.2, jsp, 
MariaDB 10.2

## 실행 방법

#### Java, Eclipse 설치
[Oracle JDK 8 (Java 1.8.0 version) 설치 ](https://www.oracle.com/java/technologies/javase-jdk8-downloads.html)
> 환경변수 설정 필요 

[Eclipse  설치]([https://www.eclipse.org/downloads/download.php?file=/oomph/epp/2019-12/R/eclipse-inst-win64.exe) 
> (Mirror Korea, Republic Of - [Daum Kakao Corp.])

#### Eclipse STS 설치
Eclipse Marketplace에서 STS 검색하면 맨 위에 나오는 **Spring Tools 3 Add-On for Spring Tools 4** 
** Spring Tools 4 (aka Spring Tool Suite 4) 4.5.1RELEASE** 다운로드

#### MariaDB 설치
[MariaDB 10.2 version 설치](https://downloads.mariadb.org/mariadb/10.2.31/)
MariaDB 10.2.31 Stable 의 64bit msi 파일 다운로드 
> 해당 프로젝트의 Maria DB root 계정 비밀번호 :  **1234**

만약 비밀번호를 다른 것으로 설정하고 싶다면 SHA_Note/src/main/resources/application.properties 의  **spring.datasource.password** 를 자신의 비밀번호로 변경해야 한다.

[참고 사이트](https://javaplant.tistory.com/31)



#### lombok 설치
[eclipse lombok 설치 참고 사이트](https://dev114.tistory.com/369)
> 설치 후 이클립스 재부팅 후 Maven Update 필요 

#### HeidiSQL
MySQL Client 
> create database sha_note
HeidiSQL을 실행 후 sha_note 데이터베이스 선택
 [파일]-> [SQL 파일 실행] 클릭 후 DB 폴더에 있는 sha_note.sql 파일 선택 후 실행 
 
 #### 서버 구동
 > 이클립스의 프로젝트 폴더에서 Run As - Spring Boot App으로 실행
 > localhost:8080으로 접속
