package semi.smstest;

public class Test {
	public static void main(String[] args) {
		SendSMS sms = new SendSMS();
		
		String result = sms.sendSms();
		
		System.out.println(result);
	}
}
