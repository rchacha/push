<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- 

<%@ %>: 디렉티브 => 대부분 자동으로 만들어짐, 설정에 관한 정보
<%! %>: 선언부 => 사용하는 경우 드뭄, 
					프로그램에서 사용할 변수나 메소드를 정의, java로 대체
<%= %>: 표현식 => 변수에 저장된 결과나 연산 결과를 출력
					EL(${ ~}) 로 대체
<%  %>: 스크립트릿 => 일반적인 jsp 코드, jstl 로 대체

--%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>뭔가를 쓰면</title>
</head>
<body>
	<!--
html은 spacebar 를 여러번 입력해도 1칸밖에 떨어지지 않고 enter 키를 여러번 눌러도
줄이 변경되지 않는다.
2칸이상 연속해서 띄우려면 &nbsp; 를 띄우려는 갯수만큼
여러줄 띄우려면 <br> 을 줄바꿈 갯수만큼
입력한다.
  -->
	myInfo.jsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;입니다.
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>반갑습니다.

	<%
	out.println("출력할 내용<br>");
	out.println("출력할 내용");
	out.println("출력할 내용<br>");
	out.println("출력할 내용");
	out.println("출력할 내용<br>");

	out.println(application.getRealPath("/"));
	%>

	<!-- 
	현재 페이지에 입력한 데이터를 특정 페이지로 전송하려면
	 전송할 데이터를 입력하는 코드를 
	 <form> ~ </form> 사이에 작성해야 한다.
	 action 속성 :  전송(type="submit") 버튼이 클릭되면 
	 				form 에 입력한 데이터를 가지고 넘어갈 jsp 페이지 이름을 쓴다.
	 				아무것도 안쓰거나 "?" 만 입력하면 현재 페이지를 요청한다.
	 				
	 method 속성 : action 페이지로 데이터가 전송될 때
	  				정보가 url(주소) 창에 표시되는 여부를 지정한다.
	  				method 속성의 기본값은 "get"이고 
	  				"get" 방식은 전송되는 데이터가 url 창에 표시되고
	  				"post" 로 변경하면 url 창에 표시되지 않는다. 
	 -->

	<form action="myInfoOK.jsp" method="post">
		<label> 이름: <input type="text" name="name1">
		</label> <br> <label> 아이디: <input type="text" name="id">
		</label> <br> <label> 비번: <input type="password" name="pw">
		</label> <br> <label> 나이: <input type="text" name="age">
		</label> <br>

		<fieldset style="width: 120px">
			<legend>성별</legend>
			<input type="radio" name="gender" checked="checked" value="true">남자
			<input type="radio" name="gender" checked="checked" value="false">여자
		</fieldset>

		<fieldset style="width: 200px">
			<legend>취미</legend>
			<input type="checkbox" name="hobbies" value="등산">등산 <input
				type="checkbox" name="hobbies" value="바둑">바둑 <input
				type="checkbox" name="hobbies" value="날씨">날씨
		</fieldset>

		<!-- 콤보 -->
		<select name="trip" style="width: 200px; height: 30px">
			<option>괌</option>
			<option selected="selected">코타키나 발루</option>
			<option>하와이</option>
			<option>제주도</option>
		</select>
<br><br>

		<!-- 목록  -->
		<select name="travel" style="width: 200px;" multiple="multiple" size="7">
			<option>괌</option>
			<option>코타키나 발루</option>
			<option>하와이</option>
			<option>제주도</option>
			<option>로마</option>
			<option>파리</option>
			<option>뉴욕</option>
			<option>푸꾸옥</option>
		</select>
		
<br><br>		
		<!-- 메모  -->
		<!--가능/불가능 태그사용 줄바꿈   -->
		<textarea rows="10" cols="60" name="content" style="resize: none"></textarea>
		
		 <br><br>
		  <input type="submit" value="정보보기"> <input
			type="reset" value="다시쓰기"> <input type="button" value="그냥버튼"
			onclick="alert('꺄~!~!~!~!@~!#~!#')"> <br>
		<button type="submit">정보보기</button>
		<button type="reset">다시쓰기</button>
		<button type="button" onclick="alert('뭐라카노~!@3')">그냥버튼</button>

	</form>

</body>
</html>