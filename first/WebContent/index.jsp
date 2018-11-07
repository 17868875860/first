<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="top.jsp" %>
<jsp:include page= "top2.jsp"/>
<h1>hello world!</h1>
<%!
    int number=0;
    int count(){
    	number++;
        return number;
    }
%>
<p>统计次数
<%=count() %>
</p>

<%
Date date =new Date();
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh-mm-ss");
String now = sdf.format(date);
%>
<%=now
%>
<br>
<%
String str="";
for(int i=1;i<=9;i++){
	for(int j=1;j<=i;j++){
		str+=j+"*"+i+"="+j*i;
		str+="&nbsp";
	}
	str+="<br>";
}
%>
<%=str %><br>
<!-- <%=new Date() %> -->

<a href="lianjie.jsp?id=32发&name=说的">连接</a>
</body>
</html>