<%@ page language="java" contentType="text/html; charset=EUC-KR"  pageEncoding="EUC-KR"%>
<page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Write something else you want</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>
function formCheck() {
  var title = document.forms[0].title.value;
   // 사용하기 쉽도록 변수를 선언하여 담아주고,
  var writer = document.forms[0].writer.value;
  var regdate = document.forms[0].regdate.value;
  var content = document.forms[0].content.value; // 추가되었습니다. 글내용

  if (title == null || title == ""){      // null인지 비교한 뒤
      alert('제목을 입력하세요');           // 경고창을 띄우고
      document.forms[0].title.focus();    // 해당태그에 포커스를 준뒤
      return false;                       // false를 리턴합니다.
  }
  if (writer == null ||  writer  == ""){
      alert('작성자를 입력하세요');
      document.forms[0].writer.focus();
      return false;
  }

  // 글작성폼에 내용을 추가하였습니다. 게시판에 글내용은 당연히 있어야겠죠?
  // 추가할 html코드 : content : <textarea rows="10" cols="20" name="content"></textarea><br>

  if (content == null ||  content == ""){
      alert('내용을 입력하세요');
      document.forms[0].content.focus();
      return false;
  }

  if (regdate == null || regdate == "" ){
      alert('날짜를 입력하세요');
      document.forms[0].regdate.focus();
      return false;
  }
}
}
</script>
</head>
<body>
<div class="container">
<table class="table table-bordered">
    <thead>
        <caption> 글쓰기 </caption>
    </thead>
    <tbody>
        <form action="list.html" method="post" encType="multiplart/form-data">
            <tr>
                <th>제목: </th>
                <td><input type="text" placeholder="제목을 입력하세요. " name="title" class="form-control"/></td>
            </tr>
            <tr>
                <th>내용: </th>
                <td><textarea rows="10" cols="20" placeholder="내용을 입력하세요. " name="content" class="form-control"></textarea></td>
            </tr>
            <tr>
                <th>작성자: </th>
                <td><input type="text" placeholder="이름을 입력하세요. " name="writer" class="form-control"/></td>
            </tr>
            <tr>
                <th>첨부파일: </th>
                <td><input type="text" placeholder="파일을 선택하세요. " name="filename" class="form-control"/></td>
            </tr>
            <tr>
                <th>날짜: </th>
                <td><input type="regdate" placeholder="날짜를 입력하세요" name="regdate" class="form-control"/></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="등록" onclick="formCheck()" class="pull-right"/>
                    <input type="button" value="reset" class="pull-left"/>
                    <input type="button" value="글 목록으로... " class="pull-right" onclick="javascript:location.href='list.html'"/>
                    <!-- <a class="btn btn-default" onclick="sendData()"> 등록 </a>
                    <a class="btn btn-default" type="reset"> reset </a>
                    <a class="btn btn-default" onclick="javascript:location.href='list.jsp'">글 목록으로...</a> -->
                </td>
            </tr>
        </form>

    </tbody>
</table>
</div>
</body>
</html>
