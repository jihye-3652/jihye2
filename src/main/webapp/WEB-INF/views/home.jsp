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


  <div class="col-12">
            <!-- general form elements disabled -->
            <div class="card card-warning">
              <div class="card-header">
                <h3 class="card-title">회원등록</h3>
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                <form role="form" action="/admin/member/create" method="post">
                  <div class="row">
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>아이디</label>
                        <input name="userid" type="text" class="form-control" placeholder="Enter ...">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>암호</label>
                        <input name="userpw" type="text" class="form-control" placeholder="Enter ...">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>이름</label>
                        <input name="username" type="text" class="form-control" placeholder="Enter ...">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <!-- text input -->
                      <div class="form-group">
                        <label>이메일</label>
                        <input name="email" type="text" class="form-control" placeholder="Enter ...">
                      </div>
                    </div>
                    <button type="submit" class="btn btn-block btn-info btn-lg">회원등록</button>
            		</div>
      
       			<!-- <input type="text" name="username"> 
       			폼 안에 있어야 함
       			-->
      
                </form>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>      



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
						<th class="title-2" scope="col">수정</th>
						<th class="title-2" scope="col">삭제</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach items="${memberList}" var="memberVO" varStatus="status">
					
					<tr> 
						<td>${status.count}</td>
						<form action="/admin/member/update" method="post">
						<td class="b">
						${memberVO.userid}
						<input type="hidden" name="userid" value="${memberVO.userid}">
						</td>
						<td class="b"><input type="text" name="userpw" value="${memberVO.userpw}"></td>
						<td class="b"><input type="text" name="username" value="${memberVO.username}"></td>
						<td class="b"><input type="text" name="email" value="${memberVO.email}"></td>
						<td class="b">${memberVO.regdate}</td>
						<td class="b">${memberVO.updatedate}</td>
						<td class="b"><input type="submit" value="수정">
						</form>
						
						<td class="b">
						<form action="/admin/member/delete" method="post" >
						<input type="hidden" value="${memberVO.userid}" name = "userid">
						<input type="submit" value="삭제">
						</form>
						</td>
					</tr>
					
				</c:forEach>
				
				</tbody>
</table>
</body>
</html>
