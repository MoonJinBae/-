<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/help/help.css">
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>
	
	<div class="help-modify-container">
		<h1>문의사항 수정</h1>
		<div>
			<form action="/help/modify" method="post">
				<table>
					<tr>
						<th>문의번호</th>
						<td>${hdto.helpNo}</td>
					</tr>
					<tr>
						<th>문의유형</th>
						<td>${hdto.type}</td>
					</tr>
					<tr>
						<th>작성자</th>
						<td>${hdto.id}</td>
					</tr>
					<tr>
						<th>작성일</th>
						<td>${hdto.regDate}</td>
					</tr>
					<tr>
						<th>수정일</th>
						<td>${hdto.modDate}</td>
					</tr>
					<tr>
						<th>제목</th>
						<td><input type="text" name="title" value="${hdto.title}"></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea name="content" class="content-text">${hdto.content}</textarea></td>
					</tr>
					<tr class="modify-tr">
						<td colspan="2">
							<input type="hidden" name="id" value="${hdto.id}">
							<input type="hidden" name="helpNo" value="${hdto.helpNo}">
							<button class="modify-btn" type="submit">확인</button>
						</td>
					</tr>
					
				</table>
			</form>
		</div>

	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>

</body>
</html>