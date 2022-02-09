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
String pnum = request.getParameter("pnum"); 
String p_Ready = request.getParameter("p_Ready");
String p_print = request.getParameter("p_Print");
String p_Coat = request.getParameter("p_Coat");
String p_Paper = request.getParameter("p_Paper");
String p_Attach = request.getParameter("p_Attach");
String p_Package = request.getParameter("p_Package");
String p_finaldate = request.getParameter("p_finaldate");
String p_finaltime = request.getParameter("p_finaltime");

if(pnum.equals("") || pnum ==null || p_Ready.equals("") ||p_Ready ==null || p_print.equals("")|| p_print ==null || p_Coat.equals("") || p_Coat==null ||
		p_Paper.equals("") || p_Paper==null || p_Attach.equals("") || p_Attach==null ||
		p_Package.equals("")|| p_Package ==null || p_finaldate.equals("") || p_finaldate==null || p_finaltime.equals("") || p_finaltime==null ){
	
	out.print("<script>alert('내용을 입력해주세요');</script>");
	out.print("<script>location.href='../view/process/processreg.jsp';</script>");
}else{
	
	if(pnum.length() != 8){
		System.out.print(pnum);
		out.print("<script>alert('[20190101]의 형태로 8자의 숫자를 입력해주세요.');</script>");
		out.println("<script>location.href='../view/process/processreg.jsp';</script>"); 
		
	}else if(p_finaltime.length() != 4){
		out.print("<script>alert('[1130]의 형태로 4자의 숫자를 입력해주세요.');</script>");
		out.print("<script>location.href='../view/process/processreg.jsp';</script>");
			
	}else if(p_finaldate.length() != 8 ){
		out.print("<script>alert('[20190101]의 형태로 8자의 숫자를 입력해주세요.');</script>");
		out.print("<script>location.href='../view/process/processreg.jsp';</script>");
		
	}else{
		p_finaldate = p_finaldate.replaceAll("<(/)?([a-zA-Z가-힇]*)(\\s[a-zA-Z가-힇]*=[^>]*)?(\\s)*(/)?", "");
		p_finaltime = p_finaltime.replaceAll("<(/)?([a-zA-Z가-힇]*)(\\s[a-zA-Z가-힇]*=[^>]*)?(\\s)*(/)?", "");
		int p_num = Integer.parseInt(pnum);
		System.out.print("p_num : " +p_num);
		Process process = new Process(p_num, p_Ready, p_print, p_Coat, p_Paper, p_Attach, p_Package, p_finaldate, p_finaltime);
		boolean rs = ProcessDao.getProcessDao().ProcessReg(process);
		if(rs){
			out.print("<script>alert('공정이 등록되었습니다.');</script>");
			out.print("<script>location.href='../view/process/processreg.jsp';</script>");
		}else{
			out.print("<script>alert('공정 등록에 실패했습니다.');</script>");
			out.print("<script>location.href='../view/process/processreg.jsp';</script>");
		}
	}
}


%>