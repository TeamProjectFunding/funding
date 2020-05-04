<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="conPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FUNDING VIEW CORE INFOMATION</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
	<jsp:include page="../main/header.jsp" />
	<script>
	$(function(){
		$('.fundingCheck').click(function(){
			$(this).prev().click();
		});
		$('form').submit(function(){
			var checkBoolean = true;
			checkBoolean = $('input:checkbox[name="fundingCheck"]:checked').length == $('input:checkbox[name="fundingCheck"]').length;

			if(checkBoolean == false){
				swal("모든항목에 동의를 해야 진행이 가능합니다", {
					  buttons: false,
				});
				return false;
			}
		});
	});
</script>
	<div id="contentWrap" class="fundingWrap">
	<section id="fundingWrap">
		<div id="fundingStep" class="fundingStep1">
			<ul id="fundingStep">
				<li><span>투자 위험 안내 확인/동의</span></li>
				<li>예치금 확인/투자금액 입력</li>
				<li>투자 내역 확인 및 완료</li>
			</ul>
			
			<h1>투자 위험 안내</h1>
			<form action="fundingStep2.do">
				<input type="hidden" name="fundingCode" value="${param.fundingCode }">
				<table>
					<tr>
						<th>
							<input type="checkbox" name="fundingCheck">
							<p class="fundingCheck">
								원금손실의 위험이 있습니다.
							</p>
						</th>
					</tr>
					<tr>
						<td>
							<p>
								모든 투자는 원금손실의 위험을 가지고 있습니다.
								특히 채권 투자의 경우 기본 금리가 있어 원금이 보장되는 것 처럼 보이는 경우가 있으나 
								회수와는 무관한 내용으로 무조건적인 회수는 보장될 수 없습니다. 
								그렇기 때문에 다양한 상품에 분산 투자하실 것을 권유드립니다. 
								CROWD는 온라인소액투자중개업자로 증권 모집을 중개하는 업을 영위하고 있으며, 
								원금손실에 대한 책임을 지지 않습니다. 
								모든 투자는 투자자 본인의 의사에 따라 결정되어야 합니다.
							</p>
						<td>
					</tr>
					
					<tr>
						<th>
							<input type="checkbox" name="fundingCheck">
							<p class="fundingCheck">
								환금성이 낮습니다.
							</p>
						</th>
					</tr>
					<tr>
						<td>
							<p>
								비상장기업에 대한 투자는 환금성이 낮습니다. 
								중개를 통한 증권은 6개월 이내 전매가 제한되며, 
								매매가 가능한 시점이 되더라도 현금으로의 전환이 보장되지는 않습니다. 
								투자금을 회수하기 위하여 주식의 경우 스타트업 주식거래시장(KSM)에서 거래하거나, 
								기업의 M&A 또는 주식시장 상장 등이 있을 때까지 기다려야 할 수 있습니다. 
								채무증권이나 주식 관련 채권의 경우에도 특별한 사정이나 조건이 없는 한 만기까지 기다려야 합니다.
							</p>
						<td>
					</tr>
					
					<tr>
						<th>
							<input type="checkbox" name="fundingCheck">
							<p class="fundingCheck">
								배당가능성이 낮습니다
							</p>
						</th>
					</tr>
					<tr>
						<td>
							<p>
								증권을 발행하는 비상장기업은 성장 초기 단계에 있는 경우가 많기 때문에 
								정기 배당을 실시하는 경우가 매우 드뭅니다. 
								따라서 배당수익을 기대하고 투자를 할 경우 기대한 만큼의 수익을 얻지 못할 수 있습니다.
							</p>
						<td>
					</tr>
					
					<tr>
						<th>
							<input type="checkbox" name="fundingCheck">
							<p class="fundingCheck">
								지분 희석이 발생할 수 있습니다
							</p>
						</th>
					</tr>
					<tr>
						<td>
							<p>
								증권을 발행하는 비상장기업은 지속적인 성장이 필요한 단계임으로 
								해당 기업의 정관에 근거하여 유상증자를 실시할 가능성이 일반 기업보다 높습니다. 
								유상증자로 인하여 투자자가 보유한 지분율은 감소될 수 있습니다.
							</p>
						<td>
					</tr>
					
					<tr>
					
					<tr>
						<td>
							<p>
								<span>
								모든 투자에는 기대수익에 상응하는 투자위험이 있음을 유의하셔야 합니다.
								투자자는 투자결과에 따라 높은 수익을 얻을 수도 있지만, 원금의 100%를 손실할 가능성도 있습니다. 
								CROWD는 온라인소액투자중개서비스를 중개하는 회사로서 투자에 따른 손실 또는 그 위험을 보전해 드리지 못하며, 
								투자에 따른 모든 책임은 각 투자자에게 귀속됩니다.
								 따라서 투자자가 직접 습득한 정보와 자체적인 투자의 의사결정에 따라 투자에 임하실 것을 당부 드립니다.
								 </span>
							</p>
						<td>
					</tr>
					<tr >
						<th id="buttonWrap">
							<input type="submit" value="NEXT STEP" class="button">
							<input type="button" value="BACK" class='button'>
						</th>
					</tr>
				</table>
			</form>
		</div>
	</section>
	</div>
	<jsp:include page="../main/footer.jsp" />
</body>
</html>