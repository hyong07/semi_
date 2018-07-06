<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	var IMP = window.IMP; // ��������
	IMP.init('iamport'); // 'iamport' ��� �ο����� "������ �ĺ��ڵ�"�� ���	
	
	IMP.request_pay({
	    pg : 'inicis', // version 1.1.0���� ����.
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    name : '�ֹ���:�����׽�Ʈ',
	    amount : ${point},
	    buyer_email : 'iamport@siot.do',
	    buyer_name : '�������̸�',
	    buyer_tel : '010-1234-5678',
	    buyer_addr : '����Ư���� ������ �Ｚ��',
	    buyer_postcode : '123-456',
	    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
	}, function(rsp) {
	    if ( rsp.success ) {
	        var msg = '������ �Ϸ�Ǿ����ϴ�.';
	        msg += '����ID : ' + rsp.imp_uid;
	        msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
	        msg += '���� �ݾ� : ' + rsp.paid_amount;
	        msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
	    } else {
	        var msg = '������ �����Ͽ����ϴ�.';
	        msg += '�������� : ' + rsp.error_msg;
	    }
	    alert(msg);
	});
</script>
</head>
<body>
	
</body>
</html>