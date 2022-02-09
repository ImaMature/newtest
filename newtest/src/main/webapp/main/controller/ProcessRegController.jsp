<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@page import="dto.Process"%>
<%@page import="dao.ProcessDao"%>
<%@page import="javax.swing.plaf.basic.BasicSplitPaneUI.KeyboardDownRightHandler"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
int p_num = 0;
String p_Ready = request.getParameter("p_Ready");
String p_print = request.getParameter("p_Print");
String p_Coat = request.getParameter("p_Coat");
String p_Paper = request.getParameter("p_Paper");
String p_Attach = request.getParameter("p_Attach");
String p_Package = request.getParameter("p_Package");
String p_date = request.getParameter("p_date");
String p_finaldate = request.getParameter("p_finaldate");
if(p_date.length() != 8){
		out.print("<script>alert('[20190101]의 형태로 8자의 숫자를 입력해주세요.');</script>");
		response.sendRedirect("../view/process/processreg.jsp"); 
}else if(p_finaldate.length() != 4){
		out.print("<script>alert('[1130]의 형태로 4자의 숫자를 입력해주세요.');</script>");
		response.sendRedirect("../view/process/processreg.jsp"); 
}else{
	p_date = p_date.replaceAll("<(/)?([a-zA-Z가-힇]*)(\\s[a-zA-Z가-힇]*=[^>]*)?(\\s)*(/)?", "");
	p_finaldate = p_finaldate.replaceAll("<(/)?([a-zA-Z가-힇]*)(\\s[a-zA-Z가-힇]*=[^>]*)?(\\s)*(/)?", "");

	int lastP_num = ProcessDao.getProcessDao().selectlast();
	if(lastP_num != 0){
		lastP_num++;
		Process process = new Process(lastP_num, p_Ready, p_print, p_Coat, p_Paper, p_Attach, p_Package, p_date, p_finaldate);
		boolean rs = ProcessDao.getProcessDao().ProcessReg(process);
		if(rs){
			out.print("<script>alert('공정이 등록되었습니다.');</script>");
			response.sendRedirect("../view/process/processreg.jsp"); 
		}else{
			out.print("<script>alert('공정 등록에 실패했습니다.');</script>");
			response.sendRedirect("../view/process/processreg.jsp"); 
		}
	}else{
		p_num = 20190001;
		Process process = new Process(p_num, p_Ready, p_print, p_Coat, p_Paper, p_Attach, p_Package, p_date, p_finaldate);
		boolean rs = ProcessDao.getProcessDao().ProcessReg(process);
		if(rs){
			out.print("<script>alert('공정이 등록되었습니다.');</script>");
			response.sendRedirect("../view/process/processreg.jsp"); 
		}else{
			out.print("<script>alert('공정 등록에 실패했습니다.');</script>");
			response.sendRedirect("../view/process/processreg.jsp"); 
		}
	}
}



%>