<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
<style>
	h1{
		color: indianred;
	}
	.bbsListTbl {
		border: 2px solid cadetblue;
	}
	tr, th, td{
		border: 1px solid cadetblue;
	}
	.hdd{
		color: rgb(61, 100, 100);
	}
	.title-2{
		color: rgb(59, 97, 99);
	}
	.b{
		color: rgb(101, 102, 109);
	}
</style>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<table class="bbsListTbl" summary="회원정보리스트">
				<caption class="hdd"><b>회원정보  목록:</b> Made By ${jspMaker}</caption>
				<thead>
					<tr>
						<th class="title-2" scope="col">번호</th>
						<th class="title-2" scope="col">사용자ID</th>
						<th class="title-2" scope="col">사용자PW</th>
						<th class="title-2" scope="col">사용자이름</th>
						<th class="title-2" scope="col">사용자메일</th>
						<th class="title-2" scope="col">사용자등록일</th>
						<th class="title-2" scope="col">사용자수정일</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${memberList} var="memberVO" >
					<tr> 
						<td class="b">cnt</td>
						<td class="b">${memberVO.userid}</td>
						<td class="b">${memberVO.userpw}</td>
						<td class="b">${memberVO.username}</td>
						<td class="b">${memberVO.email}</td>
						<td class="b">${memberVO.regdate}</td>
						<td class="b">${memberVO.updatedate}</td>
					</tr>
				</c:forEach>
				
				</tbody>
</table>
</body>
</html>
