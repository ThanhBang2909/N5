<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="pdnghia.database" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<style>
	.flexcont{
		display: flex;
	}
	.slidebar{
		width: 15%;
		height: 400px;
	}
	.dssp{
		width: 85%;
		border: 1px solid;
		border-radius: 15px;
	}
	.sp{
		height: 300px;
		display: flex;
		flex-direction: row;
	}
	.img{
		width: 280px;
		height: 280px;
		border-radius: 10px;
	}
</style>
</head>
<body background="https://images.unsplash.com/photo-1551376347-075b0121a65b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80">
	<h1 align="Center">MÁY TÍNH DUY NGHĨA</h1>
	<div>
		<nav>
			<a href="index.jsp">Trang chủ</a>
			<a href="gioithieu.jsp">Giới thiệu</a>
			<a href="sanpham.jsp">Sản phẩm</a>
			<a href="lienhe.jsp">Liên hệ</a>
		</nav>	
	</div>
	
	<div class="flexcont">
		<div class="slidebar">
			<nav>
				<a href="sanpham.jsp">Sản phẩm</a>
					<br>
				<a href="qlsanpham.jsp">Quản lý sản phẩm</a>
			</nav>	
		</div>
		
		<div class="dssp">
			<p>Sản phẩm</p>
			<%
			Connection connect = database.connect();
			Statement st = connect.createStatement();
			String getAll = "select * from sanpham";
			ResultSet results = st.executeQuery(getAll);
			while(results.next()){
			%>
			<div class="sp">
				<img class="img" alt="sanpham" src="<%=results.getString("urlhinhanh") %>">
				<div>
					<p><%=results.getString("tensp") %></p>
					<p><%=results.getString("dongia") %></p>
					<a href="">Xem Chi tiet</a>
					<a href="">Mua Hang</a>
				</div>
			</div>
			<hr>
			<%	}
				st.close();
				connect.close();
			%>
		</div>
	</div>
</body>
</html>
