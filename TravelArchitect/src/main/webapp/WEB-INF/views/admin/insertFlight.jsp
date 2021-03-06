<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- Page Heading/Breadcrumbs -->
<section class="mypageTop">
	<h3 class="mt-4 mb-3">
		항공권 관리&nbsp;<small>항공편 추가</small>
	</h3>
</section>
<hr>
<!-- Page Content -->
<section class="f-m-s">
	
		<div class="b2-h">
			<p>항공편 입력</p>
		</div>

		<form class="flightList" name="formm" method="get">
			<div>
				<c:choose>
					<c:when test="${empty flight}">
						<input type="submit" value="항공편 추가" onclick="return insertFlight()" />
					</c:when>
					<c:otherwise>
						<input type="submit" value="항공편 수정" onclick="return updateFlight()" />
					</c:otherwise>
				</c:choose>
			</div>
			<table id="addSeat">
				<thead class="thead">
					<tr>
						<th>항공사</th>
						<th>항공편</th>
						<th>출발도시</th>
						<th>도착도시</th>
						<th>출발날짜</th>
						<th>도착날짜</th>
						<th>출발시간</th>
						<th>도착시간</th>
					</tr>
				</thead>
				<tbody id="selectFlight">
					<tr>
						<td><input type="text" name="airline" value="${flight.airline}"/></td>
						<td><input type="text" name="flight" value="${flight.flight}"/></td> 
						<td><input type="text" name="departureCity" value="${flight.departureCity}"/></td>
						<td><input type="text" name="arrivalCity" value="${flight.arrivalCity}"/></td>
						<td><input type="date" name="departureDate" value="${flight.departureDate}" /></td>
						<td><input type="date" name="arrivalDate" value="${flight.arrivalDate}"/></td>
						<td><input type="text" name="departureTime" value="${flight.departureTime}"/></td>
						<td><input type="text" name="arrivalTime" value="${flight.arrivalTime}"/></td>
					</tr>
				</tbody>
			</table>
		</form>

</section>

<%@ include file="../footer.jsp"%>