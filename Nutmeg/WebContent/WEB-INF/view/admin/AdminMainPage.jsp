<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    request.setCharacterEncoding("UTF-8");
    String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 페이지</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
<link rel="stylesheet" href="<%=cp%>/css/util/Template.css">
<link rel="stylesheet" href="<%=cp%>/css/admin/Admin.css">
<script>
// 현재 스크립트에 추가
   $(document).ready(function () {
       // 첫 진입 시 대시보드 자동 로딩
       $.get("<%=cp%>/AdminDashboardContent.action", function (result) {
        $('#content-area').html(result);
    });

    $('.menu-link').click(function (e) {
        e.preventDefault();
        const url = $(this).data('url');
        $.ajax({
            url: url,
            method: 'GET',
            success: function (result) {
                $('#content-area').html(result);
            },
            error: function () {
                /* alert("콘텐츠를 불러오는 데 실패했습니다."); */
            }
        });
    });
});

</script>
</head>
<body>
<div class="container">
    <div class="admin-wrapper">
        <!-- 사이드바 -->
        <div class="admin-sidebar">
            <div class="profile-box text-center mb-4">
                <h5 class="mb-1">${sessionScope.admin_nickName}</h5>
                <div class="text-muted" style="font-size: 13px;">관리자</div>
                <div class="mt-2"><span class="badge bg-warning text-dark">관리자 로그인</span></div>
            </div>
            <div class="fw-bold mb-2">관리 메뉴</div>
            <a class="nav-link menu-link" data-url="<%=cp%>/AdminDashboardContent.action">
                <i class="bi bi-house-door me-2"></i>대시보드
            </a>
            <a class="nav-link menu-link" data-url="<%=cp%>/AdminFieldApprForm.action">
                <i class="bi bi-building me-2"></i>경기장 승인관리
            </a>
            <a class="nav-link menu-link" data-url="<%=cp%>/UserManagePage.action">
                <i class="bi bi-people-fill me-2"></i>사용자 관리
            </a>
            <a class="nav-link menu-active" href="Logout.action">
				<i class="bi bi-box-arrow-right me-2"></i> 로그아웃
			</a>
        </div>

        <!-- 콘텐츠 영역 -->
        <div class="admin-content" id="content-area">
            <p>관리 메뉴를 선택해주세요.</p>
        </div>
    </div>
</div>
</body>
</html>
