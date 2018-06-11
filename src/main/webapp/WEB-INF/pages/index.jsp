
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %><html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<script src="<c:url value='/static/js/jquery-3.2.0.js'/>"></script>
		
		<style type="text/css">
			#pay-icon{
				width: 100px;
				text-decoration: none;
			}
		</style>
	</head>
	<body>	
		<a href="${pageContext.request.contextPath}/wechatpay/create-order">
		<img id="pay-icon" alt="#" src="<c:url value='/static/images/pay-icon-wechat.png'/>"><br/>
		Create WechatPay
		</a>
	</body>
</html>
