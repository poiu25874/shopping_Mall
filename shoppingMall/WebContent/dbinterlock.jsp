<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
try{
    //step1 load the driver class
    Class.forName("oracle.jdbc.driver.OracleDriver");

    //step2 create  the connection object
    Connection con=DriverManager.getConnection(
    "jdbc:oracle:thin:@localhost:1521:xe","SMC_USER","SMC_USER");

    //step3 create the statement object
    Statement stmt=con.createStatement();

    //step4 execute query
    String query = "SELECT " +
    		"ID, CATEGORY_ID, NAME, PRICE, STOCK, DESCRIPTION, ORIGIN " +
    		"FROM " +
    		"PRODUCT ";
    ResultSet rs=stmt.executeQuery(query);
    while(rs.next())
    System.out.println(rs.getInt("ID")+ "," + rs.getInt("CATEGORY_ID") + "," + rs.getString("NAME") + "," 
    + rs.getInt("PRICE") + "," + rs.getString("STOCK") + "," + rs.getString("DESCRIPTION") + ","
    + rs.getString("ORIGIN"));
    //step5 close the connection object
    con.close();

    }catch(Exception e){ System.out.println(e);}
%>
<table border = "1">
	<tr>
		<td>ID</td>
		<td>카테고리ID</td>
		<td>이름</td>
		<td>가격</td>
		<td>재고</td>
		<td>설명</td>
		<td>원산지</td>
	</tr>
<%
try
{  
	//step1 load the driver class  
	Class.forName("oracle.jdbc.driver.OracleDriver");  
	  
	//step2 create  the connection object  
	Connection con=DriverManager.getConnection(  
	"jdbc:oracle:thin:@localhost:1521:xe","SMC_USER","SMC_USER");  
	  
	//step3 create the statement object  
	Statement stmt=con.createStatement();  
	  
	//step4 execute query  
	String query = "SELECT " +
					"ID, CATEGORY_ID, NAME, PRICE, STOCK, DESCRIPTION, ORIGIN " +
					"FROM " +
					"PRODUCT ";
	
	
	ResultSet rs=stmt.executeQuery(query);  
	while(rs.next()) {
		%><tr><%
		
		%><td><%=rs.getInt("ID")%></td><%
		%><td><%=rs.getInt("CATEGORY_ID")%></td><%
		%><td><%=rs.getString("NAME")%></td><%
		%><td><%=rs.getInt("PRICE")%></td><%
		%><td><%=rs.getInt("STOCK")%></td><%
		%><td><%=rs.getString("DESCRIPTION")%></td><%
		%><td><%=rs.getString("ORIGIN")%></td><%
														
		
		%><tr><%
	}
	
	  
	//step5 close the connection object  
	con.close();  
	  
}
catch(Exception e)
{ 
	System.out.println(e);
} %>

<table border = "1">
    <tr>
        <td>상품명</td>
        <td>카테고리</td>
        <td>ID</td>
        <td>category_ID</td>
        <td>가격</td>
        <td>제고</td>
        <td>설명</td>
        <td>원산지</td>
    </tr>
<%
try
{
    //step1 load the driver class
    Class.forName("oracle.jdbc.driver.OracleDriver");

    //step2 create  the connection object
    Connection con=DriverManager.getConnection(
    "jdbc:oracle:thin:@localhost:1521:xe","SMC_USER","SMC_USER");

    //step3 create the statement object
    Statement stmt=con.createStatement();

    //step4 execute query
    String query = "SELECT " +
                    "CATEGORY.NAME as category_name,PRODUCT.NAME as product_name,PRODUCT.ID, CATEGORY_ID, PRICE, STOCK, DESCRIPTION, ORIGIN " +
                    "FROM " +
                    "PRODUCT, CATEGORY  "+
                    "WHERE " +
                    "CATEGORY.ID = PRODUCT.CATEGORY_ID ";


    ResultSet rs=stmt.executeQuery(query);
    while(rs.next()) {
        %><tr><%


        %><td><%=rs.getString("product_name")%></td><%
        %><td><%=rs.getString("category_name")%></td><%
        %><td><%=rs.getInt("ID")%></td><%
        %><td><%=rs.getInt("CATEGORY_ID")%></td><%
        %><td><%=rs.getInt("PRICE")%></td><%
        %><td><%=rs.getInt("STOCK")%></td><%
        %><td><%=rs.getString("DESCRIPTION")%></td><%
        %><td><%=rs.getString("ORIGIN")%></td><%

        %><tr><%
    }


    //step5 close the connection object
    con.close();

}
catch(Exception e)
{ 
    System.out.println(e);
}
%>
</table>
</tr> 

