<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
  <%

      int idx = 1;

      String title = request.getParameter("title");

      String writer = request.getParameter("writer");

      String regdate = request.getParameter("regdate");

      int count = 10000;

      String content = request.getParameter("content");

  %>
<!DOCTYPE html>
<meta charset="utf-8">
<head>
<meta charset="euc-kr">
<title>글 남기기</title>
<link rel="stylesheet" type="text/css" href="css경로">
<!--[if IE]> <script src="스크립트경로"></script> <![endif]-->
<style>
/* 게시판 리스트 목록 */
.sub_news,.sub_news th,.sub_news td{border:0}
.sub_news a{color:#383838;text-decoration:none}
.sub_news{width:100%;border-bottom:1px solid #999;color:#666;font-size:12px;table-layout:fixed}
.sub_news caption{display:none}
.sub_news th{padding:5px 0 6px;border-top:solid 1px #999;border-bottom:solid 1px #b2b2b2;background-color:#f1f1f4;color:#333;font-weight:bold;line-height:20px;vertical-align:top}
.sub_news td{padding:8px 0 9px;border-bottom:solid 1px #d2d2d2;text-align:center;line-height:18px;}
.sub_news .date,.sub_news .hit{padding:0;font-family:Tahoma;font-size:11px;line-height:normal}
.sub_news .title{text-align:left; padding-left:15px; font-size:13px;}
.sub_news .title .pic,.sub_news .title .new{margin:0 0 2px;vertical-align:middle}
.sub_news .title a.comment{padding:0;background:none;color:#f00;font-size:12px;font-weight:bold}
.sub_news tr.reply .title a{padding-left:16px;background:url(첨부파일/ic_reply.png) 0 1px no-repeat}
/* //게시판 리스트 목록 */
</style>
</head>
<body>
<!-- 리스트 게시판 시작-->

<table class="sub_news" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
<caption>게시판 리스트</caption>
<colgroup>
<col>
<col width="110">
<col width="100">
<col width="80">
</colgroup>
<thead>
<tr>
<th scope="col">제목</th>
<th scope="col">글쓴이</th>
<th scope="col">날짜</th>
<th scope="col">조회수</th>
</tr>
</thead>
<tbody>
<tr>
<td class="title">
<a href="#">게시판 제목</a>
<img width="13" height="12" class="pic" alt="첨부이미지" src="첨부파일 ic_pic.gif"> <a class="comment" href="#">[5]</a> <img width="10" height="9" class="new" alt="새글" src="첨부파일/ic_new.gif">
</td>
<td class="name">김민철</td>
<td class="date">2019/12/18</td>
<td class="hit">1234</td>
</tr>
<tr class="reply">
<td class="title" style="padding-left:30px;">
<a href="#">개발</a>
</td>
<td class="name">철붕</td>
<td class="date">2019/12/18</td>
<td class="hit">1234</td>
</tr>

<!-- tr이 제목 1줄입니다 보일 list 갯수만큼 li반복합니다.-->
</tbody>
</table>
<a href="write.html">글쓰기</a>
<!-- 리스트 게시판 끝-->

</body>
</html>
