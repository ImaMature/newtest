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
boolean pcount = ProcessDao.getProcessDao().selectFirst();
if(pcount){
	p_num += p_num;
	Process process = new Process(p_num, p_Ready, p_print, p_Coat, p_Paper, p_Attach, p_Package, p_date, p_finaldate);
}else{
	Date now = new Date();
	SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MMdd");
	String pdate = format1.format(now);
	p_num = Integer.parseInt(pdate);
	Process process = new Process();
}


%>