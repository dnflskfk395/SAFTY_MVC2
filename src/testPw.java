import com.exam.security.SecurityUtil;

public class testPw {
		public static void main(String[] args) {
			SecurityUtil secu = new SecurityUtil();
			String pw = secu.encryptSHA256("123");
			System.out.println(pw);
		}
}
