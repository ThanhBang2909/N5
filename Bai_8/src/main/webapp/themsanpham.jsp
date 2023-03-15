<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body background="https://images.unsplash.com/photo-1551376347-075b0121a65b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&w=1000&q=80">
	<h1 align="Center">Thêm mới sản phẩm</h1>
	<form action="qlsanpham.jsp" method="post" style="font-size: 20px">
		<table align='center'>
			<tr>
				<td>Tên sản phẩm: </td>
				<td> <input type="text" name="tensp"> </td>
			</tr>
			<tr>
				<td>Đơn giá: </td>
				<td> <input type="number" maxlength="11" name="dongia"> </td>
			</tr>
			<tr>
				<td>Hình ảnh sản phẩm: </td>
				<td> <input type="file" name="anh"> </td>
			</tr>
			<tr>
				<td>Chi tiết sản phẩm: </td>
				<td> <textarea rows="7" cols="20" name="chitiet"></textarea> </td>
			</tr>
			<tr>
				<td colspan="2" align="center"> <input type="submit" value="Thêm mới"> </td>
			</tr>
		</table>
	</form>
</body>
</html>