<table border = "1">
    <tr>
        <td>ID</td>
        <td>비밀번호</td>
        <td>이름</td>
        <td>이메일</td>
        <td>전화번호</td>
        <td>주소</td>
        <td>나이</td>
    </tr>
<%
try
{
    //step1 load the driver class
    Class.forName("oracle.jdbc.driver.OracleDriver");

    //step2 create  the connection object
    Connection con=DriverManager.getConnection(
    "jdbc:oracle:thin:@localhost:1521:xe","SMC_USER","SMC_USER");

    //step3 create the statement object
    Statement stmt=con.createStatement();

    //step4 execute query
    String query = "SELECT " +
                    "* " +
                    "FROM " +
                    "MEMBER  ";

    ResultSet rs=stmt.executeQuery(query);
    while(rs.next()) {
        %><tr><%


        %><td><%=rs.getInt("ID")%></td><%
        %><td><%=rs.getString("PASSWORD")%></td><%
        %><td><%=rs.getString("NAME")%></td><%
        %><td><%=rs.getString("EMAIL")%></td><%
        %><td><%=rs.getString("PHONE")%></td><%
        %><td><%=rs.getString("ADDRESS")%></td><%
        %><td><%=rs.getInt("AGE")%></td><%

        %><tr><%
    }


    //step5 close the connection object
    con.close();

}
catch(Exception e)
{ 
    System.out.println(e);
}
%>
</table>
</table>

<table border = "1">
    <tr>
        <td>PRODUCT_ID</td>
        <td>PAYMENT_HISTORY_ID</td>
        <td>PRODUCT_PRICE</td>
        <td>PAYMENY_HISTORY_PRICE</td>
        <td>ORDER_COUNT</td>

    </tr>
<%
try
{
    //step1 load the driver class
    Class.forName("oracle.jdbc.driver.OracleDriver");

    //step2 create  the connection object
    Connection con=DriverManager.getConnection(
    "jdbc:oracle:thin:@localhost:1521:xe","SMC_USER","SMC_USER");

    //step3 create the statement object
    Statement stmt=con.createStatement();

    //step4 execute query
    String query = "SELECT " +
                    "PRODUCT.ID AS PRODUCT_ID, PAYMENT_HISTORY.ID AS PAYMENT_HISTORY_ID, PRODUCT.PRICE AS PRODUCT_PRICE,PAYMENT_HISTORY.ORDER_PRICE AS PAYMENY_HISTORY_PRICE,ORDER_COUNT " +
                    "FROM " +
                    "PRODUCT, PAYMENT_HISTORY  " +
                    "WHERE " +
                    "PAYMENT_HISTORY.PRODUCT_ID = PRODUCT.ID ";

    ResultSet rs=stmt.executeQuery(query);
    while(rs.next()) {
        %><tr><%


        %><td><%=rs.getInt("PRODUCT_ID")%></td><%
        %><td><%=rs.getString("PAYMENT_HISTORY_ID")%></td><%
        %><td><%=rs.getString("PRODUCT_PRICE")%></td><%
        %><td><%=rs.getString("PAYMENY_HISTORY_PRICE")%></td><%
        %><td><%=rs.getString("ORDER_COUNT")%></td><%

        %><tr><%
    }


    //step5 close the connection object
    con.close();

}
catch(Exception e)
{ 
    System.out.println(e);
}
%>
</table>

<%
try
{
    //step1 load the driver class
    Class.forName("oracle.jdbc.driver.OracleDriver");

    //step2 create  the connection object
    Connection con=DriverManager.getConnection(
    "jdbc:oracle:thin:@localhost:1521:xe","SMC_USER","SMC_USER");

    //step3 create the statement object
    Statement stmt=con.createStatement();
    Statement stmt2=con.createStatement();

    //step4 execute query
    String query =     " SELECT " +
                    " product.id as pro_id,product.price as pro_price,payment_history.order_count as pay_order_count " +
                    " FROM " +
                    " product,payment_history ";
    ResultSet rs=stmt.executeQuery(query);

    while(rs.next()){int price=rs.getInt("pro_price");
    int id=rs.getInt("pro_id");
    int order_count = rs.getInt("pay_order_count");
    String query2 = " UPDATE " +
                    " PAYMENT_HISTORY " +
                    " SET " +
                    " ORDER_PRICE = "+(price*order_count)+
                    " WHERE "+
                    " PAYMENT_HISTORY.PRODUCT_ID = "+ id;
    stmt2.executeQuery(query2);
    }

    con.close();

}
catch(Exception e)
{ 
    System.out.println(e);
}
%>

</body>
</html>