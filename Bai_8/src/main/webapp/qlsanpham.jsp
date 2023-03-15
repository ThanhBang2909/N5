<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="pdnghia.database" %>
    <%
		request.setCharacterEncoding("utf-8");
		String tensp = request.getParameter("tensp");
		String dongia = request.getParameter("dongia");
		String anh = "urlanh";
		String chitiet = request.getParameter("chitiet");
		
		Connection connect = database.connect();
		Statement st = connect.createStatement();
		
		if(tensp!=null && dongia!=null && chitiet!=null){
			
			String sql = "INSERT INTO sanpham(tensp,chitietsp,dongia,urlhinhanh)VALUES(N'"+tensp+"',N'"+chitiet+"',"+dongia+",'"+anh+"')";
			
			try{
				st.executeUpdate(sql);
			}catch(Exception e){
				out.println("<p align='center' style='font-size: 20px'>Lỗi! Vui lòng nhập lại</p>");
			} 
		}
		
		%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body background="https://images.unsplash.com/photo-1551376347-075b0121a65b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80">
	<table border="1" width=60%>
		<tr>
			<td colspan="2"> <h1>QUẢN LÝ SẢN PHẨM</h1> </td>
		</tr>
		<tr>
			<td>Sản phẩm</td>
			<td>
				<a href="themsanpham.jsp">Thêm mới</a><br>
				<table border="1" width=100%>
					<tr>
						<td>ID sản phẩm</td>
						<td>Tên sản phẩm</td>
						<td>Đơn giá</td>
						<td>Nút lệnh</td>
					</tr>
					<%
					String getAll = "select * from sanpham";
					ResultSet results = st.executeQuery(getAll);
					while(results.next()){
					%>
					<tr>
						<td><%=results.getString("idsp") %></td>
						<td><%=results.getString("tensp") %></td>
						<td><%=results.getString("dongia") %></td>
						<td><a href="">Xem</a> <a href="">Cập nhật</a> <a href="">Xoá</a></td>
					</tr>
					<%	}
						st.close();
						connect.close();
					%>
				</table>
			</td>
		</tr>
	</table>
	<a href="index.jsp" >Trang chủ</a>
</body>
</html>


