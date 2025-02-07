<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="../common/header.jsp"%>

<div class="mainCon_info">
	<form name="" action="" method="post">	
		<input type="hidden" name="st_idx" value="${store_idx}">
		
		<div class="two_contents">
			<div class="one_con">
				<input type="hidden" name="admin_idx" id="" value="">
				<c:if test="${not empty data}">	
					<h2 class="ml20">[${data.store_name}]매장정보</h2>
					<div class="tableWrite_4 box_shadow mt20 mb30">
						<table>
							<tr>
								<th>매장명</th>
								<td>${data.store_name}</td>
							</tr>
							<tr>
								<th>아이디</th>
								<td>${data.store_id}</td>
							</tr>
							<tr>
								<th>연락처</th>
								<td>${data.store_tel}</td>
							</tr>
							<tr>
								<th>이메일</th>
								<td>${data.store_email}</td>
							</tr>
							<tr>
								<th>매장등급</th>
								<td>
									<c:if test="${dto.gudok_stat == 1 }">
										프리미엄
									</c:if>
									<c:if test="${dto.gudok_stat != 1 }">
										일반
									</c:if>
								</td>
							</tr>
							<tr>
								<th>대표자명</th>
								<td>${data.store_idx}</td>
							</tr>
							<tr>
								<th>주소</th>
								<td>
									${data.store_addr} 
									<br />
									${data.store_daddr}
								</td>
							</tr>
							<tr>
								<th>사업자등록번호</th>
								<td>
									${data.store_biznum} 
								</td>
							</tr>
						</table>
					</div>
				</c:if>
			</div>
			
			<div>
				<c:if test="${not empty t_list}">	
					<h2 class="ml20">영업시간</h2>
					<div class="tableWrite_4 box_shadow mt20 mb30">
						<table>
							<!-- 저장시킬때 일월화수목금토로 저장시키고 불러올때 기본키로 정렬시켜서 불러옴 -->
							<c:if test="${!empty t_list }">
								<c:forEach var="dto" items="${t_list }">
									<tr>
										<th>${dto.stime_day }</th>
										<td>
											${dto.stime_start } : ${dto.stime_end}
											( ${dto.stime_break} )
										</td>
									</tr>
								</c:forEach>
							</c:if>
						</table>
					</div>
				</c:if>
			</div>
		</div>
	</form>
</div>
   
<%@include file="../common/footer.jsp"%>