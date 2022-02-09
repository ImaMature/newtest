<%@page import="dao.ProcessDao"%>
<%@page import="dto.Process"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		ArrayList<Process> processes = ProcessDao.getProcessDao().processList(); 
		
	%>
	<%@include file="../header.jsp" %>
	<%@include file="../nav.jsp" %>
	<div class="processregDiv" >
		<h2 class="contentTitle">작업공정조회</h2>
		<div>
			<table>
				<thead>
		        <tr>
		            <th>작업지시번호</th><th>준비</th><th>인쇄</th><th>코팅</th><th>합지</th><th>접합</th><th>포장</th><th>최종공정일자</th><th>최종공정시간</th>
		        </tr>
		    	</thead>
		    	<tbody>
		    	<% for(Process temp: processes) {%>
			        <tr>
			            <td><%=temp.getP_num()%></td>
			            <%if(temp.getP_ready().equals("작업중")){%>
			           		<td>-</td>
			            <%}else{%>
			            	<td>완료
			            <%} %>
			            <%if(temp.getP_print().equals("작업중")){%>
			           		<td>-</td>
			            <%}else{%>
			            	<td>완료
			            <%} %>
			             <%if(temp.getP_coating().equals("작업중")){%>
			           		<td>-</td>
			            <%}else{%>
			            	<td>완료
			            <%} %>
			             <%if(temp.getP_paper().equals("작업중")){%>
			           		<td>-</td>
			            <%}else{%>
			            	<td>완료
			            <%} %>
			            <%if(temp.getP_attach().equals("작업중")){%>
			           		<td>-</td>
			            <%}else{%>
			            	<td>완료
			            <%} %>
			            <%if(temp.getP_packaging().equals("작업중")){%>
			           		<td>-</td>
			            <%}else{%>
			            	<td>완료
			            <%} %>
			            <%
			            StringBuffer buffer2 = new StringBuffer(temp.getP_finaldate());
			            buffer2.insert(4, "-");
			            buffer2.insert(7,"-");
			            StringBuffer buffer = new StringBuffer(temp.getP_finaltime());
			            buffer.insert(2, ":");
			            %>
			            <td><%=buffer2%></td>
			            <td><%=buffer %></td>
			        </tr>
		        <%} %>
			    </tbody>
			</table>
		</div>
	</div>
	<%@include file="../footer.jsp" %>
</body>
</html>