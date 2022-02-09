<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="border:green 1px soild;">
	<%@include file="../header.jsp" %>
	<%@include file="../nav.jsp" %>
	<div class="processregDiv" >
		<h2 class="contentTitle">작업공정등록</h2>
		<form action="../../controller/ProcessRegController.jsp" method="post">
			<div class="processregcontainer">
				<div>
					<span class="processSpan">작업지시번호</span><input type="text" disabled><span>예)20190001</span>
				</div>
				<div class="containerOpt">
					<span class="processSpan">재료준비</span> <input type="radio" name = "p_Ready" value="완료">완료 <input type="radio" name = "p_Ready" value="작업중">작업중 
				</div>
				<div class="containerOpt">
					<span class="processSpan">인쇄공정</span> <input type="radio" name = "p_Print" value="완료">완료 <input type="radio" name = "p_Print" value="작업중">작업중 
				</div>
				<div class="containerOpt">
					<span class="processSpan">코팅공정</span> <input type="radio" name = "p_Coat" value="완료">완료 <input type="radio" name = "p_Coat" value="작업중">작업중 
				</div>
				<div class="containerOpt">
					<span class="processSpan">합지공정</span> <input type="radio" name = "p_Paper" value="완료">완료 <input type="radio" name = "p_Paper" value="작업중">작업중 
				</div>
				<div class="containerOpt">
					<span class="processSpan">접합공정</span> <input type="radio" name = "p_Attach" value="완료">완료 <input type="radio" name = "p_Attach" value="작업중">작업중 
				</div>
				<div class="containerOpt">
					<span class="processSpan">포장공정</span> <input type="radio" name = "p_Package" value="완료">완료 <input type="radio" name = "p_Package" value="작업중">작업중 
				</div>
				<div>
					<span class="processSpan">최종작업일자</span><input type="text" name="p_date"><span>예)20190101</span>
				</div>
				<div>
					<span class="processSpan">최종작업시간</span><input type="text" name="p_finaldate"><span>예)1300</span>
				</div>
				<div>
					<button type="submit">공정등록</button>
					<button class="btn2">공정수정</button>
					<button class="btn3">다시쓰기</button>
				</div>
			</div>
		</form>
	</div>
	<%@include file="../footer.jsp" %>
</body>
</html>