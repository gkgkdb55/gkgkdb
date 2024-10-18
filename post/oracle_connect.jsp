<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MySQL 연결 드라이버 테스트</title>
</head>
<body>
    <h1>MySQL 연결 드라이버 테스트</h1>
    <%
        String jdbcUrl = "jdbc:oracle:thin:@192.168.1.21:1521:xe?oracle.jdbc.timezoneAsRegion=false";
        String dbId = "scott";
        String dbPwd = "tiger";

        try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection connection = DriverManager.getConnection(jdbcUrl, dbId, dbPwd);
                out.println("Oracle 연결 성공");
            }
        catch (Exception ex)
            {
                out.println("연결 오류입니다. 오류 메시지 : " + ex.getMessage());
            }
    %>
</body>
</html>