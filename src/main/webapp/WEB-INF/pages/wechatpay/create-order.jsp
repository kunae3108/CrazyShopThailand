<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.security.*" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Treepay</title>

<!-- <script type="text/javascript" src="https://paytest.treepay.co.th/js/plugin.tp" charset="utf-8"></script> -->
<!-- <script type="text/javascript" src="http://localhost:8081/js/plugin.tp" charset="utf-8"></script> -->
<script src="<c:url value='/static/js/jquery-3.2.0.js'/>"></script>
<script src="<c:url value='/static/js/plugin.js'/>"></script>



<script type="text/javascript">
// 	window.onload = function()
// 	{
// 	    var today = new Date();
// 	    var year  = today.getFullYear();
// 	    var month = today.getMonth() + 1;
// 	    var date  = today.getDate();
// 	    var time  = today.getTime();
	
// 	    if(parseInt(month) < 10) {
// 	        month = "0" + month;
// 	    }
	
// 	    var order_no = year + "" + month + "" + date + "" + time;
	    
// 	    document.tp_form.order_no.value = order_no;
	
// 	    document.tp_form.ret_url.value = "http://pgtest.treepay.co.th/dev/returnPage.jsp";
// 	}

	
	
    //Call TreePay payment window
    function submitdataforhash() {
    		document.tp_form.action = "hash-order";
    		document.tp_form.submit();
    }
    
//     $(document).ready(function(){
    	
//     		$("#pay_type").on('change',function(){
//     			if($(this).val() == 'PAOC'){
//     				$("#oct").show();
//     				$("#passwd").show();
//     				$("#token_no").show();
    				
//     				$("#ott").hide();
//     				$("#redirect").hide();
//     			}else{
//     				$("#oct").hide();
//     				$("#passwd").hide();
//     				$("#token_no").hide();

//     				$("#ott").show();
//     				$("#redirect").show();
//     			}
    			
//     		})
    		
//     })
</script>
</head>

<body>
	<a href="${pageContext.request.contextPath}/"><input type="button"value="Back" style="margin-bottom: 10px;"/></a>
	<h3>Order Infomation</h3>
    <form:form name="tp_form" method="post" modelAttribute="paymentModel">
 		<!-- Payment Process Parameters -->
 		
        <!-- Customer's Order information -->
        User Id : <form:input type="text" path="user_id" value="treepay_engineboy"/><br>
        Order No : <form:input type="text" path="order_no" value=""/><br>
        Good Name : <form:input type="text" path="good_name" value="crazy shop thailand good"/><br>
        Trade Money : <form:input type="text" path="trade_mony" value="50"/><br>
        Order's F Name : <form:input type="text" path="order_first_name" value="Nattav"/><br>
        Order's L Name : <form:input type="text" path="order_last_name" value="Kant"/><br>
        Currency : 
        <form:select path="currency">
            <option value="764">THB</option>
        </form:select><br>
        <br>
 		Pay Type :
        <form:input type="text" path="pay_type" value="PACO"/><br>
        Language :
        <form:select path="tp_langFlag" >
            <option value="en">EN</option>
            <option value="th">TH</option>
        </form:select>
        <br>
        
        <!-- Merchant ID -->
        Site CD :
        <form:input type="text" path="site_cd" value="A0000001J9"/><br>
        Secure Key : 
        <form:input type="text" path="secure_key" 
        value="0NrT7tRLz7tjtAuSxz4OoHFV7kLUwNyiCJb6XY85MebKQy3No3eT2p50Xe.gi83joiAQyTQTx98B0PfKGTSHjJxjYQ4o8V1yQBKwzGL8XzQPPXFsr26BrZn5A3Yhhg4c2vuON9LS6g9A0TUvdLAOfYiAvDLKao7H9LVQOrAh.CYarBOTCpRbOmpIxPVApScgM36FLQJMeXGqKZGzNrZJNbQjNb7kPQSeoTQSji82yq1rYMLeYa4ctt2lih3510ozWH7vm-ZZa3-0WmFMv93GaELxrLifajOb0VOnyB5xCxYM1.oDc.d2u5IXo3q4vs0w9bRiWkKrSWX.JDLDVuwyz.u__"/><br>
        <!-- Payment Connection URL  -->
        Return URL : 
        <form:input type="text" path="ret_url" value="http://pgtest.treepay.co.th/dev/returnPage.jsp"/><br>
        
		<p>Payment Method</p>
        <input type="button" id="redirect" name="redirect" value="Redirect" onClick="submitdataforhash();" style="background-color: #bee8c0;" /> 

    </form:form>


</body>
</html>