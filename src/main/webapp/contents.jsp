<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="model.User"%>
<%
// セッションスコープからユーザー情報を取得
User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スケジュール帳 CONTENTS</title>
<!-- 外部CSSファイルを読み込み -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/main.css">
</head>
<body>
	<%
	if (loginUser != null) {
	%>
	<p>ログインに成功しました</p>
	<p>
		ようこそ<%=loginUser.getName()%>さん
	</p>
	<%
	} else {
	%>
	<p>ログインに失敗しました</p>
	<a href="index.jsp">トップへ</a>
	<%
	}
	%>

	<h1>スケジュール帳 CONTENTS</h1>
	<div class="btn-container">
		<form action="monthView.jsp" method="get">
			<button type="submit" class="schedule-btn">月</button>
		</form>
		<form action="weekView.jsp" method="get">
			<button type="submit" class="schedule-btn">週</button>
		</form>
		<form action="dayView.jsp" method="get">
			<button type="submit" class="schedule-btn">日</button>
		</form>
	</div>

</body>
</html>
