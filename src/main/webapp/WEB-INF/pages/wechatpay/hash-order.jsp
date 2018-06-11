<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.security.*"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Treepay</title>

<script type="text/javascript"
	src="https://paytest.treepay.co.th/js/plugin.tp" charset="utf-8"></script>
<script type="text/javascript">
	//Call TreePay payment window
	function fn_treepay_approve() {
		TP_Pay_Execute(document.tp_form); // Call TreePay payment window with document form name
	}
</script>
</head>

<body>
	<h3>Client Post using TreePay’s window</h3>
	<form:form modelAttribute="paymentModel" name="tp_form">
		<!-- Payment Process Parameters -->
        Pay Type : <form:input type="text" path="pay_type" />
		<br>
        Currency : <form:input type="text" path="currency" />
		<br>
        
        Lang : <form:input type="text" path="tp_langFlag" />
		<br>
        
        Site CD : <form:input type="text" path="site_cd" />
		<br>

		<!-- Payment Connection URL  -->
        Return URL : <form:input type="text" path="ret_url" />
		<br>

		<!-- Customer's Order information -->
        Order No : <form:input type="text" path="order_no" />
		<br>
        Good Name : <form:input type="text" path="good_name" />
		<br>
        Trade Money : <form:input type="text" path="trade_mony" />
		<br>
        Order First ame : <form:input type="text" path="order_first_name" />
		<br>
        Order Last name : <form:input type="text" path="order_last_name" />
		<br>
        Logo Type : <form:input type="text" path="logo_type" />
		<br>
		Hash Value : <form:input type="text" path="hash_data" />
		<br>
		
		<form:input type="hidden" path="res_cd" />
		<form:input type="hidden" path="res_msg" />
		<a href="${pageContext.request.contextPath}/wechatpay/create-order"><input type="button"value="Back" style="margin-top: 10px;"/></a>
		<input type="button" onclick="fn_treepay_approve();" value="Pay"
			alt="">
	</form:form>


</body>
</html>