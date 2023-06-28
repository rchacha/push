<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	myInfoOK.jsp 입니다.
	<br>

	<%
	//form 에 입력된 하늘 데이터가 post 방식으로 전송될 때 개지는 현상을 방지
	//한글 개짐을 방지하려면 최초의 request.getParameter("name1") 메소드가 실행되기전
	//아래의 내용을 코딩
	//request.setCharacterEncoding("UTF-8");

	//get 방식도 한글이 깨졌었다. => tomcat 7.0부터 get 방식이 한글이 깨지지 않는다.
	//get 방식에서 한글이 깨지면 서버 환경 설정에서 한글이 깨지지 않도록 설정해야한다.
	//Servers/server.xml 에 source 탭 <Connector URLEncoding="UTF-8" 를 추가

	//request.getParameter 메소드로 이전 페이지에서 submit 버튼이 클릭되면
	//넘어오는 데이터를 받는다.
	//이전 페이지에서 넘어오는 데이터는 무조건 문자열 형태로 넘어온다.

	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name1");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//String gender = request.getParameter("gender");
	boolean bg = Boolean.parseBoolean(request.getParameter("gender"));
	
	//String hobbies = request.getParameter("hobbies");
	String[] hobbies = request.getParameterValues("hobbies");
	
	String trip = request.getParameter("trip");
	String[] travel = request.getParameterValues("travel");
	
	String content = request.getParameter("content");
	
	out.println(name + "님(id: " + id + ") 안녕하세요.<br>");
	try {

		int age = Integer.parseInt(request.getParameter("age"));
		out.println(name + "님(pw: " + pw + " age: " + age + ")<br>");
		out.println(name + "님(내년에 " + (age + 1) + " 살)<br>");
		out.println("성별 : " + (bg ? "남자" : "여자") + "<br>");
		
		out.println("취미 : " + Arrays.toString(hobbies) + "<br>");
		for(int i = 0;i<hobbies.length;i++)
		{
			out.println(hobbies[i] + " ");
		}
		out.println("<br>");
		
		
		out.println(name + "님" + trip + " 에 가고싶어 합니다.<br>");
		
		out.println("여행 : " + Arrays.toString(travel) + "<br>");
		for(int i = 0;i<travel.length;i++)
		{
			out.println(travel[i] + " ");
		}
		out.println("<br>");
		
		//out.println(content + "<br>");
		//out.println(content.replace("<", "&lt;").replace(">","&gt;") + "<br>");
		//out.println(content.replace("\r\n", "<br>"));
		out.println(content.replace("<", "&lt;").replace(">","&gt;").replace("\r\n", "<br>") + "<br>");
		
		
	} catch (NumberFormatException e) {
		out.println("잘못된 나이가 입력됨<br>");
		out.println("<script>");
		out.println("alert('잘못된 나이가 입력됨')");
		out.println("</script>");
	}
	%>


</body>
</html>