<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../common/header.jsp"%>

<div class="mainCon_600">
	<form name="storeNewsSave" action="storeNewsSave" method="post" enctype="multipart/form-data">
		<input type="text" name="store_idx" id="" value="1">
		<input type="text" name="s_news_del" id="" value="N">
		<h2>소식 글쓰기</h2>
		<div class="tableWrite_2 mb60">
			<table>
				<tr>
					<th>소식제목</th>
					<td>
						<input type="text" name="s_news_title" id="" value="">
					</td>
				</tr>
				<tr>
					<th>이미지</th>
					<td>
						<input type="file" name="s_news_img" id="" value="">
					</td>
				</tr>
				<tr>
					<th>소식내용</th>
					<td>
						<textarea name="s_news_content" class=""></textarea>
					</td>
				</tr>
			</table>
		</div>
		<div class="btnBox_bottom">
			<input type="submit" class="btn_black" value="저장">
			<input type="button" class="btn_gray" value="취소">
		</div>
	</form>
</div>
  
   
<%@include file="../common/footer.jsp"%>