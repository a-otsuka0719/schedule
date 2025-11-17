<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スケジュール帳CONTENTS</title>
<!-- 外部CSSファイルを読み込み -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css">
</head>
<body>

    <h1>スケジュール帳CONTENTS</h1>
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
